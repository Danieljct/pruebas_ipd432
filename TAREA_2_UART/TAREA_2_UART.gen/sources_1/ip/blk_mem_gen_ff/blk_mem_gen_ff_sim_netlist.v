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
+x5q9a/sJ29+X3032ikK8Ugs
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
