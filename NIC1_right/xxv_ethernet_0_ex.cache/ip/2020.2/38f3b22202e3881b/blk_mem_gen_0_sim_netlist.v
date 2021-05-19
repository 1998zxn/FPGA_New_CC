// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 14:28:53 2021
// Host        : zxn running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.905706 mW" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10" *) 
  (* C_READ_DEPTH_B = "10" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "10" *) 
  (* C_WRITE_DEPTH_B = "10" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21552)
`pragma protect data_block
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
+G1Av16W
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
