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

entity send_ack is
port (
  clk         : in  std_logic;
  reset       : in  std_logic;
  tx_axis_tdata   : out std_logic_vector(63 downto 0);
  tx_axis_tkeep   : out std_logic_vector(7 downto 0);
  tx_axis_tlast   : out std_logic;
  tx_axis_tvalid    : out std_logic;
  tx_axis_tready    : in  std_logic;
  RTT_fifo_rd_en                     : out std_logic;
  MAC_fifo_rd_en                     : out std_logic;
  Ports_fifo_rd_en                     : out std_logic;
  start                      : in std_logic;
  RTT                     : in std_logic_vector(47 downto 0);
  MAC                     : in std_logic_vector(47 downto 0);
  Ports                     : in std_logic_vector(15 downto 0)
);
end send_ack;


architecture rtl of send_ack is
  type SM_T is (SM_IDLE_ST, SM_WAIT_ST, SM_BEAT1_ST, SM_BEAT2_ST, SM_BEAT3_ST, SM_BEAT4_ST, SM_BEAT5_ST, SM_BEAT6_ST, SM_BEAT7_ST, SM_BEAT8_ST);
  signal SM   : SM_T := SM_IDLE_ST;
  signal SM_nxt : SM_T := SM_IDLE_ST;
  signal beat_cnt       : integer range 0 to 4095 := 0;
  signal beat_cnt_nxt     : integer range 0 to 4095 := 0;
  signal MAC_fifo_rd_en_nxt                    : std_logic := '0';
  signal MAC_rd                    : std_logic_vector(47 downto 0) := X"000000000000";
  signal MAC_rd_nxt                    : std_logic_vector(47 downto 0) := X"000000000000";
  
  signal RTT_fifo_rd_en_nxt                    : std_logic := '0';
  signal RTT_rd                    : std_logic_vector(47 downto 0) := X"000000000000";
  signal RTT_rd_nxt                    : std_logic_vector(47 downto 0) := X"000000000000";
  
  signal Ports_fifo_rd_en_nxt                    : std_logic := '0';
  signal Ports_rd                    : std_logic_vector(15 downto 0) := X"0000";
    attribute mark_debug   : string; 
    attribute mark_debug of SM    : signal is "true";
    attribute mark_debug of SM_nxt    : signal is "true";
begin
  
  process(reset, clk)
  begin
    if( reset='1') then
      SM <= SM_IDLE_ST;
      beat_cnt <= 0;
      RTT_fifo_rd_en <= '0';
      MAC_fifo_rd_en <= '0';
    elsif( rising_edge(clk) ) then
      SM <= SM_nxt;
      beat_cnt <= beat_cnt_nxt;
      
      MAC_fifo_rd_en <= MAC_fifo_rd_en_nxt;
      MAC_rd <= MAC_rd_nxt;
      
      RTT_fifo_rd_en <= RTT_fifo_rd_en_nxt;
      --if (RTT_fifo_rd_en_nxt = '1') then
      RTT_rd <= RTT_rd_nxt;
      --end if;
      
      --Ports_fifo_rd_en <= Ports_fifo_rd_en_nxt;
      
    end if;
  end process;
  process( SM, beat_cnt, tx_axis_tready, start )
  begin
    SM_nxt <= SM;
    beat_cnt_nxt <= beat_cnt;
    MAC_rd_nxt <= X"000000000000";
    MAC_fifo_rd_en_nxt <= '0';
    RTT_rd_nxt <= X"000000000000";
    RTT_fifo_rd_en_nxt <= '0';
    tx_axis_tvalid <= '0';
    tx_axis_tlast <= '0';
    tx_axis_tdata <= (others=>'0');
    tx_axis_tkeep <= (others=>'1');

    case SM is
      when SM_IDLE_ST =>
          
          if( start = '1' and tx_axis_tready='1') then
              RTT_fifo_rd_en_nxt <= '1';
              --Ports_fifo_rd_en_nxt <= '1';
              MAC_fifo_rd_en_nxt <= '1';
              RTT_rd_nxt <= RTT;
              --Ports_rd <= Ports;
              MAC_rd_nxt <= MAC;
              SM_nxt <= SM_BEAT1_ST;
                else
                    RTT_fifo_rd_en_nxt <= '0';
                    MAC_fifo_rd_en_nxt <= '0';
                    SM_nxt <= SM_WAIT_ST;
        end if;
      when SM_WAIT_ST =>
          --RTT_fifo_rd_en_nxt <= '0';
          --Ports_fifo_rd_en_nxt <= '0';
          --MAC_fifo_rd_en_nxt <= '0';
        if( start = '1' and tx_axis_tready='1' ) then
              RTT_fifo_rd_en_nxt <= '1';
                    --Ports_fifo_rd_en_nxt <= '1';
                    MAC_fifo_rd_en_nxt <= '1';
                    RTT_rd_nxt <= RTT;
                    --Ports_rd <= Ports;
                    MAC_rd_nxt <= MAC;
          SM_nxt <= SM_BEAT1_ST;
        else
            RTT_fifo_rd_en_nxt <= '0';
            MAC_fifo_rd_en_nxt <= '0';
            SM_nxt <= SM_WAIT_ST;
        end if;
      when SM_BEAT1_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT2_ST;
        end if;
        RTT_rd_nxt <= RTT_rd;
        tx_axis_tdata (63 downto 48) <= X"FDFE";
        tx_axis_tdata (47 downto 0) <= MAC_rd(47 downto 0);
        --tx_axis_tdata (47 downto 0) <= X"FDFE02FAFBFCFDFE"; -- destination mac address: 0xFF_FF_FF_FF_FF_FF
        tx_axis_tvalid <= '1';
        RTT_fifo_rd_en_nxt <= '0';
        --Ports_fifo_rd_en_nxt <= '0';
      when SM_BEAT2_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT3_ST;
        end if;
        RTT_rd_nxt <= RTT_rd;
        tx_axis_tdata <=X"1045000801FAFBFC"; -- source mac address: 0x01_02_03_04_05_06, Type: IP
        tx_axis_tvalid <= '1';
      when SM_BEAT3_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT4_ST;
        end if;
        RTT_rd_nxt <= RTT_rd;
        tx_axis_tdata(15 downto 0) <= X"3200";
        tx_axis_tdata(31 downto 16) <= X"0000"; -- IP header: identification
        tx_axis_tdata(47 downto 32) <= X"0000"; -- IP header: flags
        tx_axis_tdata(55 downto 48) <= X"80"; -- IP header: time to live
        tx_axis_tdata(63 downto 56) <= X"06"; -- IP header: protocol: TCP
        tx_axis_tvalid <= '1';
      when SM_BEAT4_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT5_ST;
        end if;
        RTT_rd_nxt <= RTT_rd;
        tx_axis_tdata(15 downto 0) <= X"DFAB";
        tx_axis_tdata(47 downto 16) <= X"050100AC"; -- soruce IP address: 192.168.31.6
        tx_axis_tdata(63 downto 48) <= X"00AC"; -- destination IP address: 255.255.255.255
        tx_axis_tvalid <= '1';
      when SM_BEAT5_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT6_ST;
        end if;
        RTT_rd_nxt <= RTT_rd;
        tx_axis_tdata(63 downto 48) <= X"0000";
        tx_axis_tdata(15 downto 0) <= X"0502"; -- destination IP address: 255.255.255.255
        tx_axis_tdata(47 downto 32) <= X"0001";
        --tx_axis_tdata(31 downto 16) <= Ports_rd; -- UDP port
        tx_axis_tdata(31 downto 16) <= X"1234"; -- UDP port
        tx_axis_tvalid <= '1';
      when SM_BEAT6_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT7_ST;
        end if;
        RTT_rd_nxt <= RTT_rd;
        tx_axis_tdata(63 downto 56) <= X"18";-- ack & PSH
        tx_axis_tdata(55 downto 48) <= X"50";
        tx_axis_tdata(15 downto 0) <= X"0000"; 
        tx_axis_tdata(47 downto 16) <= X"00000000"; 
        tx_axis_tvalid <= '1';
      when SM_BEAT7_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_BEAT8_ST;
        end if;
        RTT_rd_nxt <= RTT_rd;
        tx_axis_tdata(63 downto 48) <= RTT_rd(47 downto 32);
        tx_axis_tdata(15 downto 0) <= X"9b00"; -- destination IP address: 255.255.255.255
        tx_axis_tdata(47 downto 16) <= X"00000000"; -- UDP port
        tx_axis_tvalid <= '1';
      when SM_BEAT8_ST =>
        if( tx_axis_tready='1' ) then
          SM_nxt <= SM_IDLE_ST;
        end if;
        RTT_rd_nxt <= RTT_rd;
        tx_axis_tdata(15 downto 0) <= RTT_rd(15 downto 0);
        tx_axis_tdata(63 downto 48) <= X"0000";
        tx_axis_tdata(47 downto 32) <= X"0000";
        tx_axis_tdata(31 downto 16) <= RTT_rd(31 downto 16);
        tx_axis_tvalid <= '1';
        tx_axis_tlast <= '1';
        beat_cnt_nxt <= 64;
--      when SM_BEAT9_ST =>
--        if( tx_axis_tready='1' ) then
--          SM_nxt <= SM_IDLE_ST;
--        end if;
--        RTT_rd_nxt <= RTT_rd;
--        tx_axis_tdata(15 downto 0) <= X"1111";
--        tx_axis_tdata(63 downto 48) <= X"0000";
--        tx_axis_tdata(47 downto 32) <= X"0000";
--        tx_axis_tdata(31 downto 16) <= X"3333";
--        tx_axis_tvalid <= '1';
--        tx_axis_tlast <= '1';
--        beat_cnt_nxt <= 64;       
    end case;
  end process;

end rtl;
