// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct 21 20:52:02 2024
// Host        : DESKTOP-MK895J2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_ff_sim_netlist.v
// Design      : blk_mem_gen_ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_ff,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.35165 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_ff.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_ff.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19360)
`pragma protect data_block
+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
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
