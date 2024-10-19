// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct  6 09:24:38 2024
// Host        : DESKTOP-MK895J2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_ff -prefix
//               blk_mem_gen_ff_ blk_mem_gen_ff_sim_netlist.v
// Design      : blk_mem_gen_ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_ff,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_ff
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
  blk_mem_gen_ff_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19056)
`pragma protect data_block
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
ZQbDHZvBi5+mYqTlN+F5zRbi
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
