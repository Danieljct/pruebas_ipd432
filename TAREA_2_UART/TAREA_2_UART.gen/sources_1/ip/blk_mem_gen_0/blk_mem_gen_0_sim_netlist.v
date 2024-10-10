// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Oct  5 15:03:06 2024
// Host        : DESKTOP-MK895J2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/github/pruebas_ipd432/TAREA_2_UART/TAREA_2_UART.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19328)
`pragma protect data_block
2fay0u053sDBOHZxME36eIA+0cCgQ5MydSRFTj3MKxgfs/Y7L2i64NF8nwSX7fScHK5/Evwn7kw0
t4xtr8fADgtzbuxr3ddubVVWH5FfxuppwcAe02lh6yLHAilh98FH8v1H4uFFIBfzwwd1+KwFhVIa
qTG9j9tv1oa7CpJSDgGlaW7f1kGV+8SeHbTN99YpKYV+PQMCZ22iVtsTLWJSFqoaBPxtCkLiM1KF
nQ15N5hPZhmQ/ojLaVWyezSdd6Gukj+lO95ISfbOuqof5fDd8goKGZlOjdJwL20I1gpvgNpvweJo
qtXRvOLUpuSACmWqK2Sa2k/JNXf5znB7D21rVQqr/rX0pNALKQvWqx/Whmktv5MGXoW/Ed3EMqe4
cvAYTrm7CnKRxCrKNI/wVc4nai7mwJECTOfWIV9v3AMp5n3FfR3+gO6NA278M5U8/DnqrFV2tgP7
0fFrzgPm/754o5akQ9xp4TS1ORQQald0eWTGcVHwpxS0eBsX9qnNwPO5nF/OZA5G6qUMTCJo+/hn
/YdOTfVdHkP0ZwEtBGugMoVuOpg6LhtJzh4N+eT12MYnxpn0jRajYWE5+T9PDN12tDOl76QBUn97
pN5eCmXZu7ugZWnpoqarDkmAWTYQHWny7+yqrShn1eRV6fhhVJRyikaZ72JabggaOY0Pv1OY/PiK
+4LvNoolDwE5pVFqBPla5/2sO9ttulr37iUGNWknFSmUDMvjuozGMqEZvF2Qd4mitxYPs7eE3N4m
aqzWFxzmhE34FE3axvi0e9EGbgZTMc3h9BnIuHfAprgA2eosZ5pcbe4zokm8zkjzq+j61aB5MvAZ
PpbDQgQ9K0mBM+y6RjSPxdSHh46R3W6LsMsIgHO89OcwYRvuZMai4eQ1fDJqIVmCcSXhv4lFh7jD
Xa17oOFygoTn+3x4/l+l5LZl+UkgqQvzF6yLYweGoExc9XzfGZ525GQOoGbnvn83e1OTX5zulTFJ
7//IHqvSet2bW77kZYCTCAka/FF0jAXN5Fpc3RaKB98VcRxOuAjFT8plNnDs01FBbZMeLvNXFPV4
0T+BNmp4leTdqr9yXEGiWN8ThvAA49IephCugt0ShTN5AcIudUoKYZH9s5YGohMZ9WlG9WKMhoTV
2zfOHNICu0dlSu9btSIhSYljoomzuA5rsTNCutCj9Mf8XSabAdg7tojFalYN3fk41L2o8y/4uOOu
T0vZFK9cUD4EmcaxrdA/C36Mt7eEnUKJ/3Cfp2O1MD25KpbIhu9fJy9gs1d9Hv/hwuytO1lvTI6S
zFiaUNK7UhzJSzNfOBu7YKhUvb+sNPcKrLYwkz6+o22rRK+rDBswZyMbC6vcCjpRKl63/havuO3D
L1LpX+ueim31FrHOHVxjhz5n3rvrYczn0HlVagSvw1o0XcswJqK48gRb/iwcjxF8n/uhaoSl38/I
JjhgSvz2ZwybS8q7NfdvCfIUtleVztFWIKGIKb2OhZSVNm+vi04h2asvOj7pGVc9A/RW2KGNetYH
Ohm2T2Q+NBsBEtBBks1ntiGtmHtum52IL6avjIJUCX7IRsfLtTka03LanQmEHNPLKPTJFAZinRp+
F3uX0khKZjAJqkov7IW108zVviTV6ecQ2YqIoRYlvhjOczrqw2r5wdMJl2n4v3W+fWHbaYrn3XMz
WgxjRArEIeZw6MP14DggXJ/5Ahf1mYqu8Rke9KD2PC5+dVPbPV8GP/wcdMQ4bT0nHfpMnr7+KjCD
aCXVA0boYaqXcEL2IUmpvD7Pef+ow1exwsv+e/kOVrVOjWTOb3X6BLy9HpK8LvwPxpLPdfVgb4Pq
ueYozR6nGO+i1bkQP0JqkApNI33K0o92N9W0BEAnEF14O6mVQpjWFx1kTu8OeLXKdpGJKtdJAH05
brb2vRo08rYfSRTISncHINpacF6srnP66k4xCGYnjse51B1RkEKDYG80QQIYFWJhPYqEdZhfGUdC
Gk4B+w3om1ymxk87eNrg9IP+aYGSj88SB90LP9iV5/5gl7ZgY7Ie22gtYaB7yWygS+hDFxLdLq4i
yFIl9q8yGH/IdO1juGxbx6m1hG1iPn3046yitHupqSR40B0TpvXPXA4HPYqwEoRLP/vldZUqRquz
h04v2C+ieZ8L2/faTgInR90MXQcmUTnT21JKG87cPF956G5pcBwT99XVweE5+EXCQ8ADi7+6ohR7
LoG/sZm3g+e+5jqu3fIkwKx86x9Yx730/V99/FpCu7PGBQy01ORed1HRiLnpFZWFZJwjCvojS4On
W2si8RC9cWRTpW4uN72sDVhHdxb1rTq4B2ynqVRstwHzNgmKnuRv+kWvsRAMW7c9FXDk3/J5F70J
8hSHtOOY2n7Nr+epBTwUhBWHPD/Zo3TMFm1SQz45qQHq94TQpid7iw/glakcKihL3sx+hQk3oXnl
IWvHoJsK8oaRPXUD/Yz2XwyxjLB7kCxQP6lL/Yx2x68dYBwE1/DMvYhX7VoCdu5eFPRyrqjSdbal
pB2jyprpaLxpPAkvD2cEVZbnhiUMm8mwTWjxSzyo4Lxzcn6bQv9ME4kXvNZK1sJRo2a6XF22O4eH
f6CjeRxtjiLDdXUTnfRyafpHkvYpWhrvbzAiaVlqybKNYw6RSI7DUJ12NctYcZTqXz3t6rK1SeCd
ocs5LnXcXtPjXChmErrDK3SG9JeWV4uyYugORJYB9e//uRn8iInM6pVMMPjvJFj7TekzSvtX2vBq
0wdmKq6fltVFNkbf63WFIpsiRNyP08w1IIW4HIW8H5MVX5dhN+wcGZrfrQAn7fAGBujQYsmgwqZD
ESLpgeVyUf+0/J2+HPH0tj+r6AjGfjYOwV8aFkWrI7Zk81OJGaJLrvf85CXsR2+cdc0MJNRxSphF
KTVzAPEnSrqaDgnxPQZxoopXS+A8tqZZw3V3RDcNqYGrVsxhqCTuA+M8z6/AVD9O0VbLV00XRNK8
Tfer33HRYirX/1BcJsaZblOUTFODSbXx7dTYhCSMfnv8LvateoFLBs8+hR//J9q8umZb5MqTtg88
jRdnbhEQR/Vmdca20MM6nIwOY9aQEDc/Q8K+aCYaSNEA7LKugpN6HidfiwiKAbu6Hm9hHsEp9slt
lNFn+x1/g2kE40L914g7RK9WUkqqP+sOnwcR30uz6npAXxJeSbHyH1+XVtuPulGg6Yz9E+M4OhBC
DVjmATYZ2BVbvDUrxug6IN2SFAJhkEC6Jr7Eh7mQhSVpbTqxrwI2nIYwgFnrahoV+CHR/hQSomCp
SK8sGCSnOuXQW4P7ZPS8f1S7ex1cmAAkwPpC4WNmou3bB2Nq3kmQQ+9Ku88AUKzAJGvcuvfpUoBq
eIgZNdfZsi/h+SCINmPW3FvbHWKO1lsf68smPKGC9y86qTxFGsaxVr2pxLPSl/rVumocLe0o/Llq
/8v1GlUNVxv3gO5ktju4ct51aCsJo3aMSKJ2/vabCR5f/2Vu60RY2Bz8fLdPdTO6XMnOQScIy7+z
AeRMmiAZ7LaCF4RByE1fFz0dwCDZnKhPfqcJZ5OESXzGKP1ZS4b0MghYbwxO2DTriVtCYTPVRQmb
7PQ7WCQJDn1b/OqRABcrMQy48A/jq46l6K3xIfvMZ/Fc0nujQqn94TprRVZAYN+IHrTuM5e24IQW
41jnZuy2y6bkZPht63cwlItO7rsNRbiDCsrXdhLf6ymqCwGkapgrKFeeBkFACrIqorcUC7ha0+C2
PoPOCUz7NYBoOecjCnLnrynU+dW6wISYN7KQWfxdhV73WRvuk93o0rtHy7PUyApXfqPbS3m0HQ7X
F7TIqU16ICKT17eElzowMRyNnZo1d1/7qdvQrAi9RZuOAZB5CfKU40h0XX+yEqpB1f2Dt7/vtkex
ja7KZeDaRNSHqQf6Qu9QxYHVtZqHlpFs5qFIhE3NwY6w7gCFaoS2gGtkI6YISSSedXa4Dh5MPGfZ
GtUnp6CTHoEHF6P3YP8jWN1yliE4iF2aTJtQJeWcR1J/ixPlpUbObWVL1IDw1iOAniufDkPJopED
rtyQo6HyZbuTZakMS+djX1x4D/CyZZD00YjSqF5h808EBbdQJEWzxIP2kgS2xa1ZXcRZdKt0kCo6
XFx1cLIkV7SKGswZ7IwFI320S5a4FcbXMZ3IQT8/BEhurd5g15OithNxm3xUKTqTnhtxRUrkmes9
b/1fRvA4sJt5epuqbDpNH+iftehDiyHJR8JBG4T6srQE2FxiGyq08TywjPB6r+yc9kSjaTuUPzwa
3vCN6weOUh7QWsIqAEc7GCNdwbe0gXl2ZmdhSOSWGaQe3CJJDMBkLxfPunivrGzQqa99VlJIAMif
SSVS5TQuvFavFlcnRMGEYybr5/XGZitpev38O1X5y2PkHNNYJTLAC8ozJIa88NtrCaVYhnQfAb2j
RDwhVgKASAQ4k1nZji+jvsyWP2UpP2d1NxWbBZCvYiOPuEn2ksSEit08aWHD1cN+6XK4kE5qiCOW
A3WaqucDrkFx9o3ckf/FkjU0OQAEOUrs7q3/nOi8i4Re63ez48TjsRyBygNqnYLFYRHUeyFkGk7N
XVy/QBkKDb9FnDmX0s9pUga9cX5asRiPmAuUUGcj9xWojzxPTap7BU+Oh0QtrEUSVtTj9HIQL+tP
UIoLsRWK/9hlUJRYxO1qTaRFBzkP7f/ToMk/IOWnRvKPRPjuOBfL++7lAWRlNjCuT4JOMgUjA3Ny
jlDOUTbBuBLNsUCKWPHO9KWHHWYmB1ExTN21sxB/KVv53ZtUjAZrDkMIKCvOlnKLjZNXFCe9IfT1
r3RQXw0rkHGxZlKBXUFqtFAnNr8s7ubbSSklsXKqYZ90XmU0F7A2PVvqFAUaO19RjqhClFwktIOP
HPRgC7u8U78M42AphyWz0jVKk9zegXX+Cz3SlMmUhdSjeI3FKh1gwq50zBa73nyn6nVyBxVsz+Tr
dn+LlTiP8O4/m12vhr6ySRUG3f0ADdK3CzPCfs6PUGNJMiSUPaJCcBclRZVT2bOFHIMira0Y5u84
7BuLAOo4593L5d96sLWI1KpIH9GiX0HEBwUcGXATqLQOCpmaInZzEXpRqSc0jNjtJyYfqaTPl8UO
i/2q6rZwYAB4+d/A9e9zOdufl61TpIe6AsBXrfMSJWUAH8AGw06aq4r9pNAXt+DqGtdsLc1yBdmR
tiBXrO//kwP0Ck8OjW0tLrtelck537qRYJ2tabj2ylD5Wdf4l8fz60e/q8ihO+JCi/YLtQqOrwkJ
z6vQvMkTQ41RoHjBtW6YXtw44BawwCyDE0hloUt7760LBQDTxnUEvBqw4vDz4KuWGIa7/+PMCfKe
y/4NonysDXrt877+HwJSDKOrfyIEw+TlrSus9U19KNoRrca5xDxHN3+g8/OGN+9O/JIan1b/LngH
9o357iFnYU3mUODDL6bGjOQszTRIBNHmD5GASBRmSEiC3nRryppUZRkDPE9wKkws5PGc3qe3D3Hb
IgNjLJ6UoE7U6yoKL+PAfGUv4GTkCmumJlFLuhNWdBvNHwHsM7ZPaVPjELF/a/6+fWn8bONXQ0tA
C0Y3KU15oGAgPnmaUWR2OtEusZseLfan+n3g4l6WLrL3Abma2wEXrqx81cF81Ckvt/9QzGFF644E
vmL7UeOpjnT0kj5iScyzEyMOz7PxHNzCcoUm5BIgbMYyQAcrPeQQN6IR4ZuHUupQgqL7se6Lxz+k
piSgqbcflq801qcDXy/a0ac/b2GSlJfEgaw8CW0blH+YV7iVqZfSyhHT2l7HEexPbPMhHAQF9Asg
Z/42xjwR1HCvAywPC2njGaQJav0fVgJOsEPlUxfxX/EioINOVsi3sL6CaN99Mj353I//5dhejmEA
sVTNPKBHbJHHgHcgb1RmWbJnoaZioJAweg7pwLohFbMDxzxnNXWKmSd5xQ7P0PozZ9AqMr7u8o/g
6FZGVQSB5Th7mn9lK1akkciPa0igyXNDOQl1bK1Ma4Q+XibilxurOE43hJamFAf+sgJF4mVgYLqP
XnhDE7E0+mtNbd/P5+BrqdwMcrMaAzbxcS9Kv8PXvZ7iMTx6isiJbLkzIWwITwY3QUYdTIQ36ntq
Ok2aPyiivE0OXxJ5SYdsT+h9Ty3GwwwQ3ZHvRP05tzYf6zsNVaBcTYVm7+a4ACA0pBM3rTfpOfkt
Nb0Ab9PCxoyZvILEj8d76kzIL4/qtzt5c+C3KuMLkdcFZ+fmOS3tvIJaec4a8c8YpPRgbsTqm5FV
s1HEe401QuqFQ1qulKm9CQCJUfPQRnD1fUJF2RXbaojz9upDZNHeH9769rsUwzGkcMCKnjCrRvHb
uXTfclMbplpBCuJsVpiMyifSQJq+BY8RU7+6bPwN2Q77cO/shs14JYd4jXMVSuKHC43O5Brq9tWz
z0dKJo2usL5b9tcCyLl2RfVi5c6VEjL8YF5gSmyXrLjhy8rYnpdhZ4uoDjoZFtYB414JyJedO4Jc
QaJ5E9wSQIt9CvShcqL1YVk1FbMAH2Z/L8XZOTCslM8PnTzlstJdCNrqK4bRRg6TBhxHHbHSNW5r
rJRQ2mlorASd0TeVMlawk05Js3bFpxHuqzZKnWRE526jc8+R5345gfMsaune2kQUrRxndAoNAOMw
GMEzh2FLcGFlsK4Nrk+YKc05Fk7dSlUbTu6LPSf9km0zoRll09/yYFIYxYufHJINrqJLrysx45mc
VK3LfzTfLuuPaXVhdvC1rB38UWnZ7WhhlLtd0bevidrke0WZVxgeL3TF+T5eQBW9myx0eha5U5Zr
RzmBBj33Zc69u6jVgSdE6LhhoBuaHi0fPpIUF1fwiLH+BYfOjYsN/vznTdtL86AqyTufNBOD+Iey
X5ty6RZSlTMGCdVyc8R2gJbAtv5HYgWvVr6kLDjHlIiRNCR1VOh5hm7/V5xYqDfLuPvHJhZgxjAY
0uQO4N9ux/TsijC1QiTyaEoRH0C9cwh437z0ZEaW7AuefVHCPXBAAhqqM9AGwQ3JCyQCHpOn2MqG
UZs34ZQOVnBBChtMTknWqwOOkYqOOw91JOSb58vHfKaAsvdei22tJquOKc1Hf1BJ/5NraOJkDx2m
GW0cyetChGn/eUy6I2Xr0nvhNq6/9DBFM9GpXB4kWC59hQ5/nnu4syWOFFchevcc3JndU6tpkRZ5
NuCB7w38JOAXuPBsss+bNeifONuZPWU/k1Q/3k7hOyonf2RNbkrXXDD/2OQ4iHn6ftgDWNVn6f5j
6L/Fp0BiuKXZp2nB+6N3lXuG+eCmfMkOOkuoaCmZCNzwVaXhtsYlBuNZ7Mhyi7CgFPEyY50M0uU0
agpL6s1qMGC7UAgJiPw0UmcJP1rSOyZMyuWVKHVsaCzoyZOWZZw0M6qAeCjgLd2DAZPzmIp0mICX
nw4YZBTsM2OsgYN4p60FDmV9ZU09lIw4CihCoRJng9w/cfvHkEl3Sbav0i42IojQj8XSmWxeMX9v
hhRtOvZ8zcjTIIoOiPNpNav5jokos5Up02p2memHu5KVtrY1lU6fHCx3aD6zFSsEQHZI19M1yUoc
BEg5vgsC+kP/JUOhp/kPEyKWdGelp/+X5X653mGKsBYy8rrY8iSA+dq8CO32DRC8VaQEPnOFcbXL
LeKiLttEGJ6kDoL86/8OAtnoHsdY/HOHRRABVbd6C6ioqcMpNv3lGW71Pyv0BOAdoTk88HvusHqv
q3/7WxhovmJ4anciWniOO0f2OSuFtMaPpU6GMlCYxz4kiRQEfJC5h9SqJ7KD2/C/RMkpDaLVCdvu
XyhOzrV2Bbc0kmRJIGsZkLIC07pGWrKiWfAYmOCE3S7Y0ka/Yx1YYRgbzjYKQ5MYw8wCWkfF2X2t
7Z65aHbz4TVTwEJJ6mMozOhqxXcJ9uxIKD0PKeRVGbRRyf9IEJB1hgq48JqPK46afduHE05VIsmI
fd/M9qzM/EjdmIQcg5VWWvTu7ZFOq9cpwQNVCy5P2zaDVX4dfMEqCQpDIsk9v8Za9JCMqj75o+Nw
ekjQhSk2x9HE2QpnnILDi0V6/NvU+ZFv/gYMFub6LBnLaCaId9UOqNbYu+XJKRCsM0ib3n/MRu9i
4ton55n9PUFKhx1QcEA+JcEeeOA92yr4ktolBVe/qkFS70niVfXmE5NYPEsSgl+luESF9+gudYjT
xOd3Mhq+SRPdwdgDYtVTeuZuyT/aEXzDJyrVN9j4vuYZnICstKLIG9FhZO7kiv/XRE98f37zH07J
mJ628wgRTUJrljeZoZ5hucy7pVFROjux9nDpB52QALDSKsDagvBCHxUKGOVTqwNtoOof/Aki2jCA
YJnl05w/e/PxdBhZZxc0ODRd9xQI3tfqWo4T8SGgklcRpyIPARv08b8ix7exFZX17wNCD0rw2Z2G
qa5NBPsIWp5238ipMGHY45TPyAdX7XDN/3IlMj7hurA4woZ9Q1gwKFQr6Orr21KZ1yymtcz+KBBG
JVuae9QUlSVlCR0O3ZwWEV/SFTWFTc1A480cnggiGJu3V40Xi/8T8bZ/y0UmIBlOt5z7Tzctt1yU
7sn8J4sMaA2IvCZwOaltNmHsmAOEzoJLC7neEqdQEb7jQtOyqoevOh1hKgPvY/ZgevJxoJl4Ha7U
6hfiGj3E33ydTv1KyWzW3mXMlWI3d4OSAYCuHmVWhrZwZFxg+0J8Q7//IvJhE36TOM5THddZ2Fe4
IABxCuxWS/6UkxVkbqSHYg7lzXGvavVh+tukTHV7tKQLb0ZrryjvOwUjKLW2AN3BvOEhcHs6TVz4
7+wcwvISTpCwbY4v3+MPD42HtdYtugWNkhIrP0JwxuNih9QS+MlYax+wCm3KrBgzKUlG3Db9ZKD5
HcLOU4OdtfzlxLks7KKeOMGeWWb0imUbDVoUf3IWfq7zWTkDpSdtDtl6WVjoWHSltU2ibP0CjVWM
tXwAJeR6YXEFN2aloBYYd+SblOREkXLsawW0aw1qjLzbL2653hjpbuCLlhZwV11Lr+6PQtJcuYHb
awlziSZ0GGGS1Leb9vT+sA3AGBLRXC6ATGtLP4L/MwLuI/KnnLwnayzalyzLQJYd8vy3Us5+hW+5
881qEHRDCtET/6FG8o9Is2/nGdj7rHoLhVCKTeEf6b+A8/jZNKX4/goqUvHQhJvoEDAeGYFWlxLv
ffyml1deXeMh4oc05Z59tsPEVbUryHo6M3+a+RWK/6xt6THg8yRYZRtRmbqAyYoCU7XkZpjFOgf/
f+5JSk3qEb/0z82/sWy3rV4LMaShsAfMmx4i+zPlHGBqOTEd+XxQpax99Qrc7oyurePFwN57BT+y
+ua2vRNiv6gB0h8GVbfbYomjhTMxcovjEL6Kpq0QmRah9xylA2A+nAjrgjzq8UBYwNZEdqH/jmkD
EBky4uOt4f+nrx45ePhyO5HbiDGeoq/4IUaKUXVpyEHn78omVoVSN/vxaJSTNTDBEZEGPc83JYwJ
2ttMQljnbkXa8y7IVRKT0PvDhnXDFb4kysXcPFwho2i+PbzHPAAmUwP9fMYPmKd2ghT6lmhT/4gr
e9tyGxjSEViklaFczplUtA0YOsyQorcDvllqVz5GIOarpX4WMjeXqGpeVH0oN/KIYF6irBeI8zjP
+uFKpR4qKW20e1yyND5TQAlXcU/Ai06GrnenTHVkJ1Q/Svfa6VUGW88SJ9GsMpDl7qlSE83cZf+x
yizr7UAHOi77s+q89tCnJb7L1TfAFkq2Wm7jtVBflyZZEDTqzSkkxWCsTlMi6G3JMxWUP6I03TV1
dlPSbk6rZOI6C4y21reN/RSHvBHs+Cz37rF5QNFkrq2A/8/I2+HmRJ9eBdzdi8n+ZTUNrPhatFCr
3j+/oGJlO7PT1nPhnrp9AzRX8auR3n7AEY+zw9nLXONHnueSFHMKAwF0czni5H63LRO2Gz+CyUlB
Oa5quBtNxPV+azaHjr5rBvlebLRAjgqz8wtrSHXxZorfKxcWE9yx3r1qLnIvGjBPn+EX9mTwhrAu
SwLyWlOB7FSrbV7Ve2mquqIS/a8/T16ONZULWPu/UgePrYhRthJm565UEIfeOgOa5NOKfZvn3S0M
JoeL7dNFJWJQQ0Xdp8XKp0uQXSTjtsZZXIZfEsIlc/Xv1IAvO8vESqutSmYfekvzOGpsRRkJgJOk
xedp2BZZ9d0yhNlkUbjQwu7ciw4vaTtSjoH7afz0/UHPJtrHMTkAgA6NBSDdRJT18njuytm/pEMW
2urkIf4asLD75GBghDaXX5mBgmumS9a3Pte/XFOz98BDiyLPDL0Aj5MkGuhTF8BUjqWrm3oH/yMf
LewMyAK6CKVHgjjdBTzfZwtbYHA1iL25+ZJcS9Dhf13jUr9CL3VbS+LLyZyrzMvB7OvKPf2hsF8P
pDbivMgkrK9DuRNcW0xDMwpVQ3elVu1/ctUchDxHVnjaC+Ts/gcrS96CTuNtQHzMqO//MdQU4RDn
9U4c4BCZZKK/5tRO8I/DCeYCSCvOOf6RywXoVn9eDy8HMfFIwpgb4SCLq3/L611iFmHiOZBymbxi
2dwyHhat398S1E/4SWXbERBnVJRe13buu+fMKgIYl1ddspc8Yh9IUslOxGqg098dIn4ctpwtAfw8
ZmGJR9YM203pzmYdtNEatXztB21jky66WD6LdkHHmci4DeCP7Qqmcds729yTeftFq2SgAl6REszq
O7F/jXGoMyTACznv4N/S34O09o/a3iuaH+Xj5KF1Kwfta2BvxoSIL3cd3LJ+65rzL5wl0+OIkwFM
RlGuR6lip4tgyDzHoEufpn6mwy1jQuykGZb0wFk5AZ2bemwZovWo9bb0tG6Xi6Idk4peIQc3rwqR
p8JF03L6Uu5bDMa/UQoEHg1RvdVXSEuOGCDZZWF+aPFi/x+3EM7ADqJ5y7NPl74ES+AQsHmi77PO
1YdZd1bBSyucxHI9w+U5xTbKhHr8J8CPZf3//kq9FNoSpmo7pfzj+wfAsKKka88YMowReRGICcXw
IM9R1zrCskGXHNvcAUueKXbcymaQE3ZVXlJJ1dM4MdBg/xH4TJVB2dEdjYKs+Bp9vic438Ub/mMi
q2nm9sjHKJ31P58OKTqZGl+WP1dwXMAXWm6+5dlEJETKeIFF04DBFNpkoxUvVENrKYp47EBKhOlB
bwkYzkxe1zhdVVXAjgMCsznCkBFLyqq7wQVG8igYUMLUxJwzQh3JYKMNDGb8fSCvrV4ZNaAd0Hbz
iawJMIv7lqWtdPAJK00JAmuTy97wkbRWlhKyWeQxM8/jdruBMHUmViKyP2AQsQDuF8p00uy3Xju9
wLlo9FPZUbHb/GBJiXUj7bdxa2QyxEgwG+cfCg9us4xxwGK1FQtmlvoju7zcXgLhEMSHHn//ZW7S
VUx4K664ffAqMxH1qdH7JeM/0NzKlS2MWbszQ77foRqohV6nzhm6kojGwNIv7LeqhnHLnR19mVZV
LgPUZDqmfTJu3dRl+Lh6JJ/WmXNBdDeY+z/9rsv+tqpD8oO9raw95mX2gTWPAhkKIi7GDjU8NaIM
YKcUcMfhWZo40huNbs0i982VT68a2ujhhdqaFYp0MLf/4QQZtmYZADe+ARQbM+vrDA9MrED6Qi85
R3qtYYz0hvjtiEM1CnsRvgPC18MJOw+/hD/q+Gxlngpzc+eQVW61ok7pQl1KKQU3gpZAGNGut6q1
/kuk/8fJz1/GkfAm2QR5oTmHDvaf+LlXrdUFUIoaX+3OfEbv+JkfZ08EBP3gxKJu2vzOy5kbitKH
rpNXwIpxeRjVwN20aBHs+7x47tfu+dUioQIbumJQwSUOBP9irdLo2yD2ivGkF7AGW/Z/kcUF+U/N
vz0j4ldIZ2Ptokqg9KEdZCRAC7XK1b9lBjeg9/k5972dNyGvOiW2MripYw5UVeQtrILfVADWAXc0
tNTWfbBILyE05qI59/zONWTwCJsfo32m0gXmhJuInDsnNE0jGCNwfwbT/ER7oZBkEY3VtYU46YQW
qLyocqt9+niG8/NefYGxEyaegvyE5ZnLmwAP43aCbGX89jf5uCsZL0ReCToJFtdxDM3xZ1KGt7Pn
uHAqp7Gm0kLcHlmdHmVip6tLLT+6YtWKivMmVuepMiHv4kFdZn5Q7K/MYILWrC81tHe/EljSl5ZE
pNNsAefdsimJSf1oEHkfebEJXDoHZYnkeiw/EkExc0l91ZvxjC5C7a2IbX6HDMZGq9Sysw+CLLE7
fd2G6ixriLOnvavVYl6MPGUdaPmrjgMbjKyGSi1CbpEwStBkgQm+h+WH7bDz+q6/8cWviG8T5WqO
0Q/2f+1oMfJFeFDyDh8LAe82Ail99bUjDIjAkUIDgQQxKtcMEGGD8gMgVoNyYar6U/kvjAc1BYmB
rc6MVHlwaT9arRnT/n7XY3H+IppgZkvVGkuHctXs9d6LdGhMKIgeYgEeUratxZ6wMrn2BxDSz0eR
iHL/tZ3IFdhWpYTqP2FZuj7xzbKEBBghzEspnjJLpnxesL4G8GThUx8s5l19hogYx84FWWVvvRnc
osvxDXsgi83AmGrBc7Xsqk4zenJ+Tz55Do+pCdI1u0Ffz795UByzCfKJ4CYl8Za8iMaRCY4NvGtT
p2yK3hP6sk4wF1KHGZVCUU/UwwvNgyRtJLUwijBlzEn9/uytuQ5E/b/t7FvNLxHw7tl6Qx3prrhC
0vBvnaGdvV3DPVm5LXVdb1Hrwqnuwf9NMHHsjZLhyFmRSUfD2mhJuXf6XvcLW2J3oiC1dkK7OUM4
MAM30Y/kxRaoH3bVhwtboHxliZYNIUxYoZCTx+JLv1NnXVAmcr8OiyOiMLCtGQ0Y0DEfSE6mLKUO
VKaYcJBKO2+eS9R+spc5bKMz1bSs1PYm0C7Xh2343xckFQQIPm96dBIkU7cRQB7hepjanR6nmUhs
0DyVf1B+UZkdtsLCav0cYKRLSmtnm7NG1tWxz4J2UtYzxzaxn3OXAUjBQFqp5uw54/Lkjw2YPAQF
fMtk6ozC8VecZJe0sVvj1kUruJSSPCiUMaj08mD8Af9lhCVM5AUd0nkYJAyMSz//gTR3LUHkuSX8
V5JOgdl7fNgU6i3qneILY+MTQUREbB5pT+i3Jfs0x4TJKajIcWu/MDl+ldr6L7jItr99WI/znnvm
xlZAdik45ZRupROMyAvjtMR8cqnZnOQcp37ELBltgb9Y2b0uW/3pA3qGKeKRgl+yM14VO4LM1St5
zjI/CZNCqyoabov6V36aogzCmDRRGWLTFE3XLzDViM4DCjcTlLh8ilUptyfs0IZfWigU/p7sEhMb
FWZU5vuNmnFi/7j2fB6JyZANAj2bWLBA7CthDiVFGZV6uZt8hl9mMOfKtl6CjKPbTQQ8FzLmh274
4vv9DEEEGmb2fzwcknwwvYcZlQ4lW9+KsMsKMK8NojyVIwHJm+VetJSsYcKGG9K8p6t8Po1Rl+f4
cEMW7dXlcZWA2AeC+wV+3gpEBAAyTZC1o8e2YM26ruhomxPRwRX5FT+kW85/nkk4MHksIf9/IN7l
jqgS40XD8uozOaPskQ3mWBpHnLixYoqsFGcS6DBUy26PSsvR4mxt948c9Mh33aMrTHi3l+pc1l/u
Pzm0hwIyW8eYfxO+oIp8YFsS79E+cNO6U6hteLkVCDA5H67vnbTzu9TNuNpYYK3fedQmpVdX6CSO
ZTs7T+COM/rabdMuQX+3XJUQW4J5KbMRN/QTfph6VMHMJ8YnNxmus4dwGy56zMuTqVItoGg3wKj8
oOyK+/xb+53xxpkPnRCeP97AKL5zF+ODsCCKqFGsT+OroNoryp1bXhTekL4aWQGT8KECIx5VLEgR
Gp7YzH7UNxWAzFXlGLJ9tkY+D0ITXKKCtoJs0wZDgZVNzjT3ZHcg1iwu884WSRcuF7v5lx+FL23C
lFL6InGVMZNfmixh1awO8G4afXWAHanWnDP3xmbuQxzXy9G3bc3W3paJtTvLBBENkwysW+3rhyKE
qKbv/qo0H22SYE1ZV1j3eWY/69QgNCbzao1WcHvNYJpKlXErZd9US/eAreK1yTapPcyqNrPgU7IR
KIQON0yNimWn+LPyjpEBXhe5E6bfemJZKJUxfbqFC/vt1Bc8Yf0Hs8p63Ad7BfSwYX2NDnRRF+/Q
WtQXm9FeLGBcgwJ1IqXoLDes57Vwrwg3giYsrwrzFBukTAJRMdBdeGr/fFit2DQ6vGbyJVYi1O3a
6vOfbb5QyDugX8B8jwmILXARv5Z/gyf3U2Bpo3lsmsFEkB8MldoWnmfxFVio11Ahay7jvfJB20iE
b4bXeXixDkexzIEttFMCAsjdOZo9ASblKo20EH7TY6nrss1BzxgDeySWawQcthSSbThtK+0nxC80
DFo4Qmg09NxlHxdhz9P3lgl3cOBiO7VCgaVYfVd3m4NY0WyQ65utyD2VMh67ij0xVCK8CYrXWbsS
VxhZ/UsW1o0XFVt8ekV4BwJ70D544OR1WrKKQU2PYbRqkMf0k2YRd+7lfnZCw01PLB04Shhl5vxJ
RdT2iGrDocn35WAhz8NxZFnlZFfbhhUS2fR9mTQNWwOaRBqDUmsH6Eo5tPXqa3wSFzi7GoLn93uB
e64fSI4vmCfjdyI4XfLTqdFwxOJzvf3Xvef3NWxqV2I903PTJm98agmTJuG2PoMZRiEEuKh6gjit
h98a1+KhDoyJsW+MRYHt0XEGOSvSYQMtqE5OvOKvy00GL2A1UuNPTqJ/nKrlRUppWAYib0ehp6Df
LbP2EUMbLvGBbwX1okLKVaPfjHG5MFcYznH0u7U+AP1cPpmdSCjc4TS1kTBsoqUJUk/qTaSOf8Ry
/6lUVqxBwE87bfG/AYuacN9CDOH75bb+kryqE+DBRM9+82eUJX3aR+kkXjtzutzvsfoQxcRn6/YR
gdZbsQPd8ONnS2YgJqYBd3jncbFxlG5F4T8HbWizVKPrVJVAf8ALNynvGUp8AYg9XPqPrEz9uTBk
IgcAcqmGxPTlYsq+i3A91Cms+FkvRrPYXoFT7dA8K4EQs/qMdGvkvf3SkbVUl6BvDQz+c2JU2R8w
n/PNP1oxwE/K579JFWwpACA8x0K4dsKDNBMGRgd7NpB3qB5JhpaiRAq+TGMDb3RhG/VYCiAnhQhZ
BwLcmqlSSVTjTZvtxQNsClJR5HoyhqBTICVWvNUXS8oSZls1n+d1rmgtlr5Gyis9RWkOutBLWIxd
zN+ygLM8417/rNkCDSfjtCTJOCMjjAfdivKi+dIOI8NdZNiyu8PcEGmDQ2fmicu7qDX96Zexr129
TIyJnWnH+hInz291Ro2rURHQYGLx3eTrYD1g8z2EnwRhUEZvd/CtmE/oAvzySad+DlJ32ssWDql1
FkSKphG5IpY80jW7k2NypYBuxp9vkb329aKPCi8EZNf30il+o/KyvSYcCcJ1JxyTwlQkIz3hFRDj
VyLrOf7C6FS0cQB0Yw5GVXfHcbv3kvRspwY53uuKPV1uPCSPEydA2DT2LTSj+DJsiMZYFn9Gog0W
B7d+B+kSlz8X6NypKetMQ2HlxOq1IrclkuYnDDUXD5yPoxbu9uUr9ttovKFmsrwwL5KA0qAjzZRa
hBybrAYpYKWDtV1nICx5RbCe1Obz2hgiGN2am0bDOH4fbMfIgNhlB1zwi5+pF9yhariTQmHQfP9M
1t9UZGZe63lkCqtuPvQ4VZwujWD+mjXUnW93bNEx/l83pTYHKUI4HuAykvUZcVq3Y7vcKxhWgujX
7ACH7YtQ1RdBEhkEJTvtI3httyO1BAY07icAVoKoEoWqdOJXnO6wo2Yx9l7uaXBnC3Vq0JjWTGeW
Bt0IpP9QR8n7K423bXluYGm8VGtdpTK+T/Ht7XuEW7cIxTIErnzL79UI2QFpfhyApkdnooyYU+nO
Tz1rlFe/RBzfNms3RHf1kucs9HkgbsOZkJjDMAFOhCBh7JF5nuUUqEJAWS1iRfjquwev0BGy4co8
he0uLQyidGRuyViVCgHx+j9H5lmcv6/pDx93TyCJdSJ0qkk33pc+c6Q05/stQwG5SEqO2dZa8bcL
qxF57M98Wyq9rFuUpvS9XYJI0EkiBqCgPpFQuZbn6CPFyeuGT6CJmCXU8oU2aCIRWLq3K8GMDzXm
zhY4t82PFDBAURFsWI+3qa0e+UKlHLfQQTkNYkh0RbDyt/pkZh1hlbkDJgkzYyjFPWAsQfCy6EDy
jpUO0AkV1ZRNtEE7sXO3zqPlckoiF0Y7ubrRJItO33HZHrAfWCw4Q0wwgjnKxxgRfQCobKj1qHeI
/zkpGECE2lQWQuYs61kIq/6YPz/0d31Ozx2qulXhAuubDPzpt/mh5ZraHAl1DAp0/AoA+NuaZGEs
Rm+KCDFEobtZGQ6bgnJUJpjzNTzhID5pYw09pH7n1qhoZWz3hkGS7Vur2jj2YKck3P5Sm/Np+hSE
mpRkFDW8Wk2nvvThjTADlBt8p1nNpgT6t1ZIlqW6T0VJAvUET6MBHjty8XZ0bndOcTaYCjUxHaKq
qE8qQ3VyQeEb3kKUWOFKBMARz9wgbxtzfY3UwrDw6iHIcwAHNT7dsP8nHShGxwm9Q2IsMFez9GUv
76ss5wNMBQwr4ik7ZcS/OXBDGUOJrRoS3+pPgwwVeo64J+iu24e3GBBoao4pAZ+4ItxItyW/CX2K
o+WHBP3V5O3Jj6LgOrk4R8dH/kHWsXW+bZjcC7tsa28Exk02tL+CXaq8DV+vezoExqEzNkXgQ0eI
qNsuvs6PyrDS+QloihZysWnb5+YYLkr7lqF/AMT3IGJtRMF1xQJU//KoYkuImh3i4NweLO5G3qbg
0owjvbWRx2eogpE373U3oQjHkBLwdsUdljJX406gS2OOke3bC4I30rP0RsrPbLi8zuA8Z/z5Nx2w
ZqRKUORNn6em+f9AbLggJuaqsrwdVhdBar4U0j4mDNL0qAdWDjkuOBKFwzshvb2sHLisEG1rPlks
awxchfMswx/4XuDI2ycAaWGwhIY+A89nqgbMyOYsF90z2GOejTCmItNWk3sugdS6bJs0r8LdiKCl
FsLcge3u8S2BCi3zoMgVP1IYob8CURP0nHBNbX1uZoBXnmynJXjn+KiwPu5paz4JiS/mxTK66bJr
uDzx/4/8VRJg5k0qkOEf1pqLbiZeDXrvpr9rbNnP3pQVBmZ/+mdzMb3ZVip/2IXgSR3QCW7Ml2Hz
iDYd0xFBF7cJV0ZLCGp8lA/kpB/gRxhFQLSKNSLJyiJodrME4eHAQWe3zoxOVZSyr3Nteg/1fBBb
h9qJfUwdIq8Bc/lh9pQBKq5XrjN/r9GVLexDgsY5cLr9ghbI7iTpJfjyQL11M5MmZnUf2G0VX3na
y9kwWKpLHKXJvv08np+nTUitgAZEA2xp1Mp0kgjHCGtmR+QWj2idnVTteZd8sALCR/i4vIuyU03y
gMzH/VQBCKYxraCwWga5R5LqZQS/TRIf069KHYswCjVmX2JLCWLMs2yTkHPxivVSMmDsYj49PZEi
ajYzm1z5NU3keQYATikhzfeCwSzBk3pgwjY/NUmOAici9rLhgPqnp7HlYxWoCkyYgl6sCUxeHMSE
uWs6nCjRnoxOX1q4PcvxSb6ThF9WQ7Y1iQl6ayFJkioPYHXHRjuMR/v8OBg6ZOvZYIo8SGw3qfhY
If/TZe+aO2tcfX7vtWUSemf+GTbtep8jAzxzMRSr1y1XaMIKOHnDvcxBqJ6eZgb53bWzJVkBBodE
gf8AxK9eKCQBeoqGD4xdiE6Vh8DtG6jDmbIaYKlNauM7aI4Zw/Bd4g2RJvt92rUR7oM57Kv4CKHA
F4+pM3oE5N6/ldxcw3roRSZLqOx9nsg77zTvUaZ/WAdUNA3tKxbft6n9DLNamcRdaEsVh/U7AUlI
2IHfg2gM0YxPJcOlViaVg609+fTV/ry7I1pnAUowFZlwkK2dW/EXcRzb83ich303M4saWt8FgdrC
ujuJqd/IcCE9SRgoghpsnhySSiWaKo0TO8G4JrPYgShm5CFLv+8q07Ne98fDP10VO98kgYdOb8uv
91PV29VPRRMz1ETGgIN6aox1jojxIFh28ZiYQun2NlacWlYz9q/MlzUaaRV+fPaM+PmVU7Cg/n1C
Q+x2gj4xk2Im5T6QsK9N4uyy9fHiY5IJ61j7Q2igvoMatscIby1/g1EvNPv7mSRq6KbnczzIqK2n
copn9YdlfozupqLBnUSdlO+bOw1WmyghJ2qu3HCaQbE+6Kfux3ABOJSGFG0jQN1SlP1f3bgRP3sr
J9WY/4v13YwZaTwLnsvleSHLAjdt6T+CdqvKdisnJrb0aNXHRQoqRacLnQg7neE7AMzsinvNuHkY
6H5WuGrEDCqqe0XpV8g/gYAGzMdUOCBtZ8p9gNEj15bc+pK05807T8y0Aob+Hq4p7GI4m9SDNtKu
1YdZVkTWgzWj5Gubpv2cnhRiW8uLg/go2/+t0pRmmAzjmO30k3/VQbaOICwk95ggHfa0VaT66/nZ
EAwTTHQdeX0YdDmHyu1rKAvDK4EOU+g3LrfKdfi8X4600ucgGWO/1J5AVHlX9LVyck3HON+MIzX5
oYOkMDmpvtI3q2qWkX5WXgeObAgczrT2DtILZFIJTo/iK0a6tlwLe9CcnMuMG1LGneSvSXJfkHgJ
6npqTiMd0Vm1afY+ZsXilgvwAl63NhaaKRgDbDDcH0VVJXU2u9Rq4ROa+ikFwfGEFo2lwemcJupW
fVBV1vmIbDkYGlI3Ts/VxN2YM16inHE3C/vVVRXnH9gVmK19QlidhgTX3h7YZjtSxQ2IiFVVqoWb
q5k6aFYpnTx7wzPW8VhhMnUxFgLu9bCX1VSbYmDtTC7C1dJwDnhci03l5y1BPPJCtP5HiQtiMbQo
gNseMffW8vLCvsxRdasLlbcuuplzWmuq9v8/iPYR63I1iFUfv08+pGsMlltVytrN4ghpZDsqDI+B
B/aIjUiCJ/w2jzIVzlG7MWNi314YM2/1eq2TYB3xoLfX4yPyrHSIaxugL1ospYfoFUj7CsYwIqWP
WXwA19odRbh/kke3f37S62FJpRtNOZhJDPNGYxwuqcYiJojLufgABVB8+fHCYGTaVtoQ40F6wn4M
YP5GyPAPkRy7VCzdeqAFCkAtsLOK9tFfH/k3PY/SVZR/jfxsMUy2k0D/yDA31Hj2zdRIhseELrn0
KUy51JYbzZpNl/MVO83fRW5udJ52PCP0gi1pJTxifpfcIddxMzv8+kGWokMNS7bROL3NLGPg60g7
zUEk7gQ9b1jiUpsP0zm86oIN+8GeAtJe2psA0+4oHMYBE663CI7ft9T04g5UZ5aBr7CX7IF35uQJ
jxi6eOPkuUtGFrrC9uEhgRRabAUc63qcJYz0+Puk3mfdBzbVOkfaZP4pJq8LBa10+o5FkEEGiu5h
8xfXgMXXuA46m6QihpcXO9caJppAxxRYcnRXT41x/Kt+NaZ0FcRAYwOOLTU0CqjhGLQrlZ/zVD7U
h2hVreph/fPKRfXPCE7/S5L4mlnNt3DshYpcMcd5MjooGoY4kiLF64Il2Kvg6kl6oaPbYfkeU2Lj
Dl7rwvaNQNmz9zWFT45Gu4jDqr2WOLSbNV4VKuq3t3WuRDWQ2Gvof10MpQ2uuJdS9tvnzLwmHjBJ
5ai9ef2pubecgBsRFNlhWIW/lzbgfQUT7kdAIPEJsUcJ7FzXcbFBqj7lLII9XdwxnKXSnwKR5s8c
X6Z825nhANfqVUgyIdaL+THLrM6qi4sSsszGB14E5gGXGhRizR5zKYo3fkNvjvHor6rThTi/9Y3Z
7mcItIsw+3qGQP79EKvNgwhqIOop333PoY+Ijq6Xrryytb1WwRTAXSDqgSnmlWYZuC0lsfZoeh9x
Y6+O67H4zdz4WeOJ+ec57OMMcSkCxhvcVmZE11XiLZ/mrXd2alzNgepHRHgAx1CBaZ/7RYUzN+sH
P1m+67PqQb0Ak7zYamk0XoYG097Jf7OLMhYIV2vssi7UNaGQws9KBfq4eG5rBEWInf6XtFZCk2FD
S6aEMWzg5+GudXfveTNqqMlFNyO6dLbtvC3GNAU6Ct/p+MCK5OQNn+C3sckWxC1ZdOzK/U6WbMo9
LyBKm4oW+s1YEerfNldPbny7cD2K1zRKntmaMHtzCPR8eQvvsFATspPBs2Bfz/7YnQFsMvRKZSPK
zRj8zMK4B5HmZmPkOZAqwUfwvNB3zeFeAc49+Ul/rJuJKhnGjlUavFolnwkDyk+xr4WAP1HW+RDr
48L6voj/BKQEaqaNJI0USWYkCRw3tmtBFOjuxzgLPMejdT8LK2BHoMNUKEcsRCNIPyMZvT+vQgng
sKd2ECFZfXcXh+NFTFG+GSBT2JA6NugcNPsJyQ0t4b7QL+szJ8bulJ6tE4lugpgRtuAdYPowJ/NA
/2WBBzINmeIM2W0sWBysghz3i5psbaTtb9k69D4P3B2vhgRNX1c7updMOH3ZY5tfSNI0YaYuQkBJ
TEs0fXFAdffyt9wxDkmMu1QqCeD60hg7TkxtVqvQ8kHgxvQE1YyqtSFnrCQ1JOgNI+5qsnIYK7zo
m1XpZs5jTmN4zpFgSYelUOJkK9a/BpIpjZ+RoWAiZRSSHMkjuJGM4KMsbWO1f51CM2NHu/a6wa4S
mwHUddf2aI3+9/7CbhNT59QtPpOPMaQlt2KYxb7DekOhbuCBgPtvNFXuPsGQ1iMDgfDJpUsLPkBb
pCD3moOb1yn/bwisMLaaSQ3hscZCehtce5ytLpo458kvsvLIghRbHQ1UCz9j5YIn8eqDJ/jCJrJD
O1oyTgH5sXsCwFF7xhq1NcyvNSYiLyouHlD/edA0NT22F6UQDgJEohSz50UhDz/56HNUbqqDTpNq
G1IEmIXdfdJyo/Ep6S2raFDpGfCB70f928q2QYwUNIXjyVHRbHPe3P3vHO2IV2SW8B5GD7IjJEZ6
xqz8rWNIY5zl/9LK/TayKeRCL3r5JIHrsghqIHJVqLEOM2uRLeWVLLQxCAaOdxhXa/62TccBgYhx
C9kt5aMDxYPhBCU/Jr3im1plnlfWMhyO+dNVHIWJQOdKJ9nliBvoF4tFWgKwLetQAn2dGwmIOzpI
Rs5TR8t9LbMcHeK9OcvJzayqsXXEz03e/RmrL3apmQhUpyknYU/xEZBsNdlgo5mdfyfrZeWGRUdj
3CfNesoJYk2l6qYMIW730bKUtPph60Nczwq5t6OlrAUazSI5oLXAXNVzNxgFpXpr+ZDsLM6IAqpQ
fb28PMiWpjKiIxU5UJctV4ycumFQNJMcSfi/YAeOiiqR1IjezTy8i9vWKsHezEn94qEWWioxp4rS
NfUuiJbbjcgQ6Rdkl5mHLI3vFkWpg7+OPcYRqkbCwl6xoEMaQTByK/zIMn4aPKeYjrOwQb88ovqz
ovA/6s3kjnIn81XSecWBJ99qdvDdiCb3lpkZdntuGoPJWnZ4TXvbh2CPcG0DgxYTksXkLUqslovU
aAVGAd3YXO3n4Al+ESHiQNKD71Pfma/yk55UOy4HFuMs63k+k0qm/y1v9E0LS+tdi+O63j1tn7vQ
udguMT4LMYZ/6ZBDHoGJ3Mu5AJKrldZY8CncPJqZisid+U7s1xWAJXJjB5h+akO7lv5aRY8Mh8WM
iBGgfABypaw9p/AP3mN+OoHLpTK9gBOqzZsBfuc0FdikC/stwtJgwGDIT/sGkghjdX1ViDTzh0Do
DFitjJ1VBTaGZxv+ZHLT8XRGnNXTaH94UpEriEqQvq5/F3kflOPAqt8dx9lezVS+vrOgBeE1WTGT
rHRPUmUoSQRxnGI82EyrGRy3tELIArMYigqhKz6OLKk2o1wn2Y6ZX6y5+MQLipIK6UtzIiMHMMG5
DcCrw1IDc4YIQJpKzegFnolcsCFRr4DiBsrLZgRuCxu/FxcSOXL8fP5wbbeOquSYMyd47IB4uOeI
iL1RPotfjkJTUDDnHVya0eQ515H+P8XOrs6j/wY+zU89RodWYmnQLxKNAzR4C7rGLaoflQXwIJyX
8N411bH3DJr2KRhQanxQB77DJFv1mQnP34pLOAGG+8Y9BDAawjj/u7XoRzr/w3HbANGizbuNdIKM
r2GJQndp9ZcrZvNcRQPyUdmi5qHZqJfefKwLtCB5wSLlQxzXsx6VSJ6IJQRoichLbUMPzvtRFoSD
vKw6tDNa3v4Et3fSdNzOD3QWm4T3LygQBpZX5taE9eu68tsfu3RgikV08/ysJDTKl7P++7hxl7xU
u/oNlFmT7ukO8eMZ/85bMxwrcI20L5lbnSO/dizCWMfbvRO8hngGGkKukY1EIbSg62aQfkVhLSTU
PCgsUL4w3Lg8kbvqx0q/IhNhJJZDg+Gjxid8Fs2qo9rIS6rpsKbE9lLaocYgNawkgskJirMCTHof
IZ1rQgFcsrL7YAFWWx5PirgW1m2IxNvQvzkjxm3V3MXT56mdrB3YrHGh5lTcgsbSduAlVYJKRar+
nR2XoOyzfMl0PoyFPmQgoS/K3LhTJOywDsIWtSgn/YFVqeGLnnp+COA7xGThZypR8XbF7qZZDrCt
NK8LIAEyE/quDm70BzOiRXV0SX6fncbeDVGLjDa3ZplB6dRDwCJqYzWfmpLJ+BWBGkEGfnO/ShWY
d00ydf6Wx2USevQdXR9+S3915zI/1G7p/FSLHcxIqR8e41OIsn4Jdl6tB+p5s6jFAVkk9DxmYOKf
AUksCKMbCZiwGEBJDsMYumZfugfPTZ4RlHKBhhsGNhReulBrRKD/eWvuEgpimiMBYRlyoPlNSbQv
OastqGwRs6DoTogHH0qZw1Ga4qbeA0/ic4h+MVPo6gCqTEPEVq+oBP21qhh41fc1ZH5ZB++oDlV2
Q290gWS31a3w4bzR/3wD1J4EXkx10GHn3OuxP1gxUXU7oMMuc71b0Y8PmePk9zJQ38r7ICGhWqkg
YfTAYkdabl4HVL091MZT5TO+yvmFit/AMKGSY5gliKC8imUsbfJh6n07ZOb1ZRqAkXGkiyGjaY+7
GkOstw+b9+kjlHAQm3PQ09EXGGQrQQQaRkC20V0ukH1VV/amqYt1N38O6kSP8vb7h0lhKUkqxrz4
O/hJ9/6bJ1UHmKkmSaHL0XCjmPw9oOZdfsGmHqKI678f3msKpMLd80qC2457v466CcYca9v+vZSe
s0YBoLN5aYQ1FIejotSwwTSYWrfUeeF9eFz5VQmnVLQ2XcVp/CvG/yaXmdflNHAbSkJTJN+UyZap
Bf3DziOt5jcy+N63r+2jsCnryPmZMHnQTYqv5cz3UOBeyNTfDzNphYRAcQXDp9hUqEeoueMQgmlY
n6rv3H4E104mbOkKxfqq+unkwjH02G+FysIikTfweHQKsFBozCsZF7SG4AjqKdhaiwA3Ye0LKoNE
fM5VJ2OZh9gk2SjLiK+uyRQpj1HrhgWX+/pcr9LEhRxgrSibW7vLVHU6ndJeLl/2urIHl65sFmRy
QvjUKSnG3QfJOS5UR3GLlXb6mg7S/9nmQE15QwnZNujUIyUrdftb9Q7cru43eGM4qUZt6C+TwtQB
0GkIeCQ/HaIDiPt9//LSlsfLMnTRYA4TV9RQqieCLsisH8+eleMWvrBQ7Fl+pOuDTWxAcmYnlgxw
OT5rN73lwJtz7lGpR9RHVBFRGTpy9GTZYGq2ZajxIm6NG4CdzgviaWWTdKbiDTAWkKswJDPhudKl
d3XjVL5rAqqOH23FAUtDG1XVk5cBa5kExsgeiJ/d9RKiWgPNPVCo7A6URaLGcEl5AHeImWovUEQF
iNR0TzepjnB5TXPok+/HyJ/aR99HG+t1ec0sHYdrtHX/q56kt7VQ9VVvdLobl7tYOq1/IDm9y516
Dn278//HL2FzvRHqSiBHhhD5nBWzcVRxIfAA5AGEMFgC8FQjEqszNfPh27k8VUr7FaT0PxRVnaZz
mxWfe1zHJ06UVIcfGbYZ06MQoVoSCyYtn54rNI61KkJNPQ3epPR8NWTL96qJwnW18jT8QUEtzAtE
rv62Vbi2qZZhER6UyHpd0M5b3s9AL6HOpajFAXrUkZb/B0ucY4OXpp0Sx9fbQ3Ki5qdN4pJtVB+u
dvji9lCOPMVUELGO/qUeOCT9zlw1NWmGrXq5HlcC8bvuxMK0fKZYrXrmzkk+h4c/JOs0FUvMdt2o
RnX6bdmgl7hFXPpUPKl+dbihjXfEf1G43p+KkYuWEGDSaNHp0nElJ0s/llxVl43Y4tK3J4YlbQhi
240Gt4wH3uPErOeESPotHjhCP9CXAFcHsvXz/22dYDXF8Z9MI/mLR5gstvBhh3XczJm5vIKyLjZA
bjuf/9etUvFjALn06fHV3DZVhRqXSYc6m5HmAs39g39ILVp1xtdLEAnKkg0dkonmRW9cpxxKWhD5
he7iczJZnRi1Oeq9ASlqaBPuR5JDxKVgylozs5XmPTDqG1QxXSpOUiKCPYGC8RLHDyoNGc7ok069
rH+hAdjKgda4tA1riPmMD3VfO4AuwrGymvLDQx/twC4bFqhPFcbg/Nt6hUjCFt9BObNu0u0x3Hlk
uLNyA/85/VHzESSwRwOSsl5jqE5a1zXOFr/bCdXmNV5yMOvStm76Z4bCOT1LK9jKNhC7917gZYHS
Taz3HpfP6tw9AJQSIZYUPEBu/LFWIngWm9n8zuQWtaf3QjNtES9U/sy1d7P/LOAzm+cKrYFbS7vg
Tgh6Vsa3+YNfmS2Cq0sno8shNNCungmWws0q5I27ScH4vFy1bd4gN9rincJ/JzJhY51Wgca4WLnT
OkdmHZUR1j5bsUjKWmv/j105B60Bqha1b8UV4XCTaWCetzoXvOyAkwcnS5umh9QSrVniPmTAJEg3
Wd+8AsOk45G2r0CP/R1kK8NNZ6FJw1rt/0j92SKSnSmD9jg5rUL6RnQGDWaNYqebHwfbj052FaCh
kXRe+kw97qB1qmaJn4zaV2JEMKnpyyFCNm+UwWu/3U88XbCGircZheHjvVnVYzOhS8JdB2wiEmTH
8tncIbK4uMK/C1Ggm7gGmemLK90vVY+OGyyi2hlcbymrJKCay9X0YN0xhXJzDElrksTTOa+mYwq+
+mKbt4VVt8FRYyq/1T4dx2dnMrJZYDTeuyRheB4uHlzQVDYZ6hoOsBhCQygjWDCNNQu+FXHd3y+c
Lz0tDOhNfUkS3oP+F+TucRQL8olJgcW8ORznoss7MqvYq6/QWkltJkPmhVKfb0LIXjdzpQq5M7X4
0wvdwhIdJMpc/GuksX72AofCy2CSaklv63wdo4lL3itVxiYmYSY5Yv+MBier8WKITmaZkyYeXrUF
Cp65TrbmQW5T72YXO+hjWrOZNpOuRQkOBOYdlLKK04ziur7q6gXPkiHhO82cEz7oxY2P9WtiEcFb
8uHuJJzbigIgEcWnz7vJCC0ftnC4fbgund/g7FkIc0osHf7LBQhDrUtdH69vzxWKcxJ6KKDsTEFd
BMBKSwCla3iE8tqh/o+OphwfqnyBPhGXdWH9uDh/IvKIqF0YzU6ltmPj3tNF4wF+YF+xT7Z10yYv
8TuuR+lREUUlF7k4nxBvbdLTYDXZcbrov32seBDoIHnOmTg5zxeenUlDeDvfMYhUQbcDIynvThz5
tiaztd9M8UWTZRBfhmc7he4BIILR4ZwxD4QOymtxj4u6GY4MgCnUia7FzszWTJ/zloWQXpK+4zjz
LR1p5RFSBoNgdIsvmddOuXC63MSp1Njcef0ZN7b7JAwEsC359xJIs6TbaEhusCm2FBNJiO7dFvcO
yK5luOrEWuq2AFdTqjSGHHtFFMdaCGUP8Tt0ZyylA7EixsHh1Gl2mJihiGaIv8qvoBkmzN7NcIN9
+qBGWdsV6sTtCGAZnj/A4U5+A9Av2k58AYel59EUuH/4HEqC2dyNJQmiwpIkndB85BJIaLRJYt3W
WoWqOFc=
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
