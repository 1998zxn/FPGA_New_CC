----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/11/04 14:40:11
-- Design Name: 
-- Module Name: Ports1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2020/06/17 16:12:34
-- Design Name: 
-- Module Name: test8 - Behavioral
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
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ports1 is
Port (
    tx_clk_out_0 : in  std_logic;
    rx_core_clk_0 : in  std_logic;
    user_tx_reset_0 : in  std_logic;
    user_rx_reset_0 : in  std_logic;
    packet_frame_index : in std_logic_vector(47 downto 0);
    receive_data_packet : out  std_logic;
    Ports1_tdata : out std_logic_vector(63 downto 0);
    Ports1_tkeep : out std_logic_vector(7 downto 0);
    Ports1_tlast : out  std_logic;
    Ports1_tvalid : out  std_logic;
    Ports1_tready : in  std_logic;
    Ports1_rdata : in std_logic_vector(63 downto 0);
    Ports1_rkeep : in std_logic_vector(7 downto 0);
    Ports1_rlast : in  std_logic;
    Ports1_rvalid : in  std_logic
    
);
end Ports1;

architecture Behavioral of Ports1 is

    component Receive_Timestamp
    port
    (
        rx_tdata_out    : in std_logic_vector(63 downto 0);
        rx_tkeep_out        : in std_logic_vector(7 downto 0);
        rx_tlast_out        : in std_logic;
        rx_tvalid_out        : in std_logic;
        valid        : out std_logic;
        RTT                     : out std_logic_vector(47 downto 0);
        MAC                     : out std_logic_vector(47 downto 0);
        Ports                     : out std_logic_vector(15 downto 0);
        clk                    : in  std_logic;
        reset                : in  std_logic;
        RTT_fifo_wr_en   : out std_logic;
        MAC_fifo_wr_en   : out std_logic;
        Ports_fifo_wr_en   : out std_logic;
        packet_frame_index: in std_logic_vector(47 downto 0)
    );
    end component;
    component fifo_generator_0
    port
    (
        full        : out std_logic;
        din         : in std_logic_vector(47 downto 0);
        wr_en     : in std_logic;
        empty      : out std_logic;
        dout        : out std_logic_vector(47 downto 0);
        rd_en       : in std_logic;
        wr_clk      : in std_logic;
        rd_clk      : in std_logic
    );
    end component;
--    component fifo_generator_1
--    port
--    (
--        full        : out std_logic;
--        din         : in std_logic_vector(15 downto 0);
--        wr_en     : in std_logic;
--        empty      : out std_logic;
--        dout        : out std_logic_vector(15 downto 0);
--        rd_en       : in std_logic;
--        wr_clk      : in std_logic;
--        rd_clk      : in std_logic
--    );
--    end component;
    component send_ack
    port (
        clk                    : in  std_logic;
        reset                : in  std_logic;
        tx_axis_tdata        : out std_logic_vector(63 downto 0);
        tx_axis_tkeep        : out std_logic_vector(7 downto 0);
        tx_axis_tlast        : out std_logic;
        tx_axis_tvalid        : out std_logic;
        tx_axis_tready        : in  std_logic;
        RTT_fifo_rd_en                     : out std_logic;
        MAC_fifo_rd_en                     : out std_logic;
        Ports_fifo_rd_en                     : out std_logic;
        start                      : in std_logic;
        Ports                     : in std_logic_vector(15 downto 0);
        MAC                     : in std_logic_vector(47 downto 0);
        RTT                     : in std_logic_vector(47 downto 0)
    );
    end component;

--    signal tx_tdata_data            : std_logic_vector(63 downto 0);
--    signal tx_tvalid_data            : std_logic;
--    signal tx_tlast_data            : std_logic;
--    signal tx_tdata_ack            : std_logic_vector(63 downto 0);
--    signal tx_tvalid_ack            : std_logic;
--    signal tx_tlast_ack            : std_logic;
--    signal tx_tready            : std_logic;

    
    
--    signal rx_tdata            : std_logic_vector(63 downto 0);
--    signal rx_tkeep            : std_logic_vector(7 downto 0);
--    signal rx_tvalid            : std_logic;
--    signal rx_tvalid2            : std_logic := '0';
--    signal rx_tlast            : std_logic;
    signal rate            : std_logic_vector(15 downto 0);
    signal valid                : std_logic;
    
    signal RTT            : std_logic_vector(47 downto 0);
    signal MAC            : std_logic_vector(47 downto 0);
    signal Ports            : std_logic_vector(15 downto 0);
    signal RTT_after_fifo : std_logic_vector(47 downto 0) := X"000000000000";    
    signal MAC_after_fifo : std_logic_vector(47 downto 0) := X"000000000000"; 
    signal Ports_after_fifo : std_logic_vector(15 downto 0) := X"0000";    
    signal RTT_fifo_wr_en                : std_logic := '0';
    signal MAC_fifo_wr_en                : std_logic := '0';
    signal Ports_fifo_wr_en                : std_logic := '0';    
    signal RTT_fifo_full            : std_logic;
    signal MAC_fifo_full            : std_logic;
    signal Ports_fifo_full            : std_logic;
    signal RTT_fifo_empty            : std_logic := '0';
    signal MAC_fifo_empty            : std_logic := '0';
    signal Ports_fifo_empty            : std_logic := '0';
    signal RTT_fifo_rd_en            : std_logic := '0';
    signal MAC_fifo_rd_en            : std_logic := '0';
    signal Ports_fifo_rd_en            : std_logic := '0';
    signal start_ack            : std_logic := '0';
    signal help_for_receive_data_packet : std_logic := '0';
    signal help_for_receive_data_packet_nxt : std_logic := '0';
    attribute mark_debug   : string; 
    attribute mark_debug of start_ack    : signal is "true";
    attribute mark_debug of RTT_fifo_wr_en    : signal is "true";
    attribute mark_debug of RTT    : signal is "true";
    attribute mark_debug of RTT_fifo_rd_en    : signal is "true";
    attribute mark_debug of RTT_after_fifo    : signal is "true";
    attribute mark_debug of RTT_fifo_empty    : signal is "true";
    attribute mark_debug of help_for_receive_data_packet    : signal is "true";
    attribute mark_debug of help_for_receive_data_packet_nxt    : signal is "true";
begin
    inst_RTT_Measurement : Receive_Timestamp
    port map (  
        RTT => RTT,
        MAC => MAC,
        Ports => Ports,
        reset => user_rx_reset_0,
        clk => rx_core_clk_0,
        rx_tdata_out => Ports1_rdata,
        rx_tkeep_out => Ports1_rkeep,
        rx_tvalid_out => Ports1_rvalid,
        --rx_tvalid_out => rx_tvalid2,
        rx_tlast_out => Ports1_rlast,
        --rx_tlast_out => rx_tvalid2,
        valid => valid,
        RTT_fifo_wr_en => RTT_fifo_wr_en,
        MAC_fifo_wr_en => MAC_fifo_wr_en,
        Ports_fifo_wr_en => Ports_fifo_wr_en,
        packet_frame_index => packet_frame_index
    );
    fifo_generator_for_RTT : fifo_generator_0
    port map (     
        full => RTT_fifo_full,
        din => RTT,
        wr_en => RTT_fifo_wr_en,
        empty => RTT_fifo_empty,
        dout => RTT_after_fifo,
        rd_en => RTT_fifo_rd_en,
        wr_clk => rx_core_clk_0,
        rd_clk => tx_clk_out_0
    );
    fifo_generator_for_MAC : fifo_generator_0
    port map (     
        full => MAC_fifo_full,
        din => MAC,
        wr_en => MAC_fifo_wr_en,
        empty => MAC_fifo_empty,
        dout => MAC_after_fifo,
        rd_en => MAC_fifo_rd_en,
        wr_clk => rx_core_clk_0,
        rd_clk => tx_clk_out_0
    );
--    fifo_generator_for_ports : fifo_generator_1
--    port map (     
--        full => Ports_fifo_full,
--        din => Ports,
--        wr_en => Ports_fifo_wr_en,
--        empty => Ports_fifo_empty, 
--        dout => Ports_after_fifo,
--        rd_en => Ports_fifo_rd_en,
--        wr_clk => rx_core_clk_0,
--        rd_clk => tx_clk_out_0
--    );
--    start_ack <= NOT RTT_fifo_empty;    
--    help_for_receive_data_packet <= (help_for_receive_data_packet XOR RTT_fifo_empty) OR help_for_receive_data_packet;
--    receive_data_packet <= help_for_receive_data_packet;    
    --start_ack <= '1';   
    inst_send_ack : send_ack
    port map (  
        clk => tx_clk_out_0,
        reset => user_tx_reset_0,
        tx_axis_tdata => Ports1_tdata,
        tx_axis_tkeep => Ports1_tkeep,
        tx_axis_tlast => Ports1_tlast,
        tx_axis_tvalid => Ports1_tvalid,
        tx_axis_tready => Ports1_tready,
        RTT_fifo_rd_en => RTT_fifo_rd_en,
        MAC_fifo_rd_en => MAC_fifo_rd_en,
        Ports_fifo_rd_en => Ports_fifo_rd_en,
        start => start_ack,
        Ports => Ports_after_fifo,
        MAC => MAC_after_fifo,
        RTT => RTT_after_fifo
    );
  
  process(user_tx_reset_0, tx_clk_out_0)
  begin
    if( user_tx_reset_0 = '1') then
      help_for_receive_data_packet <= '0';
    elsif( rising_edge(tx_clk_out_0) ) then
      help_for_receive_data_packet <= help_for_receive_data_packet_nxt;
      receive_data_packet <= help_for_receive_data_packet;    
      start_ack <= NOT RTT_fifo_empty;
    end if;
  end process;
  process(user_tx_reset_0, tx_clk_out_0)
  begin
    if( user_tx_reset_0 = '1') then
      help_for_receive_data_packet_nxt <= '0';
    elsif( rising_edge(tx_clk_out_0) ) then
      help_for_receive_data_packet_nxt <= (help_for_receive_data_packet XOR RTT_fifo_empty) OR help_for_receive_data_packet;
    end if;
  end process;
end Behavioral;
