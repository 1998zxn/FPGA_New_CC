`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/09 13:00:19
// Design Name: 
// Module Name: Rate_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim_fifo;
reg  clk;
reg  reset;
reg  start_send_data_3;

reg  [63:0] rx_axis_tdata_3;
reg  [7:0]  rx_axis_tkeep_3;
reg         rx_axis_tlast_3;
reg         rx_axis_tvalid_3;
reg         tx_axis_tready_3;
wire        rx_fifo_status;
wire [63:0] rx_axis_fifo_tdata;
wire [7:0]  rx_axis_fifo_tkeep;
wire        rx_axis_fifo_tvalid;
wire        rx_axis_fifo_tlast;
  axi_10g_ethernet_0_axi_fifo #(
      .FIFO_SIZE        (512),
      .IS_TX            (0)
   ) rx_fifo_inst (
      .wr_axis_aresetn (~reset),
      .wr_axis_aclk    (clk),
      .wr_axis_tdata   (rx_axis_tdata_3),
      .wr_axis_tkeep   (rx_axis_tkeep_3),
      .wr_axis_tvalid  (rx_axis_tvalid_3),
      .wr_axis_tlast   (rx_axis_tlast_3),
      .wr_axis_tready  (),
      .wr_axis_tuser   (rx_axis_tlast_3),
      .rd_axis_aresetn (~reset),
      .rd_axis_aclk    (clk),
      .rd_axis_tdata   (rx_axis_fifo_tdata),
      .rd_axis_tkeep   (rx_axis_fifo_tkeep),
      .rd_axis_tvalid  (rx_axis_fifo_tvalid),
      .rd_axis_tlast   (rx_axis_fifo_tlast),
      .rd_axis_tready  (1),
      .fifo_status     (rx_fifo_status),
      .fifo_full       ());

initial begin
    reset = 1'b1;
    clk = 1'b1;
    start_send_data_3 = 1'b0;
    tx_axis_tready_3 = 1'b0;
    rx_axis_tdata_3 = 64'd0;
    rx_axis_tkeep_3 = 8'd0;
    rx_axis_tlast_3 = 0;
    rx_axis_tvalid_3 = 0;

#640
    reset = 1'b0;
#640
    start_send_data_3 = 1'b1;
    tx_axis_tready_3 = 1'b1;
#64
    rx_axis_tdata_3 = 64'hFDFE01FAFBFCFDFE;
    rx_axis_tkeep_3 = 8'hFF;
    rx_axis_tvalid_3 = 1'b1;
#6.4
    rx_axis_tdata_3 = 64'hFDFE02FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE03FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE04FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE05FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE06FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE07FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE08FAFBFCFDFE;
    rx_axis_tkeep_3 = 8'h0F;
    rx_axis_tlast_3 = 1;
#6.4
    rx_axis_tdata_3 = 64'h0000_0000_0000_0000;
    rx_axis_tvalid_3 = 0;
    rx_axis_tkeep_3 = 8'd0;
    rx_axis_tlast_3 = 0;


#64
    rx_axis_tdata_3 = 64'hFDFE01FAFBFCFDFE;
    rx_axis_tkeep_3 = 8'h0F;
    rx_axis_tvalid_3 = 1'b1;
#6.4
    rx_axis_tkeep_3 = 8'hFF;
    rx_axis_tdata_3 = 64'hFDFE02FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE03FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE04FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE05FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE06FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE07FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE08FAFBFCFDFE;
    rx_axis_tkeep_3 = 8'h0F;
    rx_axis_tlast_3 = 1;
#6.4
    rx_axis_tdata_3 = 64'h0000_0000_0000_0000;
    rx_axis_tvalid_3 = 0;
    rx_axis_tkeep_3 = 8'd0;
    rx_axis_tlast_3 = 0;

#64
    rx_axis_tdata_3 = 64'hFDFE01FAFBFCFDFE;
    rx_axis_tkeep_3 = 8'hFF;
    rx_axis_tvalid_3 = 1'b1;
#6.4
    rx_axis_tdata_3 = 64'hFDFE02FAFBFCFDFE;
    rx_axis_tkeep_3 = 8'h0F;
#6.4
    rx_axis_tdata_3 = 64'hFDFE03FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE04FAFBFCFDFE;
    rx_axis_tkeep_3 = 8'hFF;
#6.4
    rx_axis_tdata_3 = 64'hFDFE05FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE06FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE07FAFBFCFDFE;
#6.4
    rx_axis_tdata_3 = 64'hFDFE08FAFBFCFDFE;
    rx_axis_tkeep_3 = 8'h0F;
    rx_axis_tlast_3 = 1;
#6.4
    rx_axis_tdata_3 = 64'h0000_0000_0000_0000;
    rx_axis_tvalid_3 = 0;
    rx_axis_tkeep_3 = 8'd0;
    rx_axis_tlast_3 = 0;


end
always #3.2 clk = ~clk;
endmodule
