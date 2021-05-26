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


module sim_all;
reg  clk;
reg  reset;
reg gt_refclk_p;
reg gt_refclk_n;
reg SYS_CLK_P;
reg SYS_CLK_N;


wire gt_rxp_in_0;
wire gt_rxn_in_0;
wire gt_txp_out_0;
wire gt_txn_out_0;
  my_project my_project(
    .gt_rxp_in_0(gt_rxp_in_0),
    .gt_rxn_in_0(gt_rxn_in_0),
    .gt_txp_out_0(gt_txp_out_0),
    .gt_txn_out_0(gt_txn_out_0),
    .gt_rxp_in_1(),
    .gt_rxn_in_1(),
    .gt_txp_out_1(),
    .gt_txn_out_1(),
    .gt_rxp_in_2(gt_txp_out_0),
    .gt_rxn_in_2(gt_txn_out_0),
    .gt_txp_out_2(gt_rxp_in_0),
    .gt_txn_out_2(gt_rxn_in_0),
    .gt_rxp_in_3(),
    .gt_rxn_in_3(),
    .gt_txp_out_3(),
    .gt_txn_out_3(),

    .sys_reset(reset),
    .gt_refclk_p(gt_refclk_p),
    .gt_refclk_n(gt_refclk_n),
    .SYS_CLK_P(SYS_CLK_P),
    .SYS_CLK_N(SYS_CLK_N)
    );

initial begin
    reset = 1'b1;
    clk = 1'b1;
    gt_refclk_p = 1'b1;
    gt_refclk_n = 1'b0;
    SYS_CLK_P = 1'b1;
    SYS_CLK_N = 1'b0;

#640
    reset = 1'b0;



end
always #3.2 clk = ~clk;
always #3.2 gt_refclk_p = ~gt_refclk_p;
always #3.2 gt_refclk_n = ~gt_refclk_n;
always #3.2 SYS_CLK_P = ~SYS_CLK_P;
always #3.2 SYS_CLK_N = ~SYS_CLK_N;
endmodule
