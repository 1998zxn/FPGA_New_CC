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

entity Receive_Timestamp is
Port ( 
    rx_tdata_out		: in std_logic_vector(63 downto 0);
    rx_tkeep_out		: in std_logic_vector(7 downto 0);
    rx_tlast_out        : in std_logic;
    rx_tvalid_out        : in std_logic;
    valid        : out std_logic;
    RTT                     : out std_logic_vector(47 downto 0);
    MAC                     : out std_logic_vector(47 downto 0);
    Ports                     : out std_logic_vector(15 downto 0);
    clk					: in  std_logic;
    reset                : in  std_logic;
    RTT_fifo_wr_en   : out std_logic;
    MAC_fifo_wr_en   : out std_logic;
    Ports_fifo_wr_en   : out std_logic;
    packet_frame_index: in std_logic_vector(47 downto 0)
);
end Receive_Timestamp;

architecture Behavioral of Receive_Timestamp is
signal RTT_nxt            : std_logic_vector(47 downto 0):=X"000000000001";
signal RTT_47downto32            : std_logic_vector(15 downto 0):=X"0001";
signal RTT_47downto32_nxt            : std_logic_vector(15 downto 0):=X"0001";
signal MAC_nxt            : std_logic_vector(47 downto 0):=X"000000000001";
signal MAC_15downto0            : std_logic_vector(15 downto 0):=X"0001";
signal MAC_15downto0_nxt            : std_logic_vector(15 downto 0):=X"0001";
signal Ports_nxt            : std_logic_vector(15 downto 0):=X"0001";
signal RTT_fifo_wr_en_nxt : std_logic := '0';
signal MAC_fifo_wr_en_nxt : std_logic := '0';
signal Ports_fifo_wr_en_nxt : std_logic := '0';
type SM_T is (SM_IDLE_ST, SM_BEAT1_ST, SM_BEAT2_ST, SM_BEAT3_ST, SM_BEAT4_ST, SM_BEAT5_ST, SM_BEAT6_ST, SM_BEAT7_ST, SM_BEAT8_ST);
signal SM        : SM_T := SM_IDLE_ST;
signal SM_nxt    : SM_T := SM_IDLE_ST;
    attribute mark_debug   : string; 
    attribute mark_debug of SM    : signal is "true";
    attribute mark_debug of SM_nxt    : signal is "true";
    attribute mark_debug of rx_tvalid_out    : signal is "true";
    attribute mark_debug of rx_tdata_out    : signal is "true";
begin

	process(reset, clk)
	begin
		if( reset='1') then
		    SM <= SM_IDLE_ST;
		    RTT_fifo_wr_en <= '0';
		    MAC_fifo_wr_en <= '0';
		    RTT <= X"000000000001";
		    MAC <= X"000000000001";
		    Ports_fifo_wr_en <= '0';
            Ports <= X"0001";
		elsif( rising_edge(clk) ) then
		    SM <= SM_nxt;
		    RTT_47downto32 <= RTT_47downto32_nxt;
		    RTT_fifo_wr_en <= RTT_fifo_wr_en_nxt;
		    MAC_15downto0 <= MAC_15downto0_nxt;
		    MAC_fifo_wr_en <= MAC_fifo_wr_en_nxt;
		    Ports_fifo_wr_en <= Ports_fifo_wr_en_nxt;
			RTT <= RTT_nxt;
			MAC <= MAC_nxt;
--			MAC(47 downto 16) <= MAC_47downto16;
--			--MAC(15 downto 0) <= MAC_15downto0;
--			MAC(15 downto 0) <= X"FDFE";
			Ports <= Ports_nxt;
		end if;
	end process;
	process( SM, rx_tdata_out, rx_tvalid_out, rx_tlast_out, MAC_15downto0, RTT_47downto32 )
    begin
        SM_nxt <= SM;
        MAC_nxt <= X"000000000001";
        MAC_15downto0_nxt <= X"0000";
        MAC_fifo_wr_en_nxt <= '0';   
        
        RTT_nxt <= X"000000000001";
        RTT_47downto32_nxt <= X"0000";
        RTT_fifo_wr_en_nxt <= '0';   
        
        Ports_nxt <= X"0000";
        Ports_fifo_wr_en_nxt <= '0';   
        case SM is
            when SM_IDLE_ST =>
                if( rx_tvalid_out = '1' ) then
                    --if( rx_tdata_out(63 downto 0)=X"1500C9B5D3C217D0" ) then
                    --if( rx_tdata_out(63 downto 0)=X"EDFEC204015D1501" ) then
                    if( rx_tdata_out(63 downto 0)=X"FDFE01FAFBFCFDFE" ) then
                    --if( rx_tdata_out(63 downto 0)=X"FEFDFCFBFA01FEFD" ) then
                    --if( rx_tdata_out(63 downto 0)=X"0200C0FE01350A00" ) then
                        SM_nxt <= SM_BEAT1_ST;
--                        MAC_1(47 downto 16) <= X"00000000";
--                        MAC_1(15 downto 0) <= rx_tdata_out(63 downto 48);
                        MAC_15downto0_nxt <= rx_tdata_out(63 downto 48);
                        MAC_fifo_wr_en_nxt <= '0';   
                    end if;
                end if;

                valid <= '0';
            when SM_BEAT1_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT2_ST;
                end if;
--                MAC_1(47 downto 16) <= rx_tdata_out(31 downto 0);
--                MAC_1(15 downto 0) <= MAC_1(15 downto 0);
                --MAC_1(15 downto 0) <= MAC_15downto0;
                MAC_nxt(15 downto 0) <= MAC_15downto0;
                MAC_nxt(47 downto 16) <= rx_tdata_out(31 downto 0);
                MAC_fifo_wr_en_nxt <= '1';   
                valid <= '0';
            when SM_BEAT2_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT3_ST;
                end if;
                MAC_fifo_wr_en_nxt <= '0';   
                valid <= '0';
            when SM_BEAT3_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT4_ST;
                end if;
                valid <= '0';
                Ports_fifo_wr_en_nxt <= '0';    
            when SM_BEAT4_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT5_ST;
                end if;
                Ports_nxt <= rx_tdata_out(47 downto 32);
                valid <= '0';
                Ports_fifo_wr_en_nxt <= '1';           
            when SM_BEAT5_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT6_ST;
                end if;
                valid <= '0';
                Ports_fifo_wr_en_nxt <= '0';    
            when SM_BEAT6_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT7_ST;
                end if;
                RTT_47downto32_nxt <= rx_tdata_out(63 downto 48);
                --RTT_nxt(47 downto 32) <= rx_tdata_out(63 downto 48);
                valid <= '0';
                RTT_fifo_wr_en_nxt <= '0';
            when SM_BEAT7_ST =>
                if( rx_tvalid_out='1' ) then
                    SM_nxt <= SM_BEAT8_ST;
                end if;
                RTT_nxt(47 downto 32) <= RTT_47downto32;
                RTT_nxt(31 downto 0) <= rx_tdata_out(31 downto 0);
                valid <= '1';
                RTT_fifo_wr_en_nxt <= '1';
            when SM_BEAT8_ST =>
                if( rx_tlast_out='1' ) then
                    SM_nxt <= SM_IDLE_ST;
                end if;
                RTT_fifo_wr_en_nxt <= '0';
                valid <= '0';
        end case;
    end process;
end Behavioral;
