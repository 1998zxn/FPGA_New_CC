// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 20 14:30:39 2021
// Host        : zxn running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/xxxx/my_subsystem_2/New_NIC1_use_3_ports/xxv_ethernet_0_ex.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20240)
`pragma protect data_block
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
UtRScJw=
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
