// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct  6 09:24:39 2024
// Host        : DESKTOP-MK895J2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/github/pruebas_ipd432/TAREA_2_UART/TAREA_2_UART.gen/sources_1/ip/blk_mem_gen_ff/blk_mem_gen_ff_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19344)
`pragma protect data_block
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
kzxy2GSvTzhY1CqG2RrxASVPOjDy
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
