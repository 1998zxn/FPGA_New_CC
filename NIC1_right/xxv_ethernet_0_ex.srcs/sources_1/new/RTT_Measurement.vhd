----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/06/08 15:12:36
-- Design Name: 
-- Module Name: RTT_Measurement - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RTT_Measurement is
Port ( 
    my_mac      		: in std_logic_vector(63 downto 0);
    rx_tdata_out		: in std_logic_vector(63 downto 0);
    rx_tkeep_out		: in std_logic_vector(7 downto 0);
    rx_tlast_out        : in std_logic;
    rx_tvalid_out        : in std_logic;
    valid        : out std_logic;
    RTT                     : out std_logic_vector(47 downto 0);
    clk					: in  std_logic;
    reset                : in  std_logic;
    packet_frame_index: in std_logic_vector(47 downto 0)
);
end RTT_Measurement;

architecture Behavioral of RTT_Measurement is
--signal beat_cnt       : integer range 0 to 5000 := 0;
--signal beat_cnt_nxt     : integer range 0 to 5000 := 0;
signal RTT_1            : std_logic_vector(47 downto 0):=X"000000000001";
signal Timestamp_47downto32_nxt            : std_logic_vector(15 downto 0):=X"0000";
signal Timestamp_47downto32                : std_logic_vector(15 downto 0):=X"0000";
--signal Timestamp_31downto0            : std_logic_vector(31 downto 0):=X"00000000";
signal cnt_receive_my_mac            : std_logic_vector(47 downto 0):=X"000000000000";
signal cnt_receive_my_mac_nxt            : std_logic_vector(47 downto 0):=X"000000000000";
signal Timestamp            : std_logic_vector(47 downto 0):=X"000000000000";
signal valid_1              : std_logic:='1';
type SM_T is (SM_IDLE_ST, SM_BEAT1_ST, SM_BEAT2_ST, SM_BEAT3_ST, SM_BEAT4_ST, SM_BEAT5_ST, SM_BEAT6_ST, SM_BEAT7_ST);
signal SM        : SM_T := SM_IDLE_ST;
signal SM_nxt    : SM_T := SM_IDLE_ST;
--signal flag				: integer range 0 to 1000 := 0;
    attribute mark_debug   : string; 
    attribute mark_debug of cnt_receive_my_mac    : signal is "true";
begin

	process(reset, clk)
	begin
		if( reset='1') then
		    SM <= SM_IDLE_ST;
		    valid <= '0';
--		    Timestamp <= X"000000000001";
--            beat_cnt <= 0;
		    Timestamp_47downto32 <= X"0000";
		    cnt_receive_my_mac <= X"000000000000";
		elsif( rising_edge(clk) ) then
		    SM <= SM_nxt;
--		    beat_cnt <= beat_cnt_nxt;
			RTT <= packet_frame_index - Timestamp;
			Timestamp_47downto32 <= Timestamp_47downto32_nxt;
			valid <= valid_1;
			cnt_receive_my_mac <= cnt_receive_my_mac_nxt;
		end if;
	end process;
	process( SM, rx_tdata_out, rx_tvalid_out, rx_tlast_out, Timestamp_47downto32 )
    begin
        SM_nxt <= SM;
        Timestamp <= X"000000000000";
        Timestamp_47downto32_nxt <= Timestamp_47downto32;
--        beat_cnt_nxt <= beat_cnt + 1;
        cnt_receive_my_mac_nxt <= cnt_receive_my_mac;
        case SM is
            when SM_IDLE_ST =>
                
                if( rx_tvalid_out = '1' ) then
                    if( rx_tdata_out = my_mac ) then
                        cnt_receive_my_mac_nxt <= cnt_receive_my_mac + 1;
                        SM_nxt <= SM_BEAT1_ST;
                    end if;
                end if;
                --Timestamp <= X"000000000000";
                
                valid_1 <= '0';
            when SM_BEAT1_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT2_ST;
                end if;
                valid_1 <= '0';
            when SM_BEAT2_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT3_ST;
                end if;
                valid_1 <= '0';
            when SM_BEAT3_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT4_ST;
                end if;
                valid_1 <= '0';
            when SM_BEAT4_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT5_ST;
                end if;
                valid_1 <= '0';
            when SM_BEAT5_ST =>
                if( rx_tvalid_out='1' ) then
                    --if( rx_tdata_out(63 downto 60)=X"1" ) then
                        SM_nxt <= SM_BEAT6_ST;
                    --end if;
                end if;
                valid_1 <= '0';
            when SM_BEAT6_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT7_ST;
                end if;
                Timestamp_47downto32_nxt <= rx_tdata_out(63 downto 48);
                valid_1 <= '0';
            when SM_BEAT7_ST =>
                if( rx_tvalid_out='1' ) then
--                    if( rx_tlast_out='1' ) then
                        SM_nxt <= SM_IDLE_ST;
--                    else
--                        SM_nxt <= SM_BEAT8_ST;
--                    end if;
                end if;
                Timestamp(47 downto 32) <= Timestamp_47downto32;
                Timestamp(31 downto 0) <= rx_tdata_out(31 downto 0);
                if( rx_tdata_out(31 downto 0) = X"00000000" and Timestamp_47downto32 = X"0000") then
                    valid_1 <= '0';
                else
                    valid_1 <= '1';
                end if;
--                valid_1 <= '1';
--            when SM_BEAT8_ST =>
--                if( rx_tlast_out='1' ) then
--                    SM_nxt <= SM_IDLE_ST;
--                end if;
----                beat_cnt_nxt <= 0;
--                valid_1 <= '0';
        end case;
    end process;
end Behavioral;
