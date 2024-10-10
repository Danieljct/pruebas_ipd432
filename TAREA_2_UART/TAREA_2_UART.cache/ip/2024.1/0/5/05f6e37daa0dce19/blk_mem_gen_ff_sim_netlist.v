// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct  6 09:24:38 2024
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
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
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
