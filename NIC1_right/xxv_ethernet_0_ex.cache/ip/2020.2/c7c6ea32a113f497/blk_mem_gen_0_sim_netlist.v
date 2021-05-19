// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 14:00:31 2021
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
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
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
nHJRZYIz
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
