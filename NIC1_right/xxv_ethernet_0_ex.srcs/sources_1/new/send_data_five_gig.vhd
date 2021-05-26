------------------------------------------------------------------------------
--      _______      _______                                                --
--     / ____\ \    / /_   _|                                               --
--    | |  __ \ \  / /  | |                                                 --
--    | | |_ | \ \/ /   | |                                                 --
--    | |__| |  \  /   _| |_                                                --
--     \_____|   \/   |_____|                                               --
--                                                                          --
-- Copyright (c) 2012-2018 Hangzhou Yanman Co. Ltd.  All rights reserved.   --
--                                                                          --
-- THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY   --
-- KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE      --
-- IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A               --
-- PARTICULAR PURPOSE.                                                      --
--                                                                          --
-- Website: www.gvi-tech.com                                                --
-- Email: support@gvi-tech.com                                              --
--                                                                          --
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

------------------------------------------------------------------------
-- The entity declaration for the client side loopback design example.
------------------------------------------------------------------------

entity send_data_five_gig is
port (
  clk         : in  std_logic;
  reset       : in  std_logic;
  src_mac     : in  std_logic_vector(47 downto 0);
  dest_mac    : in  std_logic_vector(47 downto 0);
  tx_axis_tdata   : out std_logic_vector(63 downto 0);
  tx_axis_tkeep   : out std_logic_vector(7 downto 0);
  tx_axis_tlast   : out std_logic;
  tx_axis_tvalid    : out std_logic;
  tx_axis_tready    : in  std_logic;
  start                      : in std_logic;
  packet_frame_index: in std_logic_vector(47 downto 0)
);
end send_data_five_gig;


architecture rtl of send_data_five_gig is
    
  type SM_T is (SM_IDLE_ST, SM_WAIT_ST,SM_WAIT_1_ST, SM_BEAT1_ST, SM_BEAT2_ST, SM_BEAT3_ST, SM_BEAT4_ST, SM_BEAT5_ST, SM_BEAT6_ST, SM_BEAT7_ST, SM_BEAT8_ST, SM_DATA_ST);
  signal SM   : SM_T := SM_IDLE_ST;
  signal SM_nxt : SM_T := SM_IDLE_ST;
  signal beat_cnt       : integer range 0 to 5000 := 0;
  signal beat_cnt_nxt     : integer range 0 to 5000 := 0;
  signal cnt_T_pai       : integer range 0 to 15000 := 0;
  signal cnt_T_pai_nxt     : integer range 0 to 15000 := 0;
  signal tx_axis_tready_this_code : std_logic := '0';
  signal packet_frame_index_this_code : std_logic_vector(47 downto 0) := X"FFFFFFFFFFF0";
  signal start_this_code : std_logic := '0';
  signal tx_axis_tdata_1 : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFF0";
  signal tx_axis_tdata_2 : std_logic_vector(63 downto 0) := X"FFFFFFFFFFFFFFF0";
    attribute mark_debug   : string; 
    attribute mark_debug of SM    : signal is "true";
    attribute mark_debug of SM_nxt    : signal is "true";
    attribute mark_debug of tx_axis_tdata_1    : signal is "true";
    attribute mark_debug of tx_axis_tdata_2    : signal is "true";
    attribute mark_debug of tx_axis_tready_this_code    : signal is "true";
begin
  
  process(reset, clk)
  begin
    if( reset='1') then
      SM <= SM_IDLE_ST;
      beat_cnt <= 0;
      cnt_T_pai <= 0;
      tx_axis_tdata_1 <= X"FFFFFFFFFFFFFFF0";
    elsif( rising_edge(clk) ) then
      SM <= SM_nxt;
      beat_cnt <= beat_cnt_nxt;
      cnt_T_pai <= cnt_T_pai_nxt;
      tx_axis_tdata_1 <= tx_axis_tdata_2;
      tx_axis_tready_this_code <= tx_axis_tready;
      start_this_code <= start;
      packet_frame_index_this_code <= packet_frame_index;
    end if;
  end process;

  process( SM, beat_cnt, cnt_T_pai, tx_axis_tready, start, tx_axis_tdata_1, packet_frame_index )
  begin
  
    SM_nxt <= SM;
    beat_cnt_nxt <= beat_cnt;
    cnt_T_pai_nxt <= cnt_T_pai;
    tx_axis_tdata_2 <= tx_axis_tdata_1;
    tx_axis_tkeep <= X"FF";
    tx_axis_tvalid <= '0';
    tx_axis_tlast <= '0';
    tx_axis_tdata <= (others=>'0');
    case SM is
      when SM_IDLE_ST =>
        if( start = '1' ) then
          if( tx_axis_tready='1' ) then
            SM_nxt <= SM_BEAT1_ST;
          else
            SM_nxt <= SM_WAIT_ST;
          end if;
        end if;
      when SM_WAIT_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT1_ST;
        end if;
      when SM_BEAT1_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT2_ST;
        end if;
        tx_axis_tdata(47 downto 0) <= dest_mac;
        tx_axis_tdata(63 downto 48) <= src_mac(15 downto 0);
        --tx_axis_tdata <=X"FDFE01FAFBFCFDFE"; -- destination mac address: 0xFF_FF_FF_FF_FF_FF
        tx_axis_tvalid <= '1';
      when SM_BEAT2_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT3_ST;
        end if;
        tx_axis_tdata(31 downto 0) <= src_mac(47 downto 16);
        tx_axis_tdata(63 downto 32) <= X"10450008";
        --tx_axis_tdata <=X"1045000802FAFBFC"; -- source mac address: 0x01_02_03_04_05_06, Type: IP
        tx_axis_tvalid <= '1';
      when SM_BEAT3_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT4_ST;
        end if;
        tx_axis_tdata(15 downto 0) <= X"F203";
        tx_axis_tdata(31 downto 16) <= X"D431"; -- IP header: identification
        tx_axis_tdata(47 downto 32) <= X"0000"; -- IP header: flags
        tx_axis_tdata(55 downto 48) <= X"80"; -- IP header: time to live
        tx_axis_tdata(63 downto 56) <= X"06"; -- IP header: protocol: TCP
        tx_axis_tvalid <= '1';
      when SM_BEAT4_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT5_ST;
        end if;
        tx_axis_tdata(15 downto 0) <= X"AA17";
        tx_axis_tdata(47 downto 16) <= X"050200AC"; -- soruce IP address: 192.168.31.6
        tx_axis_tdata(63 downto 48) <= X"00AC"; -- destination IP address: 255.255.255.255
        --tx_axis_tdata(63 downto 48) <= X"A8C0";
        tx_axis_tvalid <= '1';
      when SM_BEAT5_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT6_ST;
        end if;
        tx_axis_tdata(63 downto 48) <= X"0000";
        tx_axis_tdata(15 downto 0) <= X"0501"; -- destination IP address: 255.255.255.255
        --tx_axis_tdata(15 downto 0) <= X"051F";
        tx_axis_tdata(47 downto 16) <= X"12340001"; -- UDP port
        tx_axis_tvalid <= '1';
      when SM_BEAT6_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT7_ST;
        end if;
        tx_axis_tdata(63 downto 56) <= X"18";-- ack & PSH
        tx_axis_tdata(55 downto 48) <= X"50";
        tx_axis_tdata(15 downto 0) <= X"0000"; -- destination IP address: 255.255.255.255
        tx_axis_tdata(47 downto 16) <= X"00000000"; 
        tx_axis_tvalid <= '1';
      when SM_BEAT7_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT8_ST;
        end if;
        tx_axis_tdata(63 downto 48) <= packet_frame_index(47 downto 32);
        tx_axis_tdata(15 downto 0) <= X"9B00"; 
        tx_axis_tdata(47 downto 16) <= X"00000000"; 
        tx_axis_tvalid <= '1';
      when SM_BEAT8_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_DATA_ST;
        end if;
        --tx_axis_tdata(15 downto 0) <= X"1111";
        tx_axis_tdata(15 downto 0) <= packet_frame_index(15 downto 0);
        tx_axis_tdata(63 downto 48) <= X"3333";
        tx_axis_tdata(47 downto 32) <= X"4444";
        --tx_axis_tdata(31 downto 16) <= X"2222";
        tx_axis_tdata(31 downto 16) <= packet_frame_index(31 downto 16);
        tx_axis_tvalid <= '1';
        beat_cnt_nxt <= 64;
      when SM_DATA_ST =>
        if( tx_axis_tready='1' ) then
          if( beat_cnt = 1024 - 8 ) then
            SM_nxt <= SM_WAIT_1_ST;
            cnt_T_pai_nxt <= 0;
            tx_axis_tlast <= '1';
          end if;
          beat_cnt_nxt <= beat_cnt + 8;
          if( tx_axis_tdata_1 = X"0FFFFFFFFFFFFFFF" ) then
            tx_axis_tdata_2 <= tx_axis_tdata_1(59 downto 0) & X"0";
          else
            tx_axis_tdata_2 <= tx_axis_tdata_1(59 downto 0) & X"F";
          end if;
        end if;
        tx_axis_tdata <= tx_axis_tdata_1;
        tx_axis_tvalid <= '1';
      when SM_WAIT_1_ST =>
        --if( cnt_T_pai = 6000 ) then
        --if( cnt_T_pai = 128 ) then
          SM_nxt <= SM_IDLE_ST;
        --end if;
        tx_axis_tlast <= '0';
        cnt_T_pai_nxt <= cnt_T_pai + 1;
        tx_axis_tvalid <= '0';
    end case;
  end process;

end rtl;
