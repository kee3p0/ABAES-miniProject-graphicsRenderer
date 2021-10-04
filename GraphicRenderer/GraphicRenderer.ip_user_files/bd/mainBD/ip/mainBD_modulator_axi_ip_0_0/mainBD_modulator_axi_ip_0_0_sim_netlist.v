// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Sep 16 13:21:45 2020
// Host        : DESKTOP-3K9CSVV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/sources/vivado/Sys_B_ref_design_Z7_10_V19_1/MatlabBuildRootTest1/MatlabBuildRootTest1.srcs/sources_1/bd/mainBD/ip/mainBD_modulator_axi_ip_0_0/mainBD_modulator_axi_ip_0_0_sim_netlist.v
// Design      : mainBD_modulator_axi_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mainBD_modulator_axi_ip_0_0,modulator_axi_ip_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "modulator_axi_ip_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mainBD_modulator_axi_ip_0_0
   (pwm_out,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output pwm_out;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN mainBD_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN mainBD_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire pwm_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .pwm_out(pwm_out),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module mainBD_modulator_axi_ip_0_0_counter
   (Q,
    E,
    s00_axi_aclk);
  output [7:0]Q;
  input [0:0]E;
  input s00_axi_aclk;

  wire [0:0]E;
  wire [7:0]Q;
  wire cnt_out_s;
  wire \cnt_out_s[0]_i_1_n_0 ;
  wire \cnt_out_s[1]_i_1_n_0 ;
  wire \cnt_out_s[2]_i_1_n_0 ;
  wire \cnt_out_s[6]_i_1_n_0 ;
  wire \cnt_out_s[7]_i_1_n_0 ;
  wire \cnt_out_s[7]_i_2_n_0 ;
  wire [5:3]plusOp;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \cnt_out_s[0]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\cnt_out_s[7]_i_2_n_0 ),
        .I3(Q[0]),
        .O(\cnt_out_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00F7F700)) 
    \cnt_out_s[1]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\cnt_out_s[7]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\cnt_out_s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F7F7F7F7000000)) 
    \cnt_out_s[2]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\cnt_out_s[7]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\cnt_out_s[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_out_s[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_out_s[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(plusOp[4]));
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt_out_s[5]_i_1 
       (.I0(Q[7]),
        .I1(E),
        .I2(Q[6]),
        .I3(\cnt_out_s[7]_i_2_n_0 ),
        .O(cnt_out_s));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_out_s[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_out_s[6]_i_1 
       (.I0(Q[6]),
        .I1(\cnt_out_s[7]_i_2_n_0 ),
        .O(\cnt_out_s[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \cnt_out_s[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\cnt_out_s[7]_i_2_n_0 ),
        .O(\cnt_out_s[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_out_s[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\cnt_out_s[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_out_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\cnt_out_s[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_out_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\cnt_out_s[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_out_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\cnt_out_s[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_out_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(cnt_out_s));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_out_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[4]),
        .Q(Q[4]),
        .R(cnt_out_s));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_out_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(plusOp[5]),
        .Q(Q[5]),
        .R(cnt_out_s));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_out_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\cnt_out_s[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_out_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\cnt_out_s[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "frequency_trigger" *) 
module mainBD_modulator_axi_ip_0_0_frequency_trigger
   (E,
    s00_axi_aclk,
    Q,
    \minusOp_inferred__0/i__carry__6_0 ,
    freq_trig_reg_0);
  output [0:0]E;
  input s00_axi_aclk;
  input [31:0]Q;
  input [31:0]\minusOp_inferred__0/i__carry__6_0 ;
  input [0:0]freq_trig_reg_0;

  wire [0:0]E;
  wire [31:0]Q;
  wire \freq_cnt_s[0]_i_2_n_0 ;
  wire [31:0]freq_cnt_s_reg;
  wire \freq_cnt_s_reg[0]_i_1_n_0 ;
  wire \freq_cnt_s_reg[0]_i_1_n_1 ;
  wire \freq_cnt_s_reg[0]_i_1_n_2 ;
  wire \freq_cnt_s_reg[0]_i_1_n_3 ;
  wire \freq_cnt_s_reg[0]_i_1_n_4 ;
  wire \freq_cnt_s_reg[0]_i_1_n_5 ;
  wire \freq_cnt_s_reg[0]_i_1_n_6 ;
  wire \freq_cnt_s_reg[0]_i_1_n_7 ;
  wire \freq_cnt_s_reg[12]_i_1_n_0 ;
  wire \freq_cnt_s_reg[12]_i_1_n_1 ;
  wire \freq_cnt_s_reg[12]_i_1_n_2 ;
  wire \freq_cnt_s_reg[12]_i_1_n_3 ;
  wire \freq_cnt_s_reg[12]_i_1_n_4 ;
  wire \freq_cnt_s_reg[12]_i_1_n_5 ;
  wire \freq_cnt_s_reg[12]_i_1_n_6 ;
  wire \freq_cnt_s_reg[12]_i_1_n_7 ;
  wire \freq_cnt_s_reg[16]_i_1_n_0 ;
  wire \freq_cnt_s_reg[16]_i_1_n_1 ;
  wire \freq_cnt_s_reg[16]_i_1_n_2 ;
  wire \freq_cnt_s_reg[16]_i_1_n_3 ;
  wire \freq_cnt_s_reg[16]_i_1_n_4 ;
  wire \freq_cnt_s_reg[16]_i_1_n_5 ;
  wire \freq_cnt_s_reg[16]_i_1_n_6 ;
  wire \freq_cnt_s_reg[16]_i_1_n_7 ;
  wire \freq_cnt_s_reg[20]_i_1_n_0 ;
  wire \freq_cnt_s_reg[20]_i_1_n_1 ;
  wire \freq_cnt_s_reg[20]_i_1_n_2 ;
  wire \freq_cnt_s_reg[20]_i_1_n_3 ;
  wire \freq_cnt_s_reg[20]_i_1_n_4 ;
  wire \freq_cnt_s_reg[20]_i_1_n_5 ;
  wire \freq_cnt_s_reg[20]_i_1_n_6 ;
  wire \freq_cnt_s_reg[20]_i_1_n_7 ;
  wire \freq_cnt_s_reg[24]_i_1_n_0 ;
  wire \freq_cnt_s_reg[24]_i_1_n_1 ;
  wire \freq_cnt_s_reg[24]_i_1_n_2 ;
  wire \freq_cnt_s_reg[24]_i_1_n_3 ;
  wire \freq_cnt_s_reg[24]_i_1_n_4 ;
  wire \freq_cnt_s_reg[24]_i_1_n_5 ;
  wire \freq_cnt_s_reg[24]_i_1_n_6 ;
  wire \freq_cnt_s_reg[24]_i_1_n_7 ;
  wire \freq_cnt_s_reg[28]_i_1_n_1 ;
  wire \freq_cnt_s_reg[28]_i_1_n_2 ;
  wire \freq_cnt_s_reg[28]_i_1_n_3 ;
  wire \freq_cnt_s_reg[28]_i_1_n_4 ;
  wire \freq_cnt_s_reg[28]_i_1_n_5 ;
  wire \freq_cnt_s_reg[28]_i_1_n_6 ;
  wire \freq_cnt_s_reg[28]_i_1_n_7 ;
  wire \freq_cnt_s_reg[4]_i_1_n_0 ;
  wire \freq_cnt_s_reg[4]_i_1_n_1 ;
  wire \freq_cnt_s_reg[4]_i_1_n_2 ;
  wire \freq_cnt_s_reg[4]_i_1_n_3 ;
  wire \freq_cnt_s_reg[4]_i_1_n_4 ;
  wire \freq_cnt_s_reg[4]_i_1_n_5 ;
  wire \freq_cnt_s_reg[4]_i_1_n_6 ;
  wire \freq_cnt_s_reg[4]_i_1_n_7 ;
  wire \freq_cnt_s_reg[8]_i_1_n_0 ;
  wire \freq_cnt_s_reg[8]_i_1_n_1 ;
  wire \freq_cnt_s_reg[8]_i_1_n_2 ;
  wire \freq_cnt_s_reg[8]_i_1_n_3 ;
  wire \freq_cnt_s_reg[8]_i_1_n_4 ;
  wire \freq_cnt_s_reg[8]_i_1_n_5 ;
  wire \freq_cnt_s_reg[8]_i_1_n_6 ;
  wire \freq_cnt_s_reg[8]_i_1_n_7 ;
  wire freq_trig_i_1_n_0;
  wire [0:0]freq_trig_reg_0;
  wire geqOp;
  wire geqOp_carry__0_i_1_n_0;
  wire geqOp_carry__0_i_2_n_0;
  wire geqOp_carry__0_i_3_n_0;
  wire geqOp_carry__0_i_4_n_0;
  wire geqOp_carry__0_i_5_n_0;
  wire geqOp_carry__0_i_6_n_0;
  wire geqOp_carry__0_i_7_n_0;
  wire geqOp_carry__0_i_8_n_0;
  wire geqOp_carry__0_n_0;
  wire geqOp_carry__0_n_1;
  wire geqOp_carry__0_n_2;
  wire geqOp_carry__0_n_3;
  wire geqOp_carry__1_i_1_n_0;
  wire geqOp_carry__1_i_2_n_0;
  wire geqOp_carry__1_i_3_n_0;
  wire geqOp_carry__1_i_4_n_0;
  wire geqOp_carry__1_i_5_n_0;
  wire geqOp_carry__1_i_6_n_0;
  wire geqOp_carry__1_i_7_n_0;
  wire geqOp_carry__1_i_8_n_0;
  wire geqOp_carry__1_n_0;
  wire geqOp_carry__1_n_1;
  wire geqOp_carry__1_n_2;
  wire geqOp_carry__1_n_3;
  wire geqOp_carry__2_i_1_n_0;
  wire geqOp_carry__2_i_2_n_0;
  wire geqOp_carry__2_i_3_n_0;
  wire geqOp_carry__2_i_4_n_0;
  wire geqOp_carry__2_i_5_n_0;
  wire geqOp_carry__2_i_6_n_0;
  wire geqOp_carry__2_i_7_n_0;
  wire geqOp_carry__2_i_8_n_0;
  wire geqOp_carry__2_n_0;
  wire geqOp_carry__2_n_1;
  wire geqOp_carry__2_n_2;
  wire geqOp_carry__2_n_3;
  wire geqOp_carry__3_i_1_n_0;
  wire geqOp_carry_i_1_n_0;
  wire geqOp_carry_i_2_n_0;
  wire geqOp_carry_i_3_n_0;
  wire geqOp_carry_i_4_n_0;
  wire geqOp_carry_i_5_n_0;
  wire geqOp_carry_i_6_n_0;
  wire geqOp_carry_i_7_n_0;
  wire geqOp_carry_i_8_n_0;
  wire geqOp_carry_n_0;
  wire geqOp_carry_n_1;
  wire geqOp_carry_n_2;
  wire geqOp_carry_n_3;
  wire \geqOp_inferred__0/i__carry__0_n_0 ;
  wire \geqOp_inferred__0/i__carry__0_n_1 ;
  wire \geqOp_inferred__0/i__carry__0_n_2 ;
  wire \geqOp_inferred__0/i__carry__0_n_3 ;
  wire \geqOp_inferred__0/i__carry__1_n_0 ;
  wire \geqOp_inferred__0/i__carry__1_n_1 ;
  wire \geqOp_inferred__0/i__carry__1_n_2 ;
  wire \geqOp_inferred__0/i__carry__1_n_3 ;
  wire \geqOp_inferred__0/i__carry__2_n_0 ;
  wire \geqOp_inferred__0/i__carry__2_n_1 ;
  wire \geqOp_inferred__0/i__carry__2_n_2 ;
  wire \geqOp_inferred__0/i__carry__2_n_3 ;
  wire \geqOp_inferred__0/i__carry__3_n_3 ;
  wire \geqOp_inferred__0/i__carry_n_0 ;
  wire \geqOp_inferred__0/i__carry_n_1 ;
  wire \geqOp_inferred__0/i__carry_n_2 ;
  wire \geqOp_inferred__0/i__carry_n_3 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1__2_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__2_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__2_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__3_i_1__1_n_0;
  wire i__carry__3_i_1__2_n_0;
  wire i__carry__3_i_2__0_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [31:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1__0_n_0;
  wire minusOp_carry__2_i_2__0_n_0;
  wire minusOp_carry__2_i_3__0_n_0;
  wire minusOp_carry__2_i_4__0_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__3_i_1__0_n_0;
  wire minusOp_carry__3_i_2__0_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_i_4_n_0;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__5_i_1_n_0;
  wire minusOp_carry__5_i_2_n_0;
  wire minusOp_carry__5_i_3_n_0;
  wire minusOp_carry__5_i_4_n_0;
  wire minusOp_carry__5_n_0;
  wire minusOp_carry__5_n_1;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry__6_i_1_n_0;
  wire minusOp_carry__6_i_2_n_0;
  wire minusOp_carry__6_i_3_n_0;
  wire minusOp_carry__6_n_2;
  wire minusOp_carry__6_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__0_n_4 ;
  wire \minusOp_inferred__0/i__carry__0_n_5 ;
  wire \minusOp_inferred__0/i__carry__0_n_6 ;
  wire \minusOp_inferred__0/i__carry__0_n_7 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_4 ;
  wire \minusOp_inferred__0/i__carry__1_n_5 ;
  wire \minusOp_inferred__0/i__carry__1_n_6 ;
  wire \minusOp_inferred__0/i__carry__1_n_7 ;
  wire \minusOp_inferred__0/i__carry__2_n_0 ;
  wire \minusOp_inferred__0/i__carry__2_n_1 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_4 ;
  wire \minusOp_inferred__0/i__carry__2_n_5 ;
  wire \minusOp_inferred__0/i__carry__2_n_6 ;
  wire \minusOp_inferred__0/i__carry__2_n_7 ;
  wire \minusOp_inferred__0/i__carry__3_n_0 ;
  wire \minusOp_inferred__0/i__carry__3_n_1 ;
  wire \minusOp_inferred__0/i__carry__3_n_2 ;
  wire \minusOp_inferred__0/i__carry__3_n_3 ;
  wire \minusOp_inferred__0/i__carry__3_n_4 ;
  wire \minusOp_inferred__0/i__carry__3_n_5 ;
  wire \minusOp_inferred__0/i__carry__3_n_6 ;
  wire \minusOp_inferred__0/i__carry__3_n_7 ;
  wire \minusOp_inferred__0/i__carry__4_n_0 ;
  wire \minusOp_inferred__0/i__carry__4_n_1 ;
  wire \minusOp_inferred__0/i__carry__4_n_2 ;
  wire \minusOp_inferred__0/i__carry__4_n_3 ;
  wire \minusOp_inferred__0/i__carry__4_n_4 ;
  wire \minusOp_inferred__0/i__carry__4_n_5 ;
  wire \minusOp_inferred__0/i__carry__4_n_6 ;
  wire \minusOp_inferred__0/i__carry__4_n_7 ;
  wire \minusOp_inferred__0/i__carry__5_n_0 ;
  wire \minusOp_inferred__0/i__carry__5_n_1 ;
  wire \minusOp_inferred__0/i__carry__5_n_2 ;
  wire \minusOp_inferred__0/i__carry__5_n_3 ;
  wire \minusOp_inferred__0/i__carry__5_n_4 ;
  wire \minusOp_inferred__0/i__carry__5_n_5 ;
  wire \minusOp_inferred__0/i__carry__5_n_6 ;
  wire \minusOp_inferred__0/i__carry__5_n_7 ;
  wire [31:0]\minusOp_inferred__0/i__carry__6_0 ;
  wire \minusOp_inferred__0/i__carry__6_n_2 ;
  wire \minusOp_inferred__0/i__carry__6_n_3 ;
  wire \minusOp_inferred__0/i__carry__6_n_5 ;
  wire \minusOp_inferred__0/i__carry__6_n_6 ;
  wire \minusOp_inferred__0/i__carry__6_n_7 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_4 ;
  wire \minusOp_inferred__0/i__carry_n_5 ;
  wire \minusOp_inferred__0/i__carry_n_6 ;
  wire \minusOp_inferred__0/i__carry_n_7 ;
  wire s00_axi_aclk;
  wire [3:3]\NLW_freq_cnt_s_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_geqOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_geqOp_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__3_O_UNCONNECTED;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_geqOp_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__3_O_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \freq_cnt_s[0]_i_2 
       (.I0(freq_cnt_s_reg[0]),
        .O(\freq_cnt_s[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[0]_i_1_n_7 ),
        .Q(freq_cnt_s_reg[0]),
        .R(freq_trig_i_1_n_0));
  CARRY4 \freq_cnt_s_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\freq_cnt_s_reg[0]_i_1_n_0 ,\freq_cnt_s_reg[0]_i_1_n_1 ,\freq_cnt_s_reg[0]_i_1_n_2 ,\freq_cnt_s_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\freq_cnt_s_reg[0]_i_1_n_4 ,\freq_cnt_s_reg[0]_i_1_n_5 ,\freq_cnt_s_reg[0]_i_1_n_6 ,\freq_cnt_s_reg[0]_i_1_n_7 }),
        .S({freq_cnt_s_reg[3:1],\freq_cnt_s[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[8]_i_1_n_5 ),
        .Q(freq_cnt_s_reg[10]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[8]_i_1_n_4 ),
        .Q(freq_cnt_s_reg[11]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[12]_i_1_n_7 ),
        .Q(freq_cnt_s_reg[12]),
        .R(freq_trig_i_1_n_0));
  CARRY4 \freq_cnt_s_reg[12]_i_1 
       (.CI(\freq_cnt_s_reg[8]_i_1_n_0 ),
        .CO({\freq_cnt_s_reg[12]_i_1_n_0 ,\freq_cnt_s_reg[12]_i_1_n_1 ,\freq_cnt_s_reg[12]_i_1_n_2 ,\freq_cnt_s_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[12]_i_1_n_4 ,\freq_cnt_s_reg[12]_i_1_n_5 ,\freq_cnt_s_reg[12]_i_1_n_6 ,\freq_cnt_s_reg[12]_i_1_n_7 }),
        .S(freq_cnt_s_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[12]_i_1_n_6 ),
        .Q(freq_cnt_s_reg[13]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[12]_i_1_n_5 ),
        .Q(freq_cnt_s_reg[14]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[12]_i_1_n_4 ),
        .Q(freq_cnt_s_reg[15]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[16]_i_1_n_7 ),
        .Q(freq_cnt_s_reg[16]),
        .R(freq_trig_i_1_n_0));
  CARRY4 \freq_cnt_s_reg[16]_i_1 
       (.CI(\freq_cnt_s_reg[12]_i_1_n_0 ),
        .CO({\freq_cnt_s_reg[16]_i_1_n_0 ,\freq_cnt_s_reg[16]_i_1_n_1 ,\freq_cnt_s_reg[16]_i_1_n_2 ,\freq_cnt_s_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[16]_i_1_n_4 ,\freq_cnt_s_reg[16]_i_1_n_5 ,\freq_cnt_s_reg[16]_i_1_n_6 ,\freq_cnt_s_reg[16]_i_1_n_7 }),
        .S(freq_cnt_s_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[16]_i_1_n_6 ),
        .Q(freq_cnt_s_reg[17]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[16]_i_1_n_5 ),
        .Q(freq_cnt_s_reg[18]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[16]_i_1_n_4 ),
        .Q(freq_cnt_s_reg[19]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[0]_i_1_n_6 ),
        .Q(freq_cnt_s_reg[1]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[20]_i_1_n_7 ),
        .Q(freq_cnt_s_reg[20]),
        .R(freq_trig_i_1_n_0));
  CARRY4 \freq_cnt_s_reg[20]_i_1 
       (.CI(\freq_cnt_s_reg[16]_i_1_n_0 ),
        .CO({\freq_cnt_s_reg[20]_i_1_n_0 ,\freq_cnt_s_reg[20]_i_1_n_1 ,\freq_cnt_s_reg[20]_i_1_n_2 ,\freq_cnt_s_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[20]_i_1_n_4 ,\freq_cnt_s_reg[20]_i_1_n_5 ,\freq_cnt_s_reg[20]_i_1_n_6 ,\freq_cnt_s_reg[20]_i_1_n_7 }),
        .S(freq_cnt_s_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[20]_i_1_n_6 ),
        .Q(freq_cnt_s_reg[21]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[20]_i_1_n_5 ),
        .Q(freq_cnt_s_reg[22]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[20]_i_1_n_4 ),
        .Q(freq_cnt_s_reg[23]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[24]_i_1_n_7 ),
        .Q(freq_cnt_s_reg[24]),
        .R(freq_trig_i_1_n_0));
  CARRY4 \freq_cnt_s_reg[24]_i_1 
       (.CI(\freq_cnt_s_reg[20]_i_1_n_0 ),
        .CO({\freq_cnt_s_reg[24]_i_1_n_0 ,\freq_cnt_s_reg[24]_i_1_n_1 ,\freq_cnt_s_reg[24]_i_1_n_2 ,\freq_cnt_s_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[24]_i_1_n_4 ,\freq_cnt_s_reg[24]_i_1_n_5 ,\freq_cnt_s_reg[24]_i_1_n_6 ,\freq_cnt_s_reg[24]_i_1_n_7 }),
        .S(freq_cnt_s_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[24]_i_1_n_6 ),
        .Q(freq_cnt_s_reg[25]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[24]_i_1_n_5 ),
        .Q(freq_cnt_s_reg[26]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[24]_i_1_n_4 ),
        .Q(freq_cnt_s_reg[27]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[28]_i_1_n_7 ),
        .Q(freq_cnt_s_reg[28]),
        .R(freq_trig_i_1_n_0));
  CARRY4 \freq_cnt_s_reg[28]_i_1 
       (.CI(\freq_cnt_s_reg[24]_i_1_n_0 ),
        .CO({\NLW_freq_cnt_s_reg[28]_i_1_CO_UNCONNECTED [3],\freq_cnt_s_reg[28]_i_1_n_1 ,\freq_cnt_s_reg[28]_i_1_n_2 ,\freq_cnt_s_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[28]_i_1_n_4 ,\freq_cnt_s_reg[28]_i_1_n_5 ,\freq_cnt_s_reg[28]_i_1_n_6 ,\freq_cnt_s_reg[28]_i_1_n_7 }),
        .S(freq_cnt_s_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[28]_i_1_n_6 ),
        .Q(freq_cnt_s_reg[29]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[0]_i_1_n_5 ),
        .Q(freq_cnt_s_reg[2]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[28]_i_1_n_5 ),
        .Q(freq_cnt_s_reg[30]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[28]_i_1_n_4 ),
        .Q(freq_cnt_s_reg[31]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[0]_i_1_n_4 ),
        .Q(freq_cnt_s_reg[3]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[4]_i_1_n_7 ),
        .Q(freq_cnt_s_reg[4]),
        .R(freq_trig_i_1_n_0));
  CARRY4 \freq_cnt_s_reg[4]_i_1 
       (.CI(\freq_cnt_s_reg[0]_i_1_n_0 ),
        .CO({\freq_cnt_s_reg[4]_i_1_n_0 ,\freq_cnt_s_reg[4]_i_1_n_1 ,\freq_cnt_s_reg[4]_i_1_n_2 ,\freq_cnt_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[4]_i_1_n_4 ,\freq_cnt_s_reg[4]_i_1_n_5 ,\freq_cnt_s_reg[4]_i_1_n_6 ,\freq_cnt_s_reg[4]_i_1_n_7 }),
        .S(freq_cnt_s_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[4]_i_1_n_6 ),
        .Q(freq_cnt_s_reg[5]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[4]_i_1_n_5 ),
        .Q(freq_cnt_s_reg[6]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[4]_i_1_n_4 ),
        .Q(freq_cnt_s_reg[7]),
        .R(freq_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[8]_i_1_n_7 ),
        .Q(freq_cnt_s_reg[8]),
        .R(freq_trig_i_1_n_0));
  CARRY4 \freq_cnt_s_reg[8]_i_1 
       (.CI(\freq_cnt_s_reg[4]_i_1_n_0 ),
        .CO({\freq_cnt_s_reg[8]_i_1_n_0 ,\freq_cnt_s_reg[8]_i_1_n_1 ,\freq_cnt_s_reg[8]_i_1_n_2 ,\freq_cnt_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[8]_i_1_n_4 ,\freq_cnt_s_reg[8]_i_1_n_5 ,\freq_cnt_s_reg[8]_i_1_n_6 ,\freq_cnt_s_reg[8]_i_1_n_7 }),
        .S(freq_cnt_s_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[8]_i_1_n_6 ),
        .Q(freq_cnt_s_reg[9]),
        .R(freq_trig_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    freq_trig_i_1
       (.I0(\geqOp_inferred__0/i__carry__3_n_3 ),
        .I1(freq_trig_reg_0),
        .I2(geqOp),
        .O(freq_trig_i_1_n_0));
  FDRE freq_trig_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(freq_trig_i_1_n_0),
        .Q(E),
        .R(1'b0));
  CARRY4 geqOp_carry
       (.CI(1'b0),
        .CO({geqOp_carry_n_0,geqOp_carry_n_1,geqOp_carry_n_2,geqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({geqOp_carry_i_1_n_0,geqOp_carry_i_2_n_0,geqOp_carry_i_3_n_0,geqOp_carry_i_4_n_0}),
        .O(NLW_geqOp_carry_O_UNCONNECTED[3:0]),
        .S({geqOp_carry_i_5_n_0,geqOp_carry_i_6_n_0,geqOp_carry_i_7_n_0,geqOp_carry_i_8_n_0}));
  CARRY4 geqOp_carry__0
       (.CI(geqOp_carry_n_0),
        .CO({geqOp_carry__0_n_0,geqOp_carry__0_n_1,geqOp_carry__0_n_2,geqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({geqOp_carry__0_i_1_n_0,geqOp_carry__0_i_2_n_0,geqOp_carry__0_i_3_n_0,geqOp_carry__0_i_4_n_0}),
        .O(NLW_geqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({geqOp_carry__0_i_5_n_0,geqOp_carry__0_i_6_n_0,geqOp_carry__0_i_7_n_0,geqOp_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__0_i_1
       (.I0(freq_cnt_s_reg[15]),
        .I1(minusOp[15]),
        .I2(freq_cnt_s_reg[14]),
        .I3(minusOp[14]),
        .O(geqOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__0_i_2
       (.I0(freq_cnt_s_reg[13]),
        .I1(minusOp[13]),
        .I2(freq_cnt_s_reg[12]),
        .I3(minusOp[12]),
        .O(geqOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__0_i_3
       (.I0(freq_cnt_s_reg[11]),
        .I1(minusOp[11]),
        .I2(freq_cnt_s_reg[10]),
        .I3(minusOp[10]),
        .O(geqOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__0_i_4
       (.I0(freq_cnt_s_reg[9]),
        .I1(minusOp[9]),
        .I2(freq_cnt_s_reg[8]),
        .I3(minusOp[8]),
        .O(geqOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_5
       (.I0(minusOp[15]),
        .I1(freq_cnt_s_reg[15]),
        .I2(minusOp[14]),
        .I3(freq_cnt_s_reg[14]),
        .O(geqOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_6
       (.I0(minusOp[13]),
        .I1(freq_cnt_s_reg[13]),
        .I2(minusOp[12]),
        .I3(freq_cnt_s_reg[12]),
        .O(geqOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_7
       (.I0(minusOp[11]),
        .I1(freq_cnt_s_reg[11]),
        .I2(minusOp[10]),
        .I3(freq_cnt_s_reg[10]),
        .O(geqOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_8
       (.I0(minusOp[9]),
        .I1(freq_cnt_s_reg[9]),
        .I2(minusOp[8]),
        .I3(freq_cnt_s_reg[8]),
        .O(geqOp_carry__0_i_8_n_0));
  CARRY4 geqOp_carry__1
       (.CI(geqOp_carry__0_n_0),
        .CO({geqOp_carry__1_n_0,geqOp_carry__1_n_1,geqOp_carry__1_n_2,geqOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({geqOp_carry__1_i_1_n_0,geqOp_carry__1_i_2_n_0,geqOp_carry__1_i_3_n_0,geqOp_carry__1_i_4_n_0}),
        .O(NLW_geqOp_carry__1_O_UNCONNECTED[3:0]),
        .S({geqOp_carry__1_i_5_n_0,geqOp_carry__1_i_6_n_0,geqOp_carry__1_i_7_n_0,geqOp_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__1_i_1
       (.I0(freq_cnt_s_reg[23]),
        .I1(minusOp[23]),
        .I2(freq_cnt_s_reg[22]),
        .I3(minusOp[22]),
        .O(geqOp_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__1_i_2
       (.I0(freq_cnt_s_reg[21]),
        .I1(minusOp[21]),
        .I2(freq_cnt_s_reg[20]),
        .I3(minusOp[20]),
        .O(geqOp_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__1_i_3
       (.I0(freq_cnt_s_reg[19]),
        .I1(minusOp[19]),
        .I2(freq_cnt_s_reg[18]),
        .I3(minusOp[18]),
        .O(geqOp_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__1_i_4
       (.I0(freq_cnt_s_reg[17]),
        .I1(minusOp[17]),
        .I2(freq_cnt_s_reg[16]),
        .I3(minusOp[16]),
        .O(geqOp_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__1_i_5
       (.I0(minusOp[23]),
        .I1(freq_cnt_s_reg[23]),
        .I2(minusOp[22]),
        .I3(freq_cnt_s_reg[22]),
        .O(geqOp_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__1_i_6
       (.I0(minusOp[21]),
        .I1(freq_cnt_s_reg[21]),
        .I2(minusOp[20]),
        .I3(freq_cnt_s_reg[20]),
        .O(geqOp_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__1_i_7
       (.I0(minusOp[19]),
        .I1(freq_cnt_s_reg[19]),
        .I2(minusOp[18]),
        .I3(freq_cnt_s_reg[18]),
        .O(geqOp_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__1_i_8
       (.I0(minusOp[17]),
        .I1(freq_cnt_s_reg[17]),
        .I2(minusOp[16]),
        .I3(freq_cnt_s_reg[16]),
        .O(geqOp_carry__1_i_8_n_0));
  CARRY4 geqOp_carry__2
       (.CI(geqOp_carry__1_n_0),
        .CO({geqOp_carry__2_n_0,geqOp_carry__2_n_1,geqOp_carry__2_n_2,geqOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({geqOp_carry__2_i_1_n_0,geqOp_carry__2_i_2_n_0,geqOp_carry__2_i_3_n_0,geqOp_carry__2_i_4_n_0}),
        .O(NLW_geqOp_carry__2_O_UNCONNECTED[3:0]),
        .S({geqOp_carry__2_i_5_n_0,geqOp_carry__2_i_6_n_0,geqOp_carry__2_i_7_n_0,geqOp_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__2_i_1
       (.I0(freq_cnt_s_reg[31]),
        .I1(minusOp[31]),
        .I2(freq_cnt_s_reg[30]),
        .I3(minusOp[30]),
        .O(geqOp_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__2_i_2
       (.I0(freq_cnt_s_reg[29]),
        .I1(minusOp[29]),
        .I2(freq_cnt_s_reg[28]),
        .I3(minusOp[28]),
        .O(geqOp_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__2_i_3
       (.I0(freq_cnt_s_reg[27]),
        .I1(minusOp[27]),
        .I2(freq_cnt_s_reg[26]),
        .I3(minusOp[26]),
        .O(geqOp_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__2_i_4
       (.I0(freq_cnt_s_reg[25]),
        .I1(minusOp[25]),
        .I2(freq_cnt_s_reg[24]),
        .I3(minusOp[24]),
        .O(geqOp_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__2_i_5
       (.I0(minusOp[31]),
        .I1(freq_cnt_s_reg[31]),
        .I2(minusOp[30]),
        .I3(freq_cnt_s_reg[30]),
        .O(geqOp_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__2_i_6
       (.I0(minusOp[29]),
        .I1(freq_cnt_s_reg[29]),
        .I2(minusOp[28]),
        .I3(freq_cnt_s_reg[28]),
        .O(geqOp_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__2_i_7
       (.I0(minusOp[27]),
        .I1(freq_cnt_s_reg[27]),
        .I2(minusOp[26]),
        .I3(freq_cnt_s_reg[26]),
        .O(geqOp_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__2_i_8
       (.I0(minusOp[25]),
        .I1(freq_cnt_s_reg[25]),
        .I2(minusOp[24]),
        .I3(freq_cnt_s_reg[24]),
        .O(geqOp_carry__2_i_8_n_0));
  CARRY4 geqOp_carry__3
       (.CI(geqOp_carry__2_n_0),
        .CO({NLW_geqOp_carry__3_CO_UNCONNECTED[3:1],geqOp}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_geqOp_carry__3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,geqOp_carry__3_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    geqOp_carry__3_i_1
       (.I0(freq_cnt_s_reg[31]),
        .O(geqOp_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry_i_1
       (.I0(freq_cnt_s_reg[7]),
        .I1(minusOp[7]),
        .I2(freq_cnt_s_reg[6]),
        .I3(minusOp[6]),
        .O(geqOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry_i_2
       (.I0(freq_cnt_s_reg[5]),
        .I1(minusOp[5]),
        .I2(freq_cnt_s_reg[4]),
        .I3(minusOp[4]),
        .O(geqOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry_i_3
       (.I0(freq_cnt_s_reg[3]),
        .I1(minusOp[3]),
        .I2(freq_cnt_s_reg[2]),
        .I3(minusOp[2]),
        .O(geqOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    geqOp_carry_i_4
       (.I0(freq_cnt_s_reg[1]),
        .I1(minusOp[1]),
        .I2(Q[0]),
        .I3(freq_cnt_s_reg[0]),
        .O(geqOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_5
       (.I0(minusOp[7]),
        .I1(freq_cnt_s_reg[7]),
        .I2(minusOp[6]),
        .I3(freq_cnt_s_reg[6]),
        .O(geqOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_6
       (.I0(minusOp[5]),
        .I1(freq_cnt_s_reg[5]),
        .I2(minusOp[4]),
        .I3(freq_cnt_s_reg[4]),
        .O(geqOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_7
       (.I0(minusOp[3]),
        .I1(freq_cnt_s_reg[3]),
        .I2(minusOp[2]),
        .I3(freq_cnt_s_reg[2]),
        .O(geqOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    geqOp_carry_i_8
       (.I0(minusOp[1]),
        .I1(freq_cnt_s_reg[1]),
        .I2(Q[0]),
        .I3(freq_cnt_s_reg[0]),
        .O(geqOp_carry_i_8_n_0));
  CARRY4 \geqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\geqOp_inferred__0/i__carry_n_0 ,\geqOp_inferred__0/i__carry_n_1 ,\geqOp_inferred__0/i__carry_n_2 ,\geqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__0 
       (.CI(\geqOp_inferred__0/i__carry_n_0 ),
        .CO({\geqOp_inferred__0/i__carry__0_n_0 ,\geqOp_inferred__0/i__carry__0_n_1 ,\geqOp_inferred__0/i__carry__0_n_2 ,\geqOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__1 
       (.CI(\geqOp_inferred__0/i__carry__0_n_0 ),
        .CO({\geqOp_inferred__0/i__carry__1_n_0 ,\geqOp_inferred__0/i__carry__1_n_1 ,\geqOp_inferred__0/i__carry__1_n_2 ,\geqOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__2 
       (.CI(\geqOp_inferred__0/i__carry__1_n_0 ),
        .CO({\geqOp_inferred__0/i__carry__2_n_0 ,\geqOp_inferred__0/i__carry__2_n_1 ,\geqOp_inferred__0/i__carry__2_n_2 ,\geqOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__3 
       (.CI(\geqOp_inferred__0/i__carry__2_n_0 ),
        .CO({\NLW_geqOp_inferred__0/i__carry__3_CO_UNCONNECTED [3:1],\geqOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_geqOp_inferred__0/i__carry__3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__3_i_1__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(\minusOp_inferred__0/i__carry__6_0 [8]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__0
       (.I0(freq_cnt_s_reg[15]),
        .I1(\minusOp_inferred__0/i__carry__2_n_5 ),
        .I2(freq_cnt_s_reg[14]),
        .I3(\minusOp_inferred__0/i__carry__2_n_6 ),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [7]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2__0
       (.I0(freq_cnt_s_reg[13]),
        .I1(\minusOp_inferred__0/i__carry__2_n_7 ),
        .I2(freq_cnt_s_reg[12]),
        .I3(\minusOp_inferred__0/i__carry__1_n_4 ),
        .O(i__carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(\minusOp_inferred__0/i__carry__6_0 [6]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3__0
       (.I0(freq_cnt_s_reg[11]),
        .I1(\minusOp_inferred__0/i__carry__1_n_5 ),
        .I2(freq_cnt_s_reg[10]),
        .I3(\minusOp_inferred__0/i__carry__1_n_6 ),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(\minusOp_inferred__0/i__carry__6_0 [5]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4__0
       (.I0(freq_cnt_s_reg[9]),
        .I1(\minusOp_inferred__0/i__carry__1_n_7 ),
        .I2(freq_cnt_s_reg[8]),
        .I3(\minusOp_inferred__0/i__carry__0_n_4 ),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\minusOp_inferred__0/i__carry__2_n_5 ),
        .I1(freq_cnt_s_reg[15]),
        .I2(\minusOp_inferred__0/i__carry__2_n_6 ),
        .I3(freq_cnt_s_reg[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\minusOp_inferred__0/i__carry__2_n_7 ),
        .I1(freq_cnt_s_reg[13]),
        .I2(\minusOp_inferred__0/i__carry__1_n_4 ),
        .I3(freq_cnt_s_reg[12]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\minusOp_inferred__0/i__carry__1_n_5 ),
        .I1(freq_cnt_s_reg[11]),
        .I2(\minusOp_inferred__0/i__carry__1_n_6 ),
        .I3(freq_cnt_s_reg[10]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\minusOp_inferred__0/i__carry__1_n_7 ),
        .I1(freq_cnt_s_reg[9]),
        .I2(\minusOp_inferred__0/i__carry__0_n_4 ),
        .I3(freq_cnt_s_reg[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_1
       (.I0(freq_cnt_s_reg[23]),
        .I1(\minusOp_inferred__0/i__carry__4_n_5 ),
        .I2(freq_cnt_s_reg[22]),
        .I3(\minusOp_inferred__0/i__carry__4_n_6 ),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__1
       (.I0(\minusOp_inferred__0/i__carry__6_0 [12]),
        .O(i__carry__1_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [11]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_2__0
       (.I0(freq_cnt_s_reg[21]),
        .I1(\minusOp_inferred__0/i__carry__4_n_7 ),
        .I2(freq_cnt_s_reg[20]),
        .I3(\minusOp_inferred__0/i__carry__3_n_4 ),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(\minusOp_inferred__0/i__carry__6_0 [10]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_3__0
       (.I0(freq_cnt_s_reg[19]),
        .I1(\minusOp_inferred__0/i__carry__3_n_5 ),
        .I2(freq_cnt_s_reg[18]),
        .I3(\minusOp_inferred__0/i__carry__3_n_6 ),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(\minusOp_inferred__0/i__carry__6_0 [9]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4__0
       (.I0(freq_cnt_s_reg[17]),
        .I1(\minusOp_inferred__0/i__carry__3_n_7 ),
        .I2(freq_cnt_s_reg[16]),
        .I3(\minusOp_inferred__0/i__carry__2_n_4 ),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(\minusOp_inferred__0/i__carry__4_n_5 ),
        .I1(freq_cnt_s_reg[23]),
        .I2(\minusOp_inferred__0/i__carry__4_n_6 ),
        .I3(freq_cnt_s_reg[22]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(\minusOp_inferred__0/i__carry__4_n_7 ),
        .I1(freq_cnt_s_reg[21]),
        .I2(\minusOp_inferred__0/i__carry__3_n_4 ),
        .I3(freq_cnt_s_reg[20]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(\minusOp_inferred__0/i__carry__3_n_5 ),
        .I1(freq_cnt_s_reg[19]),
        .I2(\minusOp_inferred__0/i__carry__3_n_6 ),
        .I3(freq_cnt_s_reg[18]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(\minusOp_inferred__0/i__carry__3_n_7 ),
        .I1(freq_cnt_s_reg[17]),
        .I2(\minusOp_inferred__0/i__carry__2_n_4 ),
        .I3(freq_cnt_s_reg[16]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_1
       (.I0(freq_cnt_s_reg[31]),
        .I1(\minusOp_inferred__0/i__carry__6_n_5 ),
        .I2(freq_cnt_s_reg[30]),
        .I3(\minusOp_inferred__0/i__carry__6_n_6 ),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1__2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [16]),
        .O(i__carry__2_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_2
       (.I0(freq_cnt_s_reg[29]),
        .I1(\minusOp_inferred__0/i__carry__6_n_7 ),
        .I2(freq_cnt_s_reg[28]),
        .I3(\minusOp_inferred__0/i__carry__5_n_4 ),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2__2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [15]),
        .O(i__carry__2_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_3
       (.I0(freq_cnt_s_reg[27]),
        .I1(\minusOp_inferred__0/i__carry__5_n_5 ),
        .I2(freq_cnt_s_reg[26]),
        .I3(\minusOp_inferred__0/i__carry__5_n_6 ),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3__2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [14]),
        .O(i__carry__2_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_4
       (.I0(freq_cnt_s_reg[25]),
        .I1(\minusOp_inferred__0/i__carry__5_n_7 ),
        .I2(freq_cnt_s_reg[24]),
        .I3(\minusOp_inferred__0/i__carry__4_n_4 ),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4__2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [13]),
        .O(i__carry__2_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(\minusOp_inferred__0/i__carry__6_n_5 ),
        .I1(freq_cnt_s_reg[31]),
        .I2(\minusOp_inferred__0/i__carry__6_n_6 ),
        .I3(freq_cnt_s_reg[30]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(\minusOp_inferred__0/i__carry__6_n_7 ),
        .I1(freq_cnt_s_reg[29]),
        .I2(\minusOp_inferred__0/i__carry__5_n_4 ),
        .I3(freq_cnt_s_reg[28]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(\minusOp_inferred__0/i__carry__5_n_5 ),
        .I1(freq_cnt_s_reg[27]),
        .I2(\minusOp_inferred__0/i__carry__5_n_6 ),
        .I3(freq_cnt_s_reg[26]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(\minusOp_inferred__0/i__carry__5_n_7 ),
        .I1(freq_cnt_s_reg[25]),
        .I2(\minusOp_inferred__0/i__carry__4_n_4 ),
        .I3(freq_cnt_s_reg[24]),
        .O(i__carry__2_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1__1
       (.I0(freq_cnt_s_reg[31]),
        .O(i__carry__3_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1__2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [20]),
        .O(i__carry__3_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2__0
       (.I0(\minusOp_inferred__0/i__carry__6_0 [19]),
        .O(i__carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(\minusOp_inferred__0/i__carry__6_0 [18]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(\minusOp_inferred__0/i__carry__6_0 [17]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(\minusOp_inferred__0/i__carry__6_0 [24]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [23]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(\minusOp_inferred__0/i__carry__6_0 [22]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(\minusOp_inferred__0/i__carry__6_0 [21]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(\minusOp_inferred__0/i__carry__6_0 [28]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [27]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(\minusOp_inferred__0/i__carry__6_0 [26]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(\minusOp_inferred__0/i__carry__6_0 [25]),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(\minusOp_inferred__0/i__carry__6_0 [31]),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [30]),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_3
       (.I0(\minusOp_inferred__0/i__carry__6_0 [29]),
        .O(i__carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(\minusOp_inferred__0/i__carry__6_0 [4]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(freq_cnt_s_reg[7]),
        .I1(\minusOp_inferred__0/i__carry__0_n_5 ),
        .I2(freq_cnt_s_reg[6]),
        .I3(\minusOp_inferred__0/i__carry__0_n_6 ),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(\minusOp_inferred__0/i__carry__6_0 [3]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(freq_cnt_s_reg[5]),
        .I1(\minusOp_inferred__0/i__carry__0_n_7 ),
        .I2(freq_cnt_s_reg[4]),
        .I3(\minusOp_inferred__0/i__carry_n_4 ),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(\minusOp_inferred__0/i__carry__6_0 [2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(freq_cnt_s_reg[3]),
        .I1(\minusOp_inferred__0/i__carry_n_5 ),
        .I2(freq_cnt_s_reg[2]),
        .I3(\minusOp_inferred__0/i__carry_n_6 ),
        .O(i__carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(\minusOp_inferred__0/i__carry__6_0 [1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    i__carry_i_4__0
       (.I0(freq_cnt_s_reg[1]),
        .I1(\minusOp_inferred__0/i__carry_n_7 ),
        .I2(\minusOp_inferred__0/i__carry__6_0 [0]),
        .I3(freq_cnt_s_reg[0]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\minusOp_inferred__0/i__carry__0_n_5 ),
        .I1(freq_cnt_s_reg[7]),
        .I2(\minusOp_inferred__0/i__carry__0_n_6 ),
        .I3(freq_cnt_s_reg[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\minusOp_inferred__0/i__carry__0_n_7 ),
        .I1(freq_cnt_s_reg[5]),
        .I2(\minusOp_inferred__0/i__carry_n_4 ),
        .I3(freq_cnt_s_reg[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\minusOp_inferred__0/i__carry_n_5 ),
        .I1(freq_cnt_s_reg[3]),
        .I2(\minusOp_inferred__0/i__carry_n_6 ),
        .I3(freq_cnt_s_reg[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    i__carry_i_8
       (.I0(\minusOp_inferred__0/i__carry_n_7 ),
        .I1(freq_cnt_s_reg[1]),
        .I2(\minusOp_inferred__0/i__carry__6_0 [0]),
        .I3(freq_cnt_s_reg[0]),
        .O(i__carry_i_8_n_0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(Q[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(Q[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(Q[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(Q[5]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(Q[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(Q[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(Q[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(Q[9]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(minusOp[16:13]),
        .S({minusOp_carry__2_i_1__0_n_0,minusOp_carry__2_i_2__0_n_0,minusOp_carry__2_i_3__0_n_0,minusOp_carry__2_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1__0
       (.I0(Q[16]),
        .O(minusOp_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2__0
       (.I0(Q[15]),
        .O(minusOp_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3__0
       (.I0(Q[14]),
        .O(minusOp_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_4__0
       (.I0(Q[13]),
        .O(minusOp_carry__2_i_4__0_n_0));
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(minusOp[20:17]),
        .S({minusOp_carry__3_i_1__0_n_0,minusOp_carry__3_i_2__0_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_1__0
       (.I0(Q[20]),
        .O(minusOp_carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_2__0
       (.I0(Q[19]),
        .O(minusOp_carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_3
       (.I0(Q[18]),
        .O(minusOp_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_4
       (.I0(Q[17]),
        .O(minusOp_carry__3_i_4_n_0));
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(minusOp[24:21]),
        .S({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_1
       (.I0(Q[24]),
        .O(minusOp_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_2
       (.I0(Q[23]),
        .O(minusOp_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_3
       (.I0(Q[22]),
        .O(minusOp_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_4
       (.I0(Q[21]),
        .O(minusOp_carry__4_i_4_n_0));
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(minusOp[28:25]),
        .S({minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0,minusOp_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_1
       (.I0(Q[28]),
        .O(minusOp_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_2
       (.I0(Q[27]),
        .O(minusOp_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_3
       (.I0(Q[26]),
        .O(minusOp_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_4
       (.I0(Q[25]),
        .O(minusOp_carry__5_i_4_n_0));
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({NLW_minusOp_carry__6_CO_UNCONNECTED[3:2],minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[30:29]}),
        .O({NLW_minusOp_carry__6_O_UNCONNECTED[3],minusOp[31:29]}),
        .S({1'b0,minusOp_carry__6_i_1_n_0,minusOp_carry__6_i_2_n_0,minusOp_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_1
       (.I0(Q[31]),
        .O(minusOp_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_2
       (.I0(Q[30]),
        .O(minusOp_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_3
       (.I0(Q[29]),
        .O(minusOp_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(Q[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(Q[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(Q[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(Q[1]),
        .O(minusOp_carry_i_4_n_0));
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(\minusOp_inferred__0/i__carry__6_0 [0]),
        .DI(\minusOp_inferred__0/i__carry__6_0 [4:1]),
        .O({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\minusOp_inferred__0/i__carry__6_0 [8:5]),
        .O({\minusOp_inferred__0/i__carry__0_n_4 ,\minusOp_inferred__0/i__carry__0_n_5 ,\minusOp_inferred__0/i__carry__0_n_6 ,\minusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\minusOp_inferred__0/i__carry__6_0 [12:9]),
        .O({\minusOp_inferred__0/i__carry__1_n_4 ,\minusOp_inferred__0/i__carry__1_n_5 ,\minusOp_inferred__0/i__carry__1_n_6 ,\minusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__2_n_0 ,\minusOp_inferred__0/i__carry__2_n_1 ,\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(\minusOp_inferred__0/i__carry__6_0 [16:13]),
        .O({\minusOp_inferred__0/i__carry__2_n_4 ,\minusOp_inferred__0/i__carry__2_n_5 ,\minusOp_inferred__0/i__carry__2_n_6 ,\minusOp_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1__2_n_0,i__carry__2_i_2__2_n_0,i__carry__2_i_3__2_n_0,i__carry__2_i_4__2_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__3 
       (.CI(\minusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__3_n_0 ,\minusOp_inferred__0/i__carry__3_n_1 ,\minusOp_inferred__0/i__carry__3_n_2 ,\minusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(\minusOp_inferred__0/i__carry__6_0 [20:17]),
        .O({\minusOp_inferred__0/i__carry__3_n_4 ,\minusOp_inferred__0/i__carry__3_n_5 ,\minusOp_inferred__0/i__carry__3_n_6 ,\minusOp_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1__2_n_0,i__carry__3_i_2__0_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__4 
       (.CI(\minusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__4_n_0 ,\minusOp_inferred__0/i__carry__4_n_1 ,\minusOp_inferred__0/i__carry__4_n_2 ,\minusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(\minusOp_inferred__0/i__carry__6_0 [24:21]),
        .O({\minusOp_inferred__0/i__carry__4_n_4 ,\minusOp_inferred__0/i__carry__4_n_5 ,\minusOp_inferred__0/i__carry__4_n_6 ,\minusOp_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__5 
       (.CI(\minusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__5_n_0 ,\minusOp_inferred__0/i__carry__5_n_1 ,\minusOp_inferred__0/i__carry__5_n_2 ,\minusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(\minusOp_inferred__0/i__carry__6_0 [28:25]),
        .O({\minusOp_inferred__0/i__carry__5_n_4 ,\minusOp_inferred__0/i__carry__5_n_5 ,\minusOp_inferred__0/i__carry__5_n_6 ,\minusOp_inferred__0/i__carry__5_n_7 }),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__6 
       (.CI(\minusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\minusOp_inferred__0/i__carry__6_n_2 ,\minusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\minusOp_inferred__0/i__carry__6_0 [30:29]}),
        .O({\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],\minusOp_inferred__0/i__carry__6_n_5 ,\minusOp_inferred__0/i__carry__6_n_6 ,\minusOp_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
endmodule

(* ORIG_REF_NAME = "frequency_trigger" *) 
module mainBD_modulator_axi_ip_0_0_frequency_trigger_0
   (ce_s,
    freq_trig_reg_0,
    E,
    freq_trig_reg_1,
    freq_trig_reg_2,
    s00_axi_aclk,
    Q,
    \minusOp_inferred__0/i__carry__3_0 ,
    \count_v_reg[11] ,
    \count_v_reg[11]_0 ,
    freq_trig_reg_3,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[0]_1 );
  output ce_s;
  output freq_trig_reg_0;
  output [0:0]E;
  output freq_trig_reg_1;
  output freq_trig_reg_2;
  input s00_axi_aclk;
  input [18:0]Q;
  input [18:0]\minusOp_inferred__0/i__carry__3_0 ;
  input \count_v_reg[11] ;
  input \count_v_reg[11]_0 ;
  input [0:0]freq_trig_reg_3;
  input \FSM_sequential_state_reg[1] ;
  input \FSM_sequential_state_reg[1]_0 ;
  input \FSM_sequential_state_reg[0] ;
  input \FSM_sequential_state_reg[1]_1 ;
  input \FSM_sequential_state_reg[0]_0 ;
  input \FSM_sequential_state_reg[0]_1 ;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [18:0]Q;
  wire ce_s;
  wire \count_v_reg[11] ;
  wire \count_v_reg[11]_0 ;
  wire \freq_cnt_s[0]_i_2__0_n_0 ;
  wire [31:0]freq_cnt_s_reg;
  wire \freq_cnt_s_reg[0]_i_1__0_n_0 ;
  wire \freq_cnt_s_reg[0]_i_1__0_n_1 ;
  wire \freq_cnt_s_reg[0]_i_1__0_n_2 ;
  wire \freq_cnt_s_reg[0]_i_1__0_n_3 ;
  wire \freq_cnt_s_reg[0]_i_1__0_n_4 ;
  wire \freq_cnt_s_reg[0]_i_1__0_n_5 ;
  wire \freq_cnt_s_reg[0]_i_1__0_n_6 ;
  wire \freq_cnt_s_reg[0]_i_1__0_n_7 ;
  wire \freq_cnt_s_reg[12]_i_1__0_n_0 ;
  wire \freq_cnt_s_reg[12]_i_1__0_n_1 ;
  wire \freq_cnt_s_reg[12]_i_1__0_n_2 ;
  wire \freq_cnt_s_reg[12]_i_1__0_n_3 ;
  wire \freq_cnt_s_reg[12]_i_1__0_n_4 ;
  wire \freq_cnt_s_reg[12]_i_1__0_n_5 ;
  wire \freq_cnt_s_reg[12]_i_1__0_n_6 ;
  wire \freq_cnt_s_reg[12]_i_1__0_n_7 ;
  wire \freq_cnt_s_reg[16]_i_1__0_n_0 ;
  wire \freq_cnt_s_reg[16]_i_1__0_n_1 ;
  wire \freq_cnt_s_reg[16]_i_1__0_n_2 ;
  wire \freq_cnt_s_reg[16]_i_1__0_n_3 ;
  wire \freq_cnt_s_reg[16]_i_1__0_n_4 ;
  wire \freq_cnt_s_reg[16]_i_1__0_n_5 ;
  wire \freq_cnt_s_reg[16]_i_1__0_n_6 ;
  wire \freq_cnt_s_reg[16]_i_1__0_n_7 ;
  wire \freq_cnt_s_reg[20]_i_1__0_n_0 ;
  wire \freq_cnt_s_reg[20]_i_1__0_n_1 ;
  wire \freq_cnt_s_reg[20]_i_1__0_n_2 ;
  wire \freq_cnt_s_reg[20]_i_1__0_n_3 ;
  wire \freq_cnt_s_reg[20]_i_1__0_n_4 ;
  wire \freq_cnt_s_reg[20]_i_1__0_n_5 ;
  wire \freq_cnt_s_reg[20]_i_1__0_n_6 ;
  wire \freq_cnt_s_reg[20]_i_1__0_n_7 ;
  wire \freq_cnt_s_reg[24]_i_1__0_n_0 ;
  wire \freq_cnt_s_reg[24]_i_1__0_n_1 ;
  wire \freq_cnt_s_reg[24]_i_1__0_n_2 ;
  wire \freq_cnt_s_reg[24]_i_1__0_n_3 ;
  wire \freq_cnt_s_reg[24]_i_1__0_n_4 ;
  wire \freq_cnt_s_reg[24]_i_1__0_n_5 ;
  wire \freq_cnt_s_reg[24]_i_1__0_n_6 ;
  wire \freq_cnt_s_reg[24]_i_1__0_n_7 ;
  wire \freq_cnt_s_reg[28]_i_1__0_n_1 ;
  wire \freq_cnt_s_reg[28]_i_1__0_n_2 ;
  wire \freq_cnt_s_reg[28]_i_1__0_n_3 ;
  wire \freq_cnt_s_reg[28]_i_1__0_n_4 ;
  wire \freq_cnt_s_reg[28]_i_1__0_n_5 ;
  wire \freq_cnt_s_reg[28]_i_1__0_n_6 ;
  wire \freq_cnt_s_reg[28]_i_1__0_n_7 ;
  wire \freq_cnt_s_reg[4]_i_1__0_n_0 ;
  wire \freq_cnt_s_reg[4]_i_1__0_n_1 ;
  wire \freq_cnt_s_reg[4]_i_1__0_n_2 ;
  wire \freq_cnt_s_reg[4]_i_1__0_n_3 ;
  wire \freq_cnt_s_reg[4]_i_1__0_n_4 ;
  wire \freq_cnt_s_reg[4]_i_1__0_n_5 ;
  wire \freq_cnt_s_reg[4]_i_1__0_n_6 ;
  wire \freq_cnt_s_reg[4]_i_1__0_n_7 ;
  wire \freq_cnt_s_reg[8]_i_1__0_n_0 ;
  wire \freq_cnt_s_reg[8]_i_1__0_n_1 ;
  wire \freq_cnt_s_reg[8]_i_1__0_n_2 ;
  wire \freq_cnt_s_reg[8]_i_1__0_n_3 ;
  wire \freq_cnt_s_reg[8]_i_1__0_n_4 ;
  wire \freq_cnt_s_reg[8]_i_1__0_n_5 ;
  wire \freq_cnt_s_reg[8]_i_1__0_n_6 ;
  wire \freq_cnt_s_reg[8]_i_1__0_n_7 ;
  wire freq_trig_i_1__0_n_0;
  wire freq_trig_reg_0;
  wire freq_trig_reg_1;
  wire freq_trig_reg_2;
  wire [0:0]freq_trig_reg_3;
  wire geqOp;
  wire geqOp_carry__0_i_1__0_n_0;
  wire geqOp_carry__0_i_2__0_n_0;
  wire geqOp_carry__0_i_3__0_n_0;
  wire geqOp_carry__0_i_4__0_n_0;
  wire geqOp_carry__0_i_5__0_n_0;
  wire geqOp_carry__0_i_6__0_n_0;
  wire geqOp_carry__0_i_7__0_n_0;
  wire geqOp_carry__0_i_8__0_n_0;
  wire geqOp_carry__0_n_0;
  wire geqOp_carry__0_n_1;
  wire geqOp_carry__0_n_2;
  wire geqOp_carry__0_n_3;
  wire geqOp_carry__1_i_1__0_n_0;
  wire geqOp_carry__1_i_2__0_n_0;
  wire geqOp_carry__1_i_3__0_n_0;
  wire geqOp_carry__1_i_4__0_n_0;
  wire geqOp_carry__1_i_5__0_n_0;
  wire geqOp_carry__1_i_6__0_n_0;
  wire geqOp_carry__1_i_7__0_n_0;
  wire geqOp_carry__1_i_8__0_n_0;
  wire geqOp_carry__1_n_0;
  wire geqOp_carry__1_n_1;
  wire geqOp_carry__1_n_2;
  wire geqOp_carry__1_n_3;
  wire geqOp_carry__2_i_1__0_n_0;
  wire geqOp_carry__2_i_2__0_n_0;
  wire geqOp_carry__2_i_3__0_n_0;
  wire geqOp_carry__2_i_4__0_n_0;
  wire geqOp_carry__2_i_5__0_n_0;
  wire geqOp_carry__2_i_6__0_n_0;
  wire geqOp_carry__2_i_7__0_n_0;
  wire geqOp_carry__2_i_8__0_n_0;
  wire geqOp_carry__2_n_0;
  wire geqOp_carry__2_n_1;
  wire geqOp_carry__2_n_2;
  wire geqOp_carry__2_n_3;
  wire geqOp_carry__3_i_1__0_n_0;
  wire geqOp_carry_i_1__0_n_0;
  wire geqOp_carry_i_2__0_n_0;
  wire geqOp_carry_i_3__0_n_0;
  wire geqOp_carry_i_4__0_n_0;
  wire geqOp_carry_i_5__0_n_0;
  wire geqOp_carry_i_6__0_n_0;
  wire geqOp_carry_i_7__0_n_0;
  wire geqOp_carry_i_8__0_n_0;
  wire geqOp_carry_n_0;
  wire geqOp_carry_n_1;
  wire geqOp_carry_n_2;
  wire geqOp_carry_n_3;
  wire \geqOp_inferred__0/i__carry__0_n_0 ;
  wire \geqOp_inferred__0/i__carry__0_n_1 ;
  wire \geqOp_inferred__0/i__carry__0_n_2 ;
  wire \geqOp_inferred__0/i__carry__0_n_3 ;
  wire \geqOp_inferred__0/i__carry__1_n_0 ;
  wire \geqOp_inferred__0/i__carry__1_n_1 ;
  wire \geqOp_inferred__0/i__carry__1_n_2 ;
  wire \geqOp_inferred__0/i__carry__1_n_3 ;
  wire \geqOp_inferred__0/i__carry__2_n_0 ;
  wire \geqOp_inferred__0/i__carry__2_n_1 ;
  wire \geqOp_inferred__0/i__carry__2_n_2 ;
  wire \geqOp_inferred__0/i__carry__2_n_3 ;
  wire \geqOp_inferred__0/i__carry__3_n_3 ;
  wire \geqOp_inferred__0/i__carry_n_0 ;
  wire \geqOp_inferred__0/i__carry_n_1 ;
  wire \geqOp_inferred__0/i__carry_n_2 ;
  wire \geqOp_inferred__0/i__carry_n_3 ;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_2__2_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_3__2_n_0;
  wire i__carry__1_i_4__1_n_0;
  wire i__carry__1_i_4__2_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__1_i_8__0_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1__1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2__1_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3__1_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4__1_n_0;
  wire i__carry__2_i_5__0_n_0;
  wire i__carry__2_i_6__0_n_0;
  wire i__carry__2_i_7__0_n_0;
  wire i__carry__2_i_8__0_n_0;
  wire i__carry__3_i_1__0_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_8__0_n_0;
  wire minusOp_carry__0_i_1__0_n_0;
  wire minusOp_carry__0_i_2__0_n_0;
  wire minusOp_carry__0_i_3__0_n_0;
  wire minusOp_carry__0_i_4__0_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1__0_n_0;
  wire minusOp_carry__1_i_2__0_n_0;
  wire minusOp_carry__1_i_3__0_n_0;
  wire minusOp_carry__1_i_4__0_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_4;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__3_n_6;
  wire minusOp_carry__3_n_7;
  wire minusOp_carry_i_1__0_n_0;
  wire minusOp_carry_i_2__0_n_0;
  wire minusOp_carry_i_3__0_n_0;
  wire minusOp_carry_i_4__0_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__0_n_4 ;
  wire \minusOp_inferred__0/i__carry__0_n_5 ;
  wire \minusOp_inferred__0/i__carry__0_n_6 ;
  wire \minusOp_inferred__0/i__carry__0_n_7 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_4 ;
  wire \minusOp_inferred__0/i__carry__1_n_5 ;
  wire \minusOp_inferred__0/i__carry__1_n_6 ;
  wire \minusOp_inferred__0/i__carry__1_n_7 ;
  wire \minusOp_inferred__0/i__carry__2_n_0 ;
  wire \minusOp_inferred__0/i__carry__2_n_1 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_4 ;
  wire \minusOp_inferred__0/i__carry__2_n_5 ;
  wire \minusOp_inferred__0/i__carry__2_n_6 ;
  wire \minusOp_inferred__0/i__carry__2_n_7 ;
  wire [18:0]\minusOp_inferred__0/i__carry__3_0 ;
  wire \minusOp_inferred__0/i__carry__3_n_1 ;
  wire \minusOp_inferred__0/i__carry__3_n_3 ;
  wire \minusOp_inferred__0/i__carry__3_n_6 ;
  wire \minusOp_inferred__0/i__carry__3_n_7 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_4 ;
  wire \minusOp_inferred__0/i__carry_n_5 ;
  wire \minusOp_inferred__0/i__carry_n_6 ;
  wire \minusOp_inferred__0/i__carry_n_7 ;
  wire s00_axi_aclk;
  wire [3:3]\NLW_freq_cnt_s_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]NLW_geqOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_geqOp_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__3_O_UNCONNECTED;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_geqOp_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__3_O_UNCONNECTED ;
  wire [3:1]NLW_minusOp_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry__3_O_UNCONNECTED;
  wire [3:1]\NLW_minusOp_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_minusOp_inferred__0/i__carry__3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEFFFEFEFE000E0E0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(ce_s),
        .I3(\FSM_sequential_state_reg[0] ),
        .I4(\FSM_sequential_state_reg[1]_1 ),
        .I5(\count_v_reg[11] ),
        .O(freq_trig_reg_2));
  LUT6 #(
    .INIT(64'hEFFFEFEFE000E0E0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1] ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(ce_s),
        .I3(\FSM_sequential_state_reg[0] ),
        .I4(\FSM_sequential_state_reg[1]_1 ),
        .I5(\count_v_reg[11]_0 ),
        .O(freq_trig_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \count_v[11]_i_1 
       (.I0(ce_s),
        .I1(\count_v_reg[11] ),
        .I2(\count_v_reg[11]_0 ),
        .O(freq_trig_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \freq_cnt_s[0]_i_2__0 
       (.I0(freq_cnt_s_reg[0]),
        .O(\freq_cnt_s[0]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[0]_i_1__0_n_7 ),
        .Q(freq_cnt_s_reg[0]),
        .R(freq_trig_i_1__0_n_0));
  CARRY4 \freq_cnt_s_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\freq_cnt_s_reg[0]_i_1__0_n_0 ,\freq_cnt_s_reg[0]_i_1__0_n_1 ,\freq_cnt_s_reg[0]_i_1__0_n_2 ,\freq_cnt_s_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\freq_cnt_s_reg[0]_i_1__0_n_4 ,\freq_cnt_s_reg[0]_i_1__0_n_5 ,\freq_cnt_s_reg[0]_i_1__0_n_6 ,\freq_cnt_s_reg[0]_i_1__0_n_7 }),
        .S({freq_cnt_s_reg[3:1],\freq_cnt_s[0]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[8]_i_1__0_n_5 ),
        .Q(freq_cnt_s_reg[10]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[8]_i_1__0_n_4 ),
        .Q(freq_cnt_s_reg[11]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[12]_i_1__0_n_7 ),
        .Q(freq_cnt_s_reg[12]),
        .R(freq_trig_i_1__0_n_0));
  CARRY4 \freq_cnt_s_reg[12]_i_1__0 
       (.CI(\freq_cnt_s_reg[8]_i_1__0_n_0 ),
        .CO({\freq_cnt_s_reg[12]_i_1__0_n_0 ,\freq_cnt_s_reg[12]_i_1__0_n_1 ,\freq_cnt_s_reg[12]_i_1__0_n_2 ,\freq_cnt_s_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[12]_i_1__0_n_4 ,\freq_cnt_s_reg[12]_i_1__0_n_5 ,\freq_cnt_s_reg[12]_i_1__0_n_6 ,\freq_cnt_s_reg[12]_i_1__0_n_7 }),
        .S(freq_cnt_s_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[12]_i_1__0_n_6 ),
        .Q(freq_cnt_s_reg[13]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[12]_i_1__0_n_5 ),
        .Q(freq_cnt_s_reg[14]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[12]_i_1__0_n_4 ),
        .Q(freq_cnt_s_reg[15]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[16]_i_1__0_n_7 ),
        .Q(freq_cnt_s_reg[16]),
        .R(freq_trig_i_1__0_n_0));
  CARRY4 \freq_cnt_s_reg[16]_i_1__0 
       (.CI(\freq_cnt_s_reg[12]_i_1__0_n_0 ),
        .CO({\freq_cnt_s_reg[16]_i_1__0_n_0 ,\freq_cnt_s_reg[16]_i_1__0_n_1 ,\freq_cnt_s_reg[16]_i_1__0_n_2 ,\freq_cnt_s_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[16]_i_1__0_n_4 ,\freq_cnt_s_reg[16]_i_1__0_n_5 ,\freq_cnt_s_reg[16]_i_1__0_n_6 ,\freq_cnt_s_reg[16]_i_1__0_n_7 }),
        .S(freq_cnt_s_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[16]_i_1__0_n_6 ),
        .Q(freq_cnt_s_reg[17]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[16]_i_1__0_n_5 ),
        .Q(freq_cnt_s_reg[18]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[16]_i_1__0_n_4 ),
        .Q(freq_cnt_s_reg[19]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[0]_i_1__0_n_6 ),
        .Q(freq_cnt_s_reg[1]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[20]_i_1__0_n_7 ),
        .Q(freq_cnt_s_reg[20]),
        .R(freq_trig_i_1__0_n_0));
  CARRY4 \freq_cnt_s_reg[20]_i_1__0 
       (.CI(\freq_cnt_s_reg[16]_i_1__0_n_0 ),
        .CO({\freq_cnt_s_reg[20]_i_1__0_n_0 ,\freq_cnt_s_reg[20]_i_1__0_n_1 ,\freq_cnt_s_reg[20]_i_1__0_n_2 ,\freq_cnt_s_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[20]_i_1__0_n_4 ,\freq_cnt_s_reg[20]_i_1__0_n_5 ,\freq_cnt_s_reg[20]_i_1__0_n_6 ,\freq_cnt_s_reg[20]_i_1__0_n_7 }),
        .S(freq_cnt_s_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[20]_i_1__0_n_6 ),
        .Q(freq_cnt_s_reg[21]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[20]_i_1__0_n_5 ),
        .Q(freq_cnt_s_reg[22]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[20]_i_1__0_n_4 ),
        .Q(freq_cnt_s_reg[23]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[24]_i_1__0_n_7 ),
        .Q(freq_cnt_s_reg[24]),
        .R(freq_trig_i_1__0_n_0));
  CARRY4 \freq_cnt_s_reg[24]_i_1__0 
       (.CI(\freq_cnt_s_reg[20]_i_1__0_n_0 ),
        .CO({\freq_cnt_s_reg[24]_i_1__0_n_0 ,\freq_cnt_s_reg[24]_i_1__0_n_1 ,\freq_cnt_s_reg[24]_i_1__0_n_2 ,\freq_cnt_s_reg[24]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[24]_i_1__0_n_4 ,\freq_cnt_s_reg[24]_i_1__0_n_5 ,\freq_cnt_s_reg[24]_i_1__0_n_6 ,\freq_cnt_s_reg[24]_i_1__0_n_7 }),
        .S(freq_cnt_s_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[24]_i_1__0_n_6 ),
        .Q(freq_cnt_s_reg[25]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[24]_i_1__0_n_5 ),
        .Q(freq_cnt_s_reg[26]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[24]_i_1__0_n_4 ),
        .Q(freq_cnt_s_reg[27]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[28]_i_1__0_n_7 ),
        .Q(freq_cnt_s_reg[28]),
        .R(freq_trig_i_1__0_n_0));
  CARRY4 \freq_cnt_s_reg[28]_i_1__0 
       (.CI(\freq_cnt_s_reg[24]_i_1__0_n_0 ),
        .CO({\NLW_freq_cnt_s_reg[28]_i_1__0_CO_UNCONNECTED [3],\freq_cnt_s_reg[28]_i_1__0_n_1 ,\freq_cnt_s_reg[28]_i_1__0_n_2 ,\freq_cnt_s_reg[28]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[28]_i_1__0_n_4 ,\freq_cnt_s_reg[28]_i_1__0_n_5 ,\freq_cnt_s_reg[28]_i_1__0_n_6 ,\freq_cnt_s_reg[28]_i_1__0_n_7 }),
        .S(freq_cnt_s_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[28]_i_1__0_n_6 ),
        .Q(freq_cnt_s_reg[29]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[0]_i_1__0_n_5 ),
        .Q(freq_cnt_s_reg[2]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[28]_i_1__0_n_5 ),
        .Q(freq_cnt_s_reg[30]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[28]_i_1__0_n_4 ),
        .Q(freq_cnt_s_reg[31]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[0]_i_1__0_n_4 ),
        .Q(freq_cnt_s_reg[3]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[4]_i_1__0_n_7 ),
        .Q(freq_cnt_s_reg[4]),
        .R(freq_trig_i_1__0_n_0));
  CARRY4 \freq_cnt_s_reg[4]_i_1__0 
       (.CI(\freq_cnt_s_reg[0]_i_1__0_n_0 ),
        .CO({\freq_cnt_s_reg[4]_i_1__0_n_0 ,\freq_cnt_s_reg[4]_i_1__0_n_1 ,\freq_cnt_s_reg[4]_i_1__0_n_2 ,\freq_cnt_s_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[4]_i_1__0_n_4 ,\freq_cnt_s_reg[4]_i_1__0_n_5 ,\freq_cnt_s_reg[4]_i_1__0_n_6 ,\freq_cnt_s_reg[4]_i_1__0_n_7 }),
        .S(freq_cnt_s_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[4]_i_1__0_n_6 ),
        .Q(freq_cnt_s_reg[5]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[4]_i_1__0_n_5 ),
        .Q(freq_cnt_s_reg[6]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[4]_i_1__0_n_4 ),
        .Q(freq_cnt_s_reg[7]),
        .R(freq_trig_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[8]_i_1__0_n_7 ),
        .Q(freq_cnt_s_reg[8]),
        .R(freq_trig_i_1__0_n_0));
  CARRY4 \freq_cnt_s_reg[8]_i_1__0 
       (.CI(\freq_cnt_s_reg[4]_i_1__0_n_0 ),
        .CO({\freq_cnt_s_reg[8]_i_1__0_n_0 ,\freq_cnt_s_reg[8]_i_1__0_n_1 ,\freq_cnt_s_reg[8]_i_1__0_n_2 ,\freq_cnt_s_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\freq_cnt_s_reg[8]_i_1__0_n_4 ,\freq_cnt_s_reg[8]_i_1__0_n_5 ,\freq_cnt_s_reg[8]_i_1__0_n_6 ,\freq_cnt_s_reg[8]_i_1__0_n_7 }),
        .S(freq_cnt_s_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_s_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\freq_cnt_s_reg[8]_i_1__0_n_6 ),
        .Q(freq_cnt_s_reg[9]),
        .R(freq_trig_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    freq_trig_i_1__0
       (.I0(\geqOp_inferred__0/i__carry__3_n_3 ),
        .I1(freq_trig_reg_3),
        .I2(geqOp),
        .O(freq_trig_i_1__0_n_0));
  FDRE freq_trig_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(freq_trig_i_1__0_n_0),
        .Q(ce_s),
        .R(1'b0));
  CARRY4 geqOp_carry
       (.CI(1'b0),
        .CO({geqOp_carry_n_0,geqOp_carry_n_1,geqOp_carry_n_2,geqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({geqOp_carry_i_1__0_n_0,geqOp_carry_i_2__0_n_0,geqOp_carry_i_3__0_n_0,geqOp_carry_i_4__0_n_0}),
        .O(NLW_geqOp_carry_O_UNCONNECTED[3:0]),
        .S({geqOp_carry_i_5__0_n_0,geqOp_carry_i_6__0_n_0,geqOp_carry_i_7__0_n_0,geqOp_carry_i_8__0_n_0}));
  CARRY4 geqOp_carry__0
       (.CI(geqOp_carry_n_0),
        .CO({geqOp_carry__0_n_0,geqOp_carry__0_n_1,geqOp_carry__0_n_2,geqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({geqOp_carry__0_i_1__0_n_0,geqOp_carry__0_i_2__0_n_0,geqOp_carry__0_i_3__0_n_0,geqOp_carry__0_i_4__0_n_0}),
        .O(NLW_geqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({geqOp_carry__0_i_5__0_n_0,geqOp_carry__0_i_6__0_n_0,geqOp_carry__0_i_7__0_n_0,geqOp_carry__0_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__0_i_1__0
       (.I0(freq_cnt_s_reg[15]),
        .I1(minusOp_carry__2_n_5),
        .I2(freq_cnt_s_reg[14]),
        .I3(minusOp_carry__2_n_6),
        .O(geqOp_carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__0_i_2__0
       (.I0(freq_cnt_s_reg[13]),
        .I1(minusOp_carry__2_n_7),
        .I2(freq_cnt_s_reg[12]),
        .I3(minusOp_carry__1_n_4),
        .O(geqOp_carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__0_i_3__0
       (.I0(freq_cnt_s_reg[11]),
        .I1(minusOp_carry__1_n_5),
        .I2(freq_cnt_s_reg[10]),
        .I3(minusOp_carry__1_n_6),
        .O(geqOp_carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__0_i_4__0
       (.I0(freq_cnt_s_reg[9]),
        .I1(minusOp_carry__1_n_7),
        .I2(freq_cnt_s_reg[8]),
        .I3(minusOp_carry__0_n_4),
        .O(geqOp_carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_5__0
       (.I0(minusOp_carry__2_n_5),
        .I1(freq_cnt_s_reg[15]),
        .I2(minusOp_carry__2_n_6),
        .I3(freq_cnt_s_reg[14]),
        .O(geqOp_carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_6__0
       (.I0(minusOp_carry__2_n_7),
        .I1(freq_cnt_s_reg[13]),
        .I2(minusOp_carry__1_n_4),
        .I3(freq_cnt_s_reg[12]),
        .O(geqOp_carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_7__0
       (.I0(minusOp_carry__1_n_5),
        .I1(freq_cnt_s_reg[11]),
        .I2(minusOp_carry__1_n_6),
        .I3(freq_cnt_s_reg[10]),
        .O(geqOp_carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_8__0
       (.I0(minusOp_carry__1_n_7),
        .I1(freq_cnt_s_reg[9]),
        .I2(minusOp_carry__0_n_4),
        .I3(freq_cnt_s_reg[8]),
        .O(geqOp_carry__0_i_8__0_n_0));
  CARRY4 geqOp_carry__1
       (.CI(geqOp_carry__0_n_0),
        .CO({geqOp_carry__1_n_0,geqOp_carry__1_n_1,geqOp_carry__1_n_2,geqOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({geqOp_carry__1_i_1__0_n_0,geqOp_carry__1_i_2__0_n_0,geqOp_carry__1_i_3__0_n_0,geqOp_carry__1_i_4__0_n_0}),
        .O(NLW_geqOp_carry__1_O_UNCONNECTED[3:0]),
        .S({geqOp_carry__1_i_5__0_n_0,geqOp_carry__1_i_6__0_n_0,geqOp_carry__1_i_7__0_n_0,geqOp_carry__1_i_8__0_n_0}));
  LUT3 #(
    .INIT(8'hE0)) 
    geqOp_carry__1_i_1__0
       (.I0(freq_cnt_s_reg[23]),
        .I1(freq_cnt_s_reg[22]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__1_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    geqOp_carry__1_i_2__0
       (.I0(freq_cnt_s_reg[21]),
        .I1(freq_cnt_s_reg[20]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h88E8)) 
    geqOp_carry__1_i_3__0
       (.I0(minusOp_carry__3_n_1),
        .I1(freq_cnt_s_reg[19]),
        .I2(freq_cnt_s_reg[18]),
        .I3(minusOp_carry__3_n_6),
        .O(geqOp_carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry__1_i_4__0
       (.I0(freq_cnt_s_reg[17]),
        .I1(minusOp_carry__3_n_7),
        .I2(freq_cnt_s_reg[16]),
        .I3(minusOp_carry__2_n_4),
        .O(geqOp_carry__1_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    geqOp_carry__1_i_5__0
       (.I0(freq_cnt_s_reg[22]),
        .I1(freq_cnt_s_reg[23]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__1_i_5__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    geqOp_carry__1_i_6__0
       (.I0(freq_cnt_s_reg[20]),
        .I1(freq_cnt_s_reg[21]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    geqOp_carry__1_i_7__0
       (.I0(minusOp_carry__3_n_1),
        .I1(freq_cnt_s_reg[19]),
        .I2(minusOp_carry__3_n_6),
        .I3(freq_cnt_s_reg[18]),
        .O(geqOp_carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__1_i_8__0
       (.I0(minusOp_carry__3_n_7),
        .I1(freq_cnt_s_reg[17]),
        .I2(minusOp_carry__2_n_4),
        .I3(freq_cnt_s_reg[16]),
        .O(geqOp_carry__1_i_8__0_n_0));
  CARRY4 geqOp_carry__2
       (.CI(geqOp_carry__1_n_0),
        .CO({geqOp_carry__2_n_0,geqOp_carry__2_n_1,geqOp_carry__2_n_2,geqOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({geqOp_carry__2_i_1__0_n_0,geqOp_carry__2_i_2__0_n_0,geqOp_carry__2_i_3__0_n_0,geqOp_carry__2_i_4__0_n_0}),
        .O(NLW_geqOp_carry__2_O_UNCONNECTED[3:0]),
        .S({geqOp_carry__2_i_5__0_n_0,geqOp_carry__2_i_6__0_n_0,geqOp_carry__2_i_7__0_n_0,geqOp_carry__2_i_8__0_n_0}));
  LUT3 #(
    .INIT(8'hE0)) 
    geqOp_carry__2_i_1__0
       (.I0(freq_cnt_s_reg[31]),
        .I1(freq_cnt_s_reg[30]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__2_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    geqOp_carry__2_i_2__0
       (.I0(freq_cnt_s_reg[29]),
        .I1(freq_cnt_s_reg[28]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__2_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    geqOp_carry__2_i_3__0
       (.I0(freq_cnt_s_reg[27]),
        .I1(freq_cnt_s_reg[26]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__2_i_3__0_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    geqOp_carry__2_i_4__0
       (.I0(freq_cnt_s_reg[25]),
        .I1(freq_cnt_s_reg[24]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__2_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    geqOp_carry__2_i_5__0
       (.I0(freq_cnt_s_reg[30]),
        .I1(freq_cnt_s_reg[31]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__2_i_5__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    geqOp_carry__2_i_6__0
       (.I0(freq_cnt_s_reg[28]),
        .I1(freq_cnt_s_reg[29]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__2_i_6__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    geqOp_carry__2_i_7__0
       (.I0(freq_cnt_s_reg[26]),
        .I1(freq_cnt_s_reg[27]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__2_i_7__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    geqOp_carry__2_i_8__0
       (.I0(freq_cnt_s_reg[24]),
        .I1(freq_cnt_s_reg[25]),
        .I2(minusOp_carry__3_n_1),
        .O(geqOp_carry__2_i_8__0_n_0));
  CARRY4 geqOp_carry__3
       (.CI(geqOp_carry__2_n_0),
        .CO({NLW_geqOp_carry__3_CO_UNCONNECTED[3:1],geqOp}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_geqOp_carry__3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,geqOp_carry__3_i_1__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    geqOp_carry__3_i_1__0
       (.I0(freq_cnt_s_reg[31]),
        .O(geqOp_carry__3_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry_i_1__0
       (.I0(freq_cnt_s_reg[7]),
        .I1(minusOp_carry__0_n_5),
        .I2(freq_cnt_s_reg[6]),
        .I3(minusOp_carry__0_n_6),
        .O(geqOp_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry_i_2__0
       (.I0(freq_cnt_s_reg[5]),
        .I1(minusOp_carry__0_n_7),
        .I2(freq_cnt_s_reg[4]),
        .I3(minusOp_carry_n_4),
        .O(geqOp_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    geqOp_carry_i_3__0
       (.I0(freq_cnt_s_reg[3]),
        .I1(minusOp_carry_n_5),
        .I2(freq_cnt_s_reg[2]),
        .I3(minusOp_carry_n_6),
        .O(geqOp_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    geqOp_carry_i_4__0
       (.I0(freq_cnt_s_reg[1]),
        .I1(minusOp_carry_n_7),
        .I2(freq_cnt_s_reg[0]),
        .I3(Q[0]),
        .O(geqOp_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_5__0
       (.I0(minusOp_carry__0_n_5),
        .I1(freq_cnt_s_reg[7]),
        .I2(minusOp_carry__0_n_6),
        .I3(freq_cnt_s_reg[6]),
        .O(geqOp_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_6__0
       (.I0(minusOp_carry__0_n_7),
        .I1(freq_cnt_s_reg[5]),
        .I2(minusOp_carry_n_4),
        .I3(freq_cnt_s_reg[4]),
        .O(geqOp_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_7__0
       (.I0(minusOp_carry_n_5),
        .I1(freq_cnt_s_reg[3]),
        .I2(minusOp_carry_n_6),
        .I3(freq_cnt_s_reg[2]),
        .O(geqOp_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    geqOp_carry_i_8__0
       (.I0(freq_cnt_s_reg[0]),
        .I1(Q[0]),
        .I2(minusOp_carry_n_7),
        .I3(freq_cnt_s_reg[1]),
        .O(geqOp_carry_i_8__0_n_0));
  CARRY4 \geqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\geqOp_inferred__0/i__carry_n_0 ,\geqOp_inferred__0/i__carry_n_1 ,\geqOp_inferred__0/i__carry_n_2 ,\geqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__0 
       (.CI(\geqOp_inferred__0/i__carry_n_0 ),
        .CO({\geqOp_inferred__0/i__carry__0_n_0 ,\geqOp_inferred__0/i__carry__0_n_1 ,\geqOp_inferred__0/i__carry__0_n_2 ,\geqOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__1 
       (.CI(\geqOp_inferred__0/i__carry__0_n_0 ),
        .CO({\geqOp_inferred__0/i__carry__1_n_0 ,\geqOp_inferred__0/i__carry__1_n_1 ,\geqOp_inferred__0/i__carry__1_n_2 ,\geqOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__1_n_0,i__carry__1_i_3__1_n_0,i__carry__1_i_4__1_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8__0_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__2 
       (.CI(\geqOp_inferred__0/i__carry__1_n_0 ),
        .CO({\geqOp_inferred__0/i__carry__2_n_0 ,\geqOp_inferred__0/i__carry__2_n_1 ,\geqOp_inferred__0/i__carry__2_n_2 ,\geqOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__0_n_0,i__carry__2_i_6__0_n_0,i__carry__2_i_7__0_n_0,i__carry__2_i_8__0_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__3 
       (.CI(\geqOp_inferred__0/i__carry__2_n_0 ),
        .CO({\NLW_geqOp_inferred__0/i__carry__3_CO_UNCONNECTED [3:1],\geqOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_geqOp_inferred__0/i__carry__3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__3_i_1_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__1
       (.I0(freq_cnt_s_reg[15]),
        .I1(\minusOp_inferred__0/i__carry__2_n_5 ),
        .I2(freq_cnt_s_reg[14]),
        .I3(\minusOp_inferred__0/i__carry__2_n_6 ),
        .O(i__carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [8]),
        .O(i__carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2__1
       (.I0(freq_cnt_s_reg[13]),
        .I1(\minusOp_inferred__0/i__carry__2_n_7 ),
        .I2(freq_cnt_s_reg[12]),
        .I3(\minusOp_inferred__0/i__carry__1_n_4 ),
        .O(i__carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [7]),
        .O(i__carry__0_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3__1
       (.I0(freq_cnt_s_reg[11]),
        .I1(\minusOp_inferred__0/i__carry__1_n_5 ),
        .I2(freq_cnt_s_reg[10]),
        .I3(\minusOp_inferred__0/i__carry__1_n_6 ),
        .O(i__carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [6]),
        .O(i__carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4__1
       (.I0(freq_cnt_s_reg[9]),
        .I1(\minusOp_inferred__0/i__carry__1_n_7 ),
        .I2(freq_cnt_s_reg[8]),
        .I3(\minusOp_inferred__0/i__carry__0_n_4 ),
        .O(i__carry__0_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [5]),
        .O(i__carry__0_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__0
       (.I0(\minusOp_inferred__0/i__carry__2_n_5 ),
        .I1(freq_cnt_s_reg[15]),
        .I2(\minusOp_inferred__0/i__carry__2_n_6 ),
        .I3(freq_cnt_s_reg[14]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__0
       (.I0(\minusOp_inferred__0/i__carry__2_n_7 ),
        .I1(freq_cnt_s_reg[13]),
        .I2(\minusOp_inferred__0/i__carry__1_n_4 ),
        .I3(freq_cnt_s_reg[12]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__0
       (.I0(\minusOp_inferred__0/i__carry__1_n_5 ),
        .I1(freq_cnt_s_reg[11]),
        .I2(\minusOp_inferred__0/i__carry__1_n_6 ),
        .I3(freq_cnt_s_reg[10]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__0
       (.I0(\minusOp_inferred__0/i__carry__1_n_7 ),
        .I1(freq_cnt_s_reg[9]),
        .I2(\minusOp_inferred__0/i__carry__0_n_4 ),
        .I3(freq_cnt_s_reg[8]),
        .O(i__carry__0_i_8__0_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    i__carry__1_i_1__0
       (.I0(freq_cnt_s_reg[23]),
        .I1(freq_cnt_s_reg[22]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [12]),
        .O(i__carry__1_i_1__2_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    i__carry__1_i_2__1
       (.I0(freq_cnt_s_reg[21]),
        .I1(freq_cnt_s_reg[20]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__1_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [11]),
        .O(i__carry__1_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h88E8)) 
    i__carry__1_i_3__1
       (.I0(\minusOp_inferred__0/i__carry__3_n_1 ),
        .I1(freq_cnt_s_reg[19]),
        .I2(freq_cnt_s_reg[18]),
        .I3(\minusOp_inferred__0/i__carry__3_n_6 ),
        .O(i__carry__1_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [10]),
        .O(i__carry__1_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4__1
       (.I0(freq_cnt_s_reg[17]),
        .I1(\minusOp_inferred__0/i__carry__3_n_7 ),
        .I2(freq_cnt_s_reg[16]),
        .I3(\minusOp_inferred__0/i__carry__2_n_4 ),
        .O(i__carry__1_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [9]),
        .O(i__carry__1_i_4__2_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    i__carry__1_i_5__0
       (.I0(freq_cnt_s_reg[22]),
        .I1(freq_cnt_s_reg[23]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__1_i_5__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    i__carry__1_i_6__0
       (.I0(freq_cnt_s_reg[20]),
        .I1(freq_cnt_s_reg[21]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry__1_i_7__0
       (.I0(\minusOp_inferred__0/i__carry__3_n_1 ),
        .I1(freq_cnt_s_reg[19]),
        .I2(\minusOp_inferred__0/i__carry__3_n_6 ),
        .I3(freq_cnt_s_reg[18]),
        .O(i__carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__0
       (.I0(\minusOp_inferred__0/i__carry__3_n_7 ),
        .I1(freq_cnt_s_reg[17]),
        .I2(\minusOp_inferred__0/i__carry__2_n_4 ),
        .I3(freq_cnt_s_reg[16]),
        .O(i__carry__1_i_8__0_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    i__carry__2_i_1__0
       (.I0(freq_cnt_s_reg[31]),
        .I1(freq_cnt_s_reg[30]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1__1
       (.I0(\minusOp_inferred__0/i__carry__3_0 [16]),
        .O(i__carry__2_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    i__carry__2_i_2__0
       (.I0(freq_cnt_s_reg[29]),
        .I1(freq_cnt_s_reg[28]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2__1
       (.I0(\minusOp_inferred__0/i__carry__3_0 [15]),
        .O(i__carry__2_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    i__carry__2_i_3__0
       (.I0(freq_cnt_s_reg[27]),
        .I1(freq_cnt_s_reg[26]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3__1
       (.I0(\minusOp_inferred__0/i__carry__3_0 [14]),
        .O(i__carry__2_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    i__carry__2_i_4__0
       (.I0(freq_cnt_s_reg[25]),
        .I1(freq_cnt_s_reg[24]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__2_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4__1
       (.I0(\minusOp_inferred__0/i__carry__3_0 [13]),
        .O(i__carry__2_i_4__1_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    i__carry__2_i_5__0
       (.I0(freq_cnt_s_reg[30]),
        .I1(freq_cnt_s_reg[31]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__2_i_5__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    i__carry__2_i_6__0
       (.I0(freq_cnt_s_reg[28]),
        .I1(freq_cnt_s_reg[29]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__2_i_6__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    i__carry__2_i_7__0
       (.I0(freq_cnt_s_reg[26]),
        .I1(freq_cnt_s_reg[27]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__2_i_7__0_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    i__carry__2_i_8__0
       (.I0(freq_cnt_s_reg[24]),
        .I1(freq_cnt_s_reg[25]),
        .I2(\minusOp_inferred__0/i__carry__3_n_1 ),
        .O(i__carry__2_i_8__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(freq_cnt_s_reg[31]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1__0
       (.I0(\minusOp_inferred__0/i__carry__3_0 [18]),
        .O(i__carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [17]),
        .O(i__carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__1
       (.I0(freq_cnt_s_reg[7]),
        .I1(\minusOp_inferred__0/i__carry__0_n_5 ),
        .I2(freq_cnt_s_reg[6]),
        .I3(\minusOp_inferred__0/i__carry__0_n_6 ),
        .O(i__carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [4]),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__1
       (.I0(freq_cnt_s_reg[5]),
        .I1(\minusOp_inferred__0/i__carry__0_n_7 ),
        .I2(freq_cnt_s_reg[4]),
        .I3(\minusOp_inferred__0/i__carry_n_4 ),
        .O(i__carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [3]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__1
       (.I0(freq_cnt_s_reg[3]),
        .I1(\minusOp_inferred__0/i__carry_n_5 ),
        .I2(freq_cnt_s_reg[2]),
        .I3(\minusOp_inferred__0/i__carry_n_6 ),
        .O(i__carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [2]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    i__carry_i_4__1
       (.I0(freq_cnt_s_reg[1]),
        .I1(\minusOp_inferred__0/i__carry_n_7 ),
        .I2(freq_cnt_s_reg[0]),
        .I3(\minusOp_inferred__0/i__carry__3_0 [0]),
        .O(i__carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__2
       (.I0(\minusOp_inferred__0/i__carry__3_0 [1]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(\minusOp_inferred__0/i__carry__0_n_5 ),
        .I1(freq_cnt_s_reg[7]),
        .I2(\minusOp_inferred__0/i__carry__0_n_6 ),
        .I3(freq_cnt_s_reg[6]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(\minusOp_inferred__0/i__carry__0_n_7 ),
        .I1(freq_cnt_s_reg[5]),
        .I2(\minusOp_inferred__0/i__carry_n_4 ),
        .I3(freq_cnt_s_reg[4]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(\minusOp_inferred__0/i__carry_n_5 ),
        .I1(freq_cnt_s_reg[3]),
        .I2(\minusOp_inferred__0/i__carry_n_6 ),
        .I3(freq_cnt_s_reg[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry_i_8__0
       (.I0(freq_cnt_s_reg[0]),
        .I1(\minusOp_inferred__0/i__carry__3_0 [0]),
        .I2(\minusOp_inferred__0/i__carry_n_7 ),
        .I3(freq_cnt_s_reg[1]),
        .O(i__carry_i_8__0_n_0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_1__0_n_0,minusOp_carry_i_2__0_n_0,minusOp_carry_i_3__0_n_0,minusOp_carry_i_4__0_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1__0_n_0,minusOp_carry__0_i_2__0_n_0,minusOp_carry__0_i_3__0_n_0,minusOp_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1__0
       (.I0(Q[8]),
        .O(minusOp_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2__0
       (.I0(Q[7]),
        .O(minusOp_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3__0
       (.I0(Q[6]),
        .O(minusOp_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4__0
       (.I0(Q[5]),
        .O(minusOp_carry__0_i_4__0_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1__0_n_0,minusOp_carry__1_i_2__0_n_0,minusOp_carry__1_i_3__0_n_0,minusOp_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1__0
       (.I0(Q[12]),
        .O(minusOp_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2__0
       (.I0(Q[11]),
        .O(minusOp_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3__0
       (.I0(Q[10]),
        .O(minusOp_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4__0
       (.I0(Q[9]),
        .O(minusOp_carry__1_i_4__0_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O({minusOp_carry__2_n_4,minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(Q[16]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(Q[15]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(Q[14]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_4
       (.I0(Q[13]),
        .O(minusOp_carry__2_i_4_n_0));
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({NLW_minusOp_carry__3_CO_UNCONNECTED[3],minusOp_carry__3_n_1,NLW_minusOp_carry__3_CO_UNCONNECTED[1],minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[18:17]}),
        .O({NLW_minusOp_carry__3_O_UNCONNECTED[3:2],minusOp_carry__3_n_6,minusOp_carry__3_n_7}),
        .S({1'b0,1'b1,minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_1
       (.I0(Q[18]),
        .O(minusOp_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_2
       (.I0(Q[17]),
        .O(minusOp_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1__0
       (.I0(Q[4]),
        .O(minusOp_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2__0
       (.I0(Q[3]),
        .O(minusOp_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3__0
       (.I0(Q[2]),
        .O(minusOp_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4__0
       (.I0(Q[1]),
        .O(minusOp_carry_i_4__0_n_0));
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(\minusOp_inferred__0/i__carry__3_0 [0]),
        .DI(\minusOp_inferred__0/i__carry__3_0 [4:1]),
        .O({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\minusOp_inferred__0/i__carry__3_0 [8:5]),
        .O({\minusOp_inferred__0/i__carry__0_n_4 ,\minusOp_inferred__0/i__carry__0_n_5 ,\minusOp_inferred__0/i__carry__0_n_6 ,\minusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\minusOp_inferred__0/i__carry__3_0 [12:9]),
        .O({\minusOp_inferred__0/i__carry__1_n_4 ,\minusOp_inferred__0/i__carry__1_n_5 ,\minusOp_inferred__0/i__carry__1_n_6 ,\minusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__2_n_0,i__carry__1_i_2__2_n_0,i__carry__1_i_3__2_n_0,i__carry__1_i_4__2_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__2_n_0 ,\minusOp_inferred__0/i__carry__2_n_1 ,\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(\minusOp_inferred__0/i__carry__3_0 [16:13]),
        .O({\minusOp_inferred__0/i__carry__2_n_4 ,\minusOp_inferred__0/i__carry__2_n_5 ,\minusOp_inferred__0/i__carry__2_n_6 ,\minusOp_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1__1_n_0,i__carry__2_i_2__1_n_0,i__carry__2_i_3__1_n_0,i__carry__2_i_4__1_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__3 
       (.CI(\minusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__3_CO_UNCONNECTED [3],\minusOp_inferred__0/i__carry__3_n_1 ,\NLW_minusOp_inferred__0/i__carry__3_CO_UNCONNECTED [1],\minusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\minusOp_inferred__0/i__carry__3_0 [18:17]}),
        .O({\NLW_minusOp_inferred__0/i__carry__3_O_UNCONNECTED [3:2],\minusOp_inferred__0/i__carry__3_n_6 ,\minusOp_inferred__0/i__carry__3_n_7 }),
        .S({1'b0,1'b1,i__carry__3_i_1__0_n_0,i__carry__3_i_2_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \threshold_v[11]_i_1 
       (.I0(ce_s),
        .I1(\count_v_reg[11] ),
        .I2(\count_v_reg[11]_0 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "modulator" *) 
module mainBD_modulator_axi_ip_0_0_modulator
   (pwm_out,
    s00_axi_aclk,
    Q,
    \minusOp_inferred__0/i__carry__6 ,
    freq_trig_reg);
  output pwm_out;
  input s00_axi_aclk;
  input [31:0]Q;
  input [31:0]\minusOp_inferred__0/i__carry__6 ;
  input [0:0]freq_trig_reg;

  wire [31:0]Q;
  wire [7:0]ampl_cnt_s_0;
  wire [0:0]freq_trig_reg;
  wire freq_trig_s;
  wire gtOp;
  wire [31:0]\minusOp_inferred__0/i__carry__6 ;
  wire pwm_out;
  wire s00_axi_aclk;
  wire sine_n_12;
  wire sine_n_13;
  wire sine_n_14;
  wire sine_n_15;
  wire sine_n_16;
  wire sine_n_17;
  wire sine_n_18;
  wire sine_n_19;
  wire sine_n_20;
  wire sine_n_21;
  wire sine_n_22;
  wire sine_n_23;
  wire sine_n_24;
  wire [11:0]sine_s_reg;
  wire [1:0]state__0;

  mainBD_modulator_axi_ip_0_0_counter counterampl
       (.E(freq_trig_s),
        .Q(ampl_cnt_s_0),
        .s00_axi_aclk(s00_axi_aclk));
  mainBD_modulator_axi_ip_0_0_frequency_trigger freq_ce
       (.E(freq_trig_s),
        .Q(Q),
        .freq_trig_reg_0(freq_trig_reg),
        .\minusOp_inferred__0/i__carry__6_0 (\minusOp_inferred__0/i__carry__6 ),
        .s00_axi_aclk(s00_axi_aclk));
  mainBD_modulator_axi_ip_0_0_pwm pwmmodule
       (.CO(gtOp),
        .DI({sine_n_17,sine_n_18,sine_n_19,sine_n_20}),
        .DOADO(sine_s_reg),
        .\FSM_sequential_state[1]_i_4 ({sine_n_23,sine_n_24}),
        .\FSM_sequential_state[1]_i_4_0 ({sine_n_21,sine_n_22}),
        .\FSM_sequential_state_reg[0]_0 (sine_n_12),
        .Q(Q[30:12]),
        .S({sine_n_13,sine_n_14,sine_n_15,sine_n_16}),
        .freq_trig_reg(freq_trig_reg),
        .\minusOp_inferred__0/i__carry__3 (\minusOp_inferred__0/i__carry__6 [30:12]),
        .pwm_out(pwm_out),
        .s00_axi_aclk(s00_axi_aclk),
        .state__0(state__0));
  mainBD_modulator_axi_ip_0_0_sine sine
       (.CO(gtOp),
        .D(ampl_cnt_s_0),
        .DI({sine_n_17,sine_n_18,sine_n_19,sine_n_20}),
        .DOADO(sine_s_reg),
        .\FSM_sequential_state_reg[0] (sine_n_12),
        .S({sine_n_13,sine_n_14,sine_n_15,sine_n_16}),
        .s00_axi_aclk(s00_axi_aclk),
        .sine_s_reg_0({sine_n_21,sine_n_22}),
        .sine_s_reg_1({sine_n_23,sine_n_24}),
        .state__0(state__0));
endmodule

(* ORIG_REF_NAME = "modulator_axi_ip_v1_0" *) 
module mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    pwm_out,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output pwm_out;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire pwm_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0_S00_AXI modulator_axi_ip_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .pwm_out(pwm_out),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "modulator_axi_ip_v1_0_S00_AXI" *) 
module mainBD_modulator_axi_ip_0_0_modulator_axi_ip_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    pwm_out,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output pwm_out;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire pwm_out;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [0:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden;
  wire slv_reg_wren__0;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[0]),
        .I4(slv_reg2[0]),
        .I5(slv_reg0),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[10]),
        .I4(slv_reg2[10]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[11]),
        .I4(slv_reg2[11]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[12]),
        .I4(slv_reg2[12]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[13]),
        .I4(slv_reg2[13]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[14]),
        .I4(slv_reg2[14]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[15]),
        .I4(slv_reg2[15]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[16]),
        .I4(slv_reg2[16]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[17]),
        .I4(slv_reg2[17]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[18]),
        .I4(slv_reg2[18]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[19]),
        .I4(slv_reg2[19]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[1]),
        .I4(slv_reg2[1]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[20]),
        .I4(slv_reg2[20]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[21]),
        .I4(slv_reg2[21]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[22]),
        .I4(slv_reg2[22]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[23]),
        .I4(slv_reg2[23]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[24]),
        .I4(slv_reg2[24]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[25]),
        .I4(slv_reg2[25]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[26]),
        .I4(slv_reg2[26]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[27]),
        .I4(slv_reg2[27]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[28]),
        .I4(slv_reg2[28]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[29]),
        .I4(slv_reg2[29]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[2]),
        .I4(slv_reg2[2]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[30]),
        .I4(slv_reg2[30]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg3[31]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[31]),
        .I4(slv_reg2[31]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[3]),
        .I4(slv_reg2[3]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[4]),
        .I4(slv_reg2[4]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[5]),
        .I4(slv_reg2[5]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[6]),
        .I4(slv_reg2[6]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[7]),
        .I4(slv_reg2[7]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[8]),
        .I4(slv_reg2[8]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg1[9]),
        .I4(slv_reg2[9]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  mainBD_modulator_axi_ip_0_0_modulator pwmmodulator
       (.Q(slv_reg2),
        .freq_trig_reg(slv_reg0),
        .\minusOp_inferred__0/i__carry__6 (slv_reg1),
        .pwm_out(pwm_out),
        .s00_axi_aclk(s00_axi_aclk));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "pwm" *) 
module mainBD_modulator_axi_ip_0_0_pwm
   (CO,
    state__0,
    pwm_out,
    s00_axi_aclk,
    Q,
    \minusOp_inferred__0/i__carry__3 ,
    DI,
    S,
    \FSM_sequential_state[1]_i_4 ,
    \FSM_sequential_state[1]_i_4_0 ,
    freq_trig_reg,
    \FSM_sequential_state_reg[0]_0 ,
    DOADO);
  output [0:0]CO;
  output [1:0]state__0;
  output pwm_out;
  input s00_axi_aclk;
  input [18:0]Q;
  input [18:0]\minusOp_inferred__0/i__carry__3 ;
  input [3:0]DI;
  input [3:0]S;
  input [1:0]\FSM_sequential_state[1]_i_4 ;
  input [1:0]\FSM_sequential_state[1]_i_4_0 ;
  input [0:0]freq_trig_reg;
  input \FSM_sequential_state_reg[0]_0 ;
  input [11:0]DOADO;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [11:0]DOADO;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire [1:0]\FSM_sequential_state[1]_i_4 ;
  wire [1:0]\FSM_sequential_state[1]_i_4_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [18:0]Q;
  wire [3:0]S;
  wire ce_s;
  wire count_v0_carry__0_n_0;
  wire count_v0_carry__0_n_1;
  wire count_v0_carry__0_n_2;
  wire count_v0_carry__0_n_3;
  wire count_v0_carry__1_n_2;
  wire count_v0_carry__1_n_3;
  wire count_v0_carry_n_0;
  wire count_v0_carry_n_1;
  wire count_v0_carry_n_2;
  wire count_v0_carry_n_3;
  wire \count_v[0]_i_1_n_0 ;
  wire \count_v_reg_n_0_[0] ;
  wire \count_v_reg_n_0_[10] ;
  wire \count_v_reg_n_0_[11] ;
  wire \count_v_reg_n_0_[1] ;
  wire \count_v_reg_n_0_[2] ;
  wire \count_v_reg_n_0_[3] ;
  wire \count_v_reg_n_0_[4] ;
  wire \count_v_reg_n_0_[5] ;
  wire \count_v_reg_n_0_[6] ;
  wire \count_v_reg_n_0_[7] ;
  wire \count_v_reg_n_0_[8] ;
  wire \count_v_reg_n_0_[9] ;
  wire [0:0]freq_trig_reg;
  wire fsm_ce_n_1;
  wire fsm_ce_n_2;
  wire fsm_ce_n_3;
  wire fsm_ce_n_4;
  wire gtOp_carry__0_n_3;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_4__3_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_8__1_n_0;
  wire [11:1]in9;
  wire [18:0]\minusOp_inferred__0/i__carry__3 ;
  wire pwm_out;
  wire s00_axi_aclk;
  wire state11_in;
  wire \state1_inferred__0/i__carry_n_1 ;
  wire \state1_inferred__0/i__carry_n_2 ;
  wire \state1_inferred__0/i__carry_n_3 ;
  wire state2;
  wire \state2_inferred__0/i__carry__0_n_3 ;
  wire \state2_inferred__0/i__carry_n_0 ;
  wire \state2_inferred__0/i__carry_n_1 ;
  wire \state2_inferred__0/i__carry_n_2 ;
  wire \state2_inferred__0/i__carry_n_3 ;
  wire [1:0]state__0;
  wire [11:0]threshold_v;
  wire [3:2]NLW_count_v0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_count_v0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_gtOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_state2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_state2_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(CO),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FE0000000000)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\FSM_sequential_state[1]_i_8_n_0 ),
        .I1(\FSM_sequential_state[1]_i_7_n_0 ),
        .I2(\FSM_sequential_state[1]_i_6_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(state2),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044444440)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[1]_i_6_n_0 ),
        .I3(\FSM_sequential_state[1]_i_7_n_0 ),
        .I4(\FSM_sequential_state[1]_i_8_n_0 ),
        .I5(state2),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0D0D0D0D0D0D0D01)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(CO),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_6_n_0 ),
        .I4(\FSM_sequential_state[1]_i_7_n_0 ),
        .I5(\FSM_sequential_state[1]_i_8_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555577777775)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(pwm_out),
        .I1(state2),
        .I2(\FSM_sequential_state[1]_i_8_n_0 ),
        .I3(\FSM_sequential_state[1]_i_7_n_0 ),
        .I4(\FSM_sequential_state[1]_i_6_n_0 ),
        .I5(state11_in),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(in9[6]),
        .I1(in9[4]),
        .I2(in9[10]),
        .I3(\count_v_reg_n_0_[0] ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(in9[5]),
        .I1(in9[3]),
        .I2(in9[9]),
        .I3(in9[2]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(in9[11]),
        .I1(in9[1]),
        .I2(in9[8]),
        .I3(in9[7]),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "pwm_high:01,load_new_ampl:00,pwm_low:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fsm_ce_n_4),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "pwm_high:01,load_new_ampl:00,pwm_low:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fsm_ce_n_3),
        .Q(state__0[1]),
        .R(1'b0));
  CARRY4 count_v0_carry
       (.CI(1'b0),
        .CO({count_v0_carry_n_0,count_v0_carry_n_1,count_v0_carry_n_2,count_v0_carry_n_3}),
        .CYINIT(\count_v_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[4:1]),
        .S({\count_v_reg_n_0_[4] ,\count_v_reg_n_0_[3] ,\count_v_reg_n_0_[2] ,\count_v_reg_n_0_[1] }));
  CARRY4 count_v0_carry__0
       (.CI(count_v0_carry_n_0),
        .CO({count_v0_carry__0_n_0,count_v0_carry__0_n_1,count_v0_carry__0_n_2,count_v0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S({\count_v_reg_n_0_[8] ,\count_v_reg_n_0_[7] ,\count_v_reg_n_0_[6] ,\count_v_reg_n_0_[5] }));
  CARRY4 count_v0_carry__1
       (.CI(count_v0_carry__0_n_0),
        .CO({NLW_count_v0_carry__1_CO_UNCONNECTED[3:2],count_v0_carry__1_n_2,count_v0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count_v0_carry__1_O_UNCONNECTED[3],in9[11:9]}),
        .S({1'b0,\count_v_reg_n_0_[11] ,\count_v_reg_n_0_[10] ,\count_v_reg_n_0_[9] }));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count_v[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\count_v_reg_n_0_[0] ),
        .O(\count_v[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(\count_v[0]_i_1_n_0 ),
        .Q(\count_v_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[10]),
        .Q(\count_v_reg_n_0_[10] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[11]),
        .Q(\count_v_reg_n_0_[11] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[1]),
        .Q(\count_v_reg_n_0_[1] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[2]),
        .Q(\count_v_reg_n_0_[2] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[3]),
        .Q(\count_v_reg_n_0_[3] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[4]),
        .Q(\count_v_reg_n_0_[4] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[5]),
        .Q(\count_v_reg_n_0_[5] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[6]),
        .Q(\count_v_reg_n_0_[6] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[7]),
        .Q(\count_v_reg_n_0_[7] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[8]),
        .Q(\count_v_reg_n_0_[8] ),
        .R(fsm_ce_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_v_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ce_s),
        .D(in9[9]),
        .Q(\count_v_reg_n_0_[9] ),
        .R(fsm_ce_n_1));
  mainBD_modulator_axi_ip_0_0_frequency_trigger_0 fsm_ce
       (.E(fsm_ce_n_2),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0]_0 ),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state[0]_i_2_n_0 ),
        .\FSM_sequential_state_reg[0]_1 (\FSM_sequential_state[0]_i_3_n_0 ),
        .\FSM_sequential_state_reg[1] (\FSM_sequential_state[1]_i_2_n_0 ),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state[1]_i_3_n_0 ),
        .\FSM_sequential_state_reg[1]_1 (\FSM_sequential_state[1]_i_5_n_0 ),
        .Q(Q),
        .ce_s(ce_s),
        .\count_v_reg[11] (state__0[0]),
        .\count_v_reg[11]_0 (state__0[1]),
        .freq_trig_reg_0(fsm_ce_n_1),
        .freq_trig_reg_1(fsm_ce_n_3),
        .freq_trig_reg_2(fsm_ce_n_4),
        .freq_trig_reg_3(freq_trig_reg),
        .\minusOp_inferred__0/i__carry__3_0 (\minusOp_inferred__0/i__carry__3 ),
        .s00_axi_aclk(s00_axi_aclk));
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 gtOp_carry__0
       (.CI(gtOp_carry_n_0),
        .CO({NLW_gtOp_carry__0_CO_UNCONNECTED[3:2],CO,gtOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\FSM_sequential_state[1]_i_4 }),
        .O(NLW_gtOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,\FSM_sequential_state[1]_i_4_0 }));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_1__3
       (.I0(in9[11]),
        .I1(threshold_v[11]),
        .I2(threshold_v[10]),
        .I3(in9[10]),
        .O(i__carry__0_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_2__3
       (.I0(in9[9]),
        .I1(threshold_v[9]),
        .I2(threshold_v[8]),
        .I3(in9[8]),
        .O(i__carry__0_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_3__3
       (.I0(threshold_v[11]),
        .I1(in9[11]),
        .I2(threshold_v[10]),
        .I3(in9[10]),
        .O(i__carry__0_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_4__3
       (.I0(threshold_v[8]),
        .I1(in9[8]),
        .I2(threshold_v[9]),
        .I3(in9[9]),
        .O(i__carry__0_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_1__3
       (.I0(in9[7]),
        .I1(threshold_v[7]),
        .I2(threshold_v[6]),
        .I3(in9[6]),
        .O(i__carry_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__4
       (.I0(in9[10]),
        .I1(threshold_v[10]),
        .I2(in9[11]),
        .I3(threshold_v[11]),
        .I4(threshold_v[9]),
        .I5(in9[9]),
        .O(i__carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_2__3
       (.I0(in9[5]),
        .I1(threshold_v[5]),
        .I2(threshold_v[4]),
        .I3(in9[4]),
        .O(i__carry_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__4
       (.I0(threshold_v[8]),
        .I1(in9[8]),
        .I2(in9[6]),
        .I3(threshold_v[6]),
        .I4(in9[7]),
        .I5(threshold_v[7]),
        .O(i__carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_3__3
       (.I0(in9[3]),
        .I1(threshold_v[3]),
        .I2(threshold_v[2]),
        .I3(in9[2]),
        .O(i__carry_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__4
       (.I0(in9[4]),
        .I1(threshold_v[4]),
        .I2(in9[5]),
        .I3(threshold_v[5]),
        .I4(threshold_v[3]),
        .I5(in9[3]),
        .O(i__carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'hD444)) 
    i__carry_i_4__3
       (.I0(in9[1]),
        .I1(threshold_v[1]),
        .I2(\count_v_reg_n_0_[0] ),
        .I3(threshold_v[0]),
        .O(i__carry_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    i__carry_i_4__4
       (.I0(threshold_v[2]),
        .I1(in9[2]),
        .I2(in9[1]),
        .I3(threshold_v[1]),
        .I4(\count_v_reg_n_0_[0] ),
        .I5(threshold_v[0]),
        .O(i__carry_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(threshold_v[7]),
        .I1(in9[7]),
        .I2(threshold_v[6]),
        .I3(in9[6]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(threshold_v[5]),
        .I1(in9[5]),
        .I2(threshold_v[4]),
        .I3(in9[4]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(threshold_v[2]),
        .I1(in9[2]),
        .I2(threshold_v[3]),
        .I3(in9[3]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry_i_8__1
       (.I0(threshold_v[0]),
        .I1(\count_v_reg_n_0_[0] ),
        .I2(threshold_v[1]),
        .I3(in9[1]),
        .O(i__carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_out_INST_0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(pwm_out));
  CARRY4 \state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({state11_in,\state1_inferred__0/i__carry_n_1 ,\state1_inferred__0/i__carry_n_2 ,\state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}));
  CARRY4 \state2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state2_inferred__0/i__carry_n_0 ,\state2_inferred__0/i__carry_n_1 ,\state2_inferred__0/i__carry_n_2 ,\state2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}),
        .O(\NLW_state2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  CARRY4 \state2_inferred__0/i__carry__0 
       (.CI(\state2_inferred__0/i__carry_n_0 ),
        .CO({\NLW_state2_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],state2,\state2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0}),
        .O(\NLW_state2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_3__3_n_0,i__carry__0_i_4__3_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[0] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[0]),
        .Q(threshold_v[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[10] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[10]),
        .Q(threshold_v[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[11] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[11]),
        .Q(threshold_v[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[1] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[1]),
        .Q(threshold_v[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[2] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[2]),
        .Q(threshold_v[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[3] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[3]),
        .Q(threshold_v[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[4] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[4]),
        .Q(threshold_v[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[5] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[5]),
        .Q(threshold_v[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[6] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[6]),
        .Q(threshold_v[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[7] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[7]),
        .Q(threshold_v[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[8] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[8]),
        .Q(threshold_v[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \threshold_v_reg[9] 
       (.C(s00_axi_aclk),
        .CE(fsm_ce_n_2),
        .D(DOADO[9]),
        .Q(threshold_v[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sine" *) 
module mainBD_modulator_axi_ip_0_0_sine
   (DOADO,
    \FSM_sequential_state_reg[0] ,
    S,
    DI,
    sine_s_reg_0,
    sine_s_reg_1,
    s00_axi_aclk,
    CO,
    state__0,
    D);
  output [11:0]DOADO;
  output \FSM_sequential_state_reg[0] ;
  output [3:0]S;
  output [3:0]DI;
  output [1:0]sine_s_reg_0;
  output [1:0]sine_s_reg_1;
  input s00_axi_aclk;
  input [0:0]CO;
  input [1:0]state__0;
  input [7:0]D;

  wire [0:0]CO;
  wire [7:0]D;
  wire [3:0]DI;
  wire [11:0]DOADO;
  wire \FSM_sequential_state[1]_i_10_n_0 ;
  wire \FSM_sequential_state[1]_i_11_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire [3:0]S;
  wire [7:0]ampl_cnt_s;
  wire s00_axi_aclk;
  wire [1:0]sine_s_reg_0;
  wire [1:0]sine_s_reg_1;
  wire [1:0]state__0;
  wire [15:12]NLW_sine_s_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_sine_s_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_sine_s_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_sine_s_reg_DOPBDOP_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_10 
       (.I0(DOADO[7]),
        .I1(DOADO[6]),
        .I2(DOADO[3]),
        .I3(DOADO[2]),
        .O(\FSM_sequential_state[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[1]_i_11 
       (.I0(DOADO[1]),
        .I1(DOADO[0]),
        .I2(DOADO[4]),
        .I3(DOADO[5]),
        .I4(DOADO[10]),
        .I5(DOADO[11]),
        .O(\FSM_sequential_state[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000FF10)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state[1]_i_9_n_0 ),
        .I1(\FSM_sequential_state[1]_i_10_n_0 ),
        .I2(\FSM_sequential_state[1]_i_11_n_0 ),
        .I3(CO),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(DOADO[8]),
        .I1(DOADO[9]),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_cnt_s_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(ampl_cnt_s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_cnt_s_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(ampl_cnt_s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_cnt_s_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(ampl_cnt_s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_cnt_s_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(ampl_cnt_s[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_cnt_s_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(ampl_cnt_s[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_cnt_s_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(ampl_cnt_s[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_cnt_s_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(ampl_cnt_s[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_cnt_s_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(ampl_cnt_s[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry__0_i_1
       (.I0(DOADO[10]),
        .I1(DOADO[11]),
        .O(sine_s_reg_1[1]));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry__0_i_2
       (.I0(DOADO[8]),
        .I1(DOADO[9]),
        .O(sine_s_reg_1[0]));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry__0_i_3
       (.I0(DOADO[11]),
        .I1(DOADO[10]),
        .O(sine_s_reg_0[1]));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry__0_i_4
       (.I0(DOADO[9]),
        .I1(DOADO[8]),
        .O(sine_s_reg_0[0]));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_1
       (.I0(DOADO[6]),
        .I1(DOADO[7]),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_2
       (.I0(DOADO[4]),
        .I1(DOADO[5]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_3
       (.I0(DOADO[2]),
        .I1(DOADO[3]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hE)) 
    gtOp_carry_i_4
       (.I0(DOADO[1]),
        .I1(DOADO[0]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_5
       (.I0(DOADO[7]),
        .I1(DOADO[6]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_6
       (.I0(DOADO[5]),
        .I1(DOADO[4]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_7
       (.I0(DOADO[3]),
        .I1(DOADO[2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_8
       (.I0(DOADO[0]),
        .I1(DOADO[1]),
        .O(S[0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d12" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "U0/modulator_axi_ip_v1_0_S00_AXI_inst/pwmmodulator/sine/sine_s" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "11" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "11" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0AE00AB10A810A510A2109F009C0098E095D092B08FA08C808960863083107FF),
    .INIT_01(256'h0D820D5E0D380D120CEA0CC20C9A0C700C460C1B0BF00BC40B970B6A0B3D0B0E),
    .INIT_02(256'h0F4E0F390F230F0C0EF40EDB0EC00EA50E890E6B0E4D0E2D0E0D0DEC0DCA0DA6),
    .INIT_03(256'h0FFD0FFC0FF80FF40FEF0FE80FE00FD70FCC0FC10FB40FA60F970F860F750F62),
    .INIT_04(256'h0F750F860F970FA60FB40FC10FCC0FD70FE00FE80FEF0FF40FF80FFC0FFD0FFE),
    .INIT_05(256'h0DCA0DEC0E0D0E2D0E4D0E6B0E890EA50EC00EDB0EF40F0C0F230F390F4E0F62),
    .INIT_06(256'h0B3D0B6A0B970BC40BF00C1B0C460C700C9A0CC20CEA0D120D380D5E0D820DA6),
    .INIT_07(256'h08310863089608C808FA092B095D098E09C009F00A210A510A810AB10AE00B0E),
    .INIT_08(256'h051E054D057D05AD05DD060E063E067006A106D3070407360768079B07CD07FF),
    .INIT_09(256'h027C02A002C602EC0314033C0364038E03B803E3040E043A0467049404C104F0),
    .INIT_0A(256'h00B000C500DB00F2010A0123013E01590175019301B101D101F1021202340258),
    .INIT_0B(256'h000100020006000A000F0016001E00270032003D004A0058006700780089009C),
    .INIT_0C(256'h0089007800670058004A003D00320027001E0016000F000A0006000200010000),
    .INIT_0D(256'h0234021201F101D101B1019301750159013E0123010A00F200DB00C500B0009C),
    .INIT_0E(256'h04C104940467043A040E03E303B8038E0364033C031402EC02C602A0027C0258),
    .INIT_0F(256'h07CD079B07680736070406D306A10670063E060E05DD05AD057D054D051E04F0),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    sine_s_reg
       (.ADDRARDADDR({1'b0,1'b0,ampl_cnt_s,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_sine_s_reg_DOADO_UNCONNECTED[15:12],DOADO}),
        .DOBDO(NLW_sine_s_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_sine_s_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_sine_s_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
