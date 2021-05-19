// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 14:30:38 2021
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.460318 mW" *) 
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
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20256)
`pragma protect data_block
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
tHj1p6xHYUYRykL1oe1EA4EujOxU
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
