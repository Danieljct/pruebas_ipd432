// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Oct  5 15:03:04 2024
// Host        : DESKTOP-MK895J2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19344)
`pragma protect data_block
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
xzJWTEi3FaNF1gJlX8yw9EAPHnNH
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
