// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Jan  5 17:01:07 2025
// Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Ps2_kb_ps2_keyboard_to_ascii_0_0_sim_netlist.v
// Design      : Ps2_kb_ps2_keyboard_to_ascii_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Ps2_kb_ps2_keyboard_to_ascii_0_0,ps2_keyboard_to_ascii,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ps2_keyboard_to_ascii,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    ps2_clk,
    ps2_data,
    ascii_new,
    ascii_code);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Ps2_kb_clk_0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ps2_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ps2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Ps2_kb_ps2_clk_0, INSERT_VIP 0" *) input ps2_clk;
  input ps2_data;
  output ascii_new;
  output [6:0]ascii_code;

  wire [6:0]ascii_code;
  wire ascii_new;
  wire clk;
  wire ps2_clk;
  wire ps2_data;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_to_ascii U0
       (.D({ps2_data,ps2_clk}),
        .ascii_code(ascii_code),
        .ascii_new(ascii_new),
        .clk(clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce
   (CLK,
    clear,
    clk,
    Q);
  output CLK;
  output clear;
  input clk;
  input [0:0]Q;

  wire CLK;
  wire [0:0]Q;
  wire clear;
  wire clk;
  wire \counter_out[7]_i_3_n_0 ;
  wire \counter_out_reg_n_0_[0] ;
  wire \counter_out_reg_n_0_[1] ;
  wire \counter_out_reg_n_0_[2] ;
  wire \counter_out_reg_n_0_[3] ;
  wire \counter_out_reg_n_0_[4] ;
  wire \counter_out_reg_n_0_[5] ;
  wire \counter_out_reg_n_0_[6] ;
  wire \counter_out_reg_n_0_[7] ;
  wire counter_set;
  wire \flipflops_reg_n_0_[0] ;
  wire p_0_in;
  wire [8:0]plusOp;
  wire result_i_1_n_0;
  wire sel;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_idle[0]_i_1 
       (.I0(CLK),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_out[0]_i_1 
       (.I0(\counter_out_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[1]_i_1 
       (.I0(\counter_out_reg_n_0_[0] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_out[2]_i_1 
       (.I0(\counter_out_reg_n_0_[1] ),
        .I1(\counter_out_reg_n_0_[0] ),
        .I2(\counter_out_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_out[3]_i_1 
       (.I0(\counter_out_reg_n_0_[2] ),
        .I1(\counter_out_reg_n_0_[0] ),
        .I2(\counter_out_reg_n_0_[1] ),
        .I3(\counter_out_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_out[4]_i_1 
       (.I0(\counter_out_reg_n_0_[3] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .I2(\counter_out_reg_n_0_[0] ),
        .I3(\counter_out_reg_n_0_[2] ),
        .I4(\counter_out_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_out[5]_i_1 
       (.I0(\counter_out_reg_n_0_[4] ),
        .I1(\counter_out_reg_n_0_[2] ),
        .I2(\counter_out_reg_n_0_[0] ),
        .I3(\counter_out_reg_n_0_[1] ),
        .I4(\counter_out_reg_n_0_[3] ),
        .I5(\counter_out_reg_n_0_[5] ),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter_out[6]_i_1 
       (.I0(\counter_out[7]_i_3_n_0 ),
        .I1(\counter_out_reg_n_0_[6] ),
        .O(plusOp[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[7]_i_1 
       (.I0(\flipflops_reg_n_0_[0] ),
        .I1(p_0_in),
        .O(counter_set));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter_out[7]_i_2 
       (.I0(\counter_out_reg_n_0_[6] ),
        .I1(\counter_out[7]_i_3_n_0 ),
        .I2(\counter_out_reg_n_0_[7] ),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter_out[7]_i_3 
       (.I0(\counter_out_reg_n_0_[4] ),
        .I1(\counter_out_reg_n_0_[2] ),
        .I2(\counter_out_reg_n_0_[0] ),
        .I3(\counter_out_reg_n_0_[1] ),
        .I4(\counter_out_reg_n_0_[3] ),
        .I5(\counter_out_reg_n_0_[5] ),
        .O(\counter_out[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \counter_out[8]_inv_i_1 
       (.I0(\counter_out_reg_n_0_[7] ),
        .I1(\counter_out[7]_i_3_n_0 ),
        .I2(\counter_out_reg_n_0_[6] ),
        .O(plusOp[8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[0]),
        .Q(\counter_out_reg_n_0_[0] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[1]),
        .Q(\counter_out_reg_n_0_[1] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[2]),
        .Q(\counter_out_reg_n_0_[2] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[3]),
        .Q(\counter_out_reg_n_0_[3] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[4]),
        .Q(\counter_out_reg_n_0_[4] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[5]),
        .Q(\counter_out_reg_n_0_[5] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[6]),
        .Q(\counter_out_reg_n_0_[6] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[7]),
        .Q(\counter_out_reg_n_0_[7] ),
        .R(counter_set));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \counter_out_reg[8]_inv 
       (.C(clk),
        .CE(sel),
        .D(plusOp[8]),
        .Q(sel),
        .S(counter_set));
  FDRE \flipflops_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(Q),
        .Q(\flipflops_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \flipflops_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\flipflops_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    result_i_1
       (.I0(sel),
        .I1(p_0_in),
        .I2(\flipflops_reg_n_0_[0] ),
        .I3(CLK),
        .O(result_i_1_n_0));
  FDRE result_reg
       (.C(clk),
        .CE(1'b1),
        .D(result_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0
   (D,
    clk,
    Q);
  output [0:0]D;
  input clk;
  input [0:0]Q;

  wire [0:0]D;
  wire [0:0]Q;
  wire clk;
  wire \counter_out[7]_i_3__0_n_0 ;
  wire [8:8]counter_out_reg;
  wire \counter_out_reg_n_0_[0] ;
  wire \counter_out_reg_n_0_[1] ;
  wire \counter_out_reg_n_0_[2] ;
  wire \counter_out_reg_n_0_[3] ;
  wire \counter_out_reg_n_0_[4] ;
  wire \counter_out_reg_n_0_[5] ;
  wire \counter_out_reg_n_0_[6] ;
  wire \counter_out_reg_n_0_[7] ;
  wire counter_set;
  wire \flipflops_reg_n_0_[0] ;
  wire p_0_in;
  wire [8:0]plusOp__0;
  wire result_i_1__0_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \counter_out[0]_i_1__0 
       (.I0(\counter_out_reg_n_0_[0] ),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[1]_i_1__0 
       (.I0(\counter_out_reg_n_0_[0] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_out[2]_i_1__0 
       (.I0(\counter_out_reg_n_0_[1] ),
        .I1(\counter_out_reg_n_0_[0] ),
        .I2(\counter_out_reg_n_0_[2] ),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_out[3]_i_1__0 
       (.I0(\counter_out_reg_n_0_[2] ),
        .I1(\counter_out_reg_n_0_[0] ),
        .I2(\counter_out_reg_n_0_[1] ),
        .I3(\counter_out_reg_n_0_[3] ),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_out[4]_i_1__0 
       (.I0(\counter_out_reg_n_0_[3] ),
        .I1(\counter_out_reg_n_0_[1] ),
        .I2(\counter_out_reg_n_0_[0] ),
        .I3(\counter_out_reg_n_0_[2] ),
        .I4(\counter_out_reg_n_0_[4] ),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_out[5]_i_1__0 
       (.I0(\counter_out_reg_n_0_[4] ),
        .I1(\counter_out_reg_n_0_[2] ),
        .I2(\counter_out_reg_n_0_[0] ),
        .I3(\counter_out_reg_n_0_[1] ),
        .I4(\counter_out_reg_n_0_[3] ),
        .I5(\counter_out_reg_n_0_[5] ),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter_out[6]_i_1__0 
       (.I0(\counter_out[7]_i_3__0_n_0 ),
        .I1(\counter_out_reg_n_0_[6] ),
        .O(plusOp__0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[7]_i_1__0 
       (.I0(\flipflops_reg_n_0_[0] ),
        .I1(p_0_in),
        .O(counter_set));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter_out[7]_i_2__0 
       (.I0(\counter_out_reg_n_0_[6] ),
        .I1(\counter_out[7]_i_3__0_n_0 ),
        .I2(\counter_out_reg_n_0_[7] ),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter_out[7]_i_3__0 
       (.I0(\counter_out_reg_n_0_[4] ),
        .I1(\counter_out_reg_n_0_[2] ),
        .I2(\counter_out_reg_n_0_[0] ),
        .I3(\counter_out_reg_n_0_[1] ),
        .I4(\counter_out_reg_n_0_[3] ),
        .I5(\counter_out_reg_n_0_[5] ),
        .O(\counter_out[7]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \counter_out[8]_inv_i_1__0 
       (.I0(\counter_out_reg_n_0_[7] ),
        .I1(\counter_out[7]_i_3__0_n_0 ),
        .I2(\counter_out_reg_n_0_[6] ),
        .O(plusOp__0[8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[0] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[0]),
        .Q(\counter_out_reg_n_0_[0] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[1] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[1]),
        .Q(\counter_out_reg_n_0_[1] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[2] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[2]),
        .Q(\counter_out_reg_n_0_[2] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[3] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[3]),
        .Q(\counter_out_reg_n_0_[3] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[4] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[4]),
        .Q(\counter_out_reg_n_0_[4] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[5] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[5]),
        .Q(\counter_out_reg_n_0_[5] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[6] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[6]),
        .Q(\counter_out_reg_n_0_[6] ),
        .R(counter_set));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[7] 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[7]),
        .Q(\counter_out_reg_n_0_[7] ),
        .R(counter_set));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \counter_out_reg[8]_inv 
       (.C(clk),
        .CE(counter_out_reg),
        .D(plusOp__0[8]),
        .Q(counter_out_reg),
        .S(counter_set));
  FDRE \flipflops_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(Q),
        .Q(\flipflops_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \flipflops_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\flipflops_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE40)) 
    result_i_1__0
       (.I0(counter_out_reg),
        .I1(p_0_in),
        .I2(\flipflops_reg_n_0_[0] ),
        .I3(D),
        .O(result_i_1__0_n_0));
  FDRE result_reg
       (.C(clk),
        .CE(1'b1),
        .D(result_i_1__0_n_0),
        .Q(D),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard
   (ps2_code_new,
    break_reg,
    break_reg_0,
    \FSM_sequential_state_reg[1] ,
    D,
    E,
    \FSM_sequential_state_reg[0] ,
    break_reg_1,
    break_reg_2,
    break_reg_3,
    break_reg_4,
    \ascii_reg[7] ,
    \FSM_sequential_state_reg[1]_0 ,
    clk,
    \FSM_sequential_state_reg[1]_1 ,
    state,
    \FSM_sequential_state_reg[1]_2 ,
    prev_ps2_code_new,
    e0_code,
    control_r_reg,
    control_l_reg,
    shift_r_reg,
    shift_l_reg,
    caps_lock_reg,
    Q,
    ascii_new,
    \sync_ffs_reg[1]_0 );
  output ps2_code_new;
  output break_reg;
  output break_reg_0;
  output \FSM_sequential_state_reg[1] ;
  output [6:0]D;
  output [0:0]E;
  output \FSM_sequential_state_reg[0] ;
  output break_reg_1;
  output break_reg_2;
  output break_reg_3;
  output break_reg_4;
  output \ascii_reg[7] ;
  output \FSM_sequential_state_reg[1]_0 ;
  input clk;
  input \FSM_sequential_state_reg[1]_1 ;
  input [0:0]state;
  input \FSM_sequential_state_reg[1]_2 ;
  input prev_ps2_code_new;
  input e0_code;
  input control_r_reg;
  input control_l_reg;
  input shift_r_reg;
  input shift_l_reg;
  input caps_lock_reg;
  input [0:0]Q;
  input ascii_new;
  input [1:0]\sync_ffs_reg[1]_0 ;

  wire [6:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[1]_2 ;
  wire [0:0]Q;
  wire \ascii[0]_i_10_n_0 ;
  wire \ascii[0]_i_11_n_0 ;
  wire \ascii[0]_i_12_n_0 ;
  wire \ascii[0]_i_3_n_0 ;
  wire \ascii[0]_i_4_n_0 ;
  wire \ascii[0]_i_5_n_0 ;
  wire \ascii[0]_i_6_n_0 ;
  wire \ascii[0]_i_7_n_0 ;
  wire \ascii[0]_i_9_n_0 ;
  wire \ascii[1]_i_10_n_0 ;
  wire \ascii[1]_i_11_n_0 ;
  wire \ascii[1]_i_3_n_0 ;
  wire \ascii[1]_i_4_n_0 ;
  wire \ascii[1]_i_5_n_0 ;
  wire \ascii[1]_i_6_n_0 ;
  wire \ascii[1]_i_8_n_0 ;
  wire \ascii[1]_i_9_n_0 ;
  wire \ascii[2]_i_10_n_0 ;
  wire \ascii[2]_i_11_n_0 ;
  wire \ascii[2]_i_12_n_0 ;
  wire \ascii[2]_i_3_n_0 ;
  wire \ascii[2]_i_4_n_0 ;
  wire \ascii[2]_i_5_n_0 ;
  wire \ascii[2]_i_7_n_0 ;
  wire \ascii[2]_i_9_n_0 ;
  wire \ascii[3]_i_10_n_0 ;
  wire \ascii[3]_i_11_n_0 ;
  wire \ascii[3]_i_12_n_0 ;
  wire \ascii[3]_i_3_n_0 ;
  wire \ascii[3]_i_4_n_0 ;
  wire \ascii[3]_i_5_n_0 ;
  wire \ascii[3]_i_7_n_0 ;
  wire \ascii[3]_i_9_n_0 ;
  wire \ascii[4]_i_10_n_0 ;
  wire \ascii[4]_i_2_n_0 ;
  wire \ascii[4]_i_3_n_0 ;
  wire \ascii[4]_i_4_n_0 ;
  wire \ascii[4]_i_5_n_0 ;
  wire \ascii[4]_i_7_n_0 ;
  wire \ascii[4]_i_8_n_0 ;
  wire \ascii[4]_i_9_n_0 ;
  wire \ascii[5]_i_10_n_0 ;
  wire \ascii[5]_i_11_n_0 ;
  wire \ascii[5]_i_12_n_0 ;
  wire \ascii[5]_i_13_n_0 ;
  wire \ascii[5]_i_14_n_0 ;
  wire \ascii[5]_i_15_n_0 ;
  wire \ascii[5]_i_16_n_0 ;
  wire \ascii[5]_i_17_n_0 ;
  wire \ascii[5]_i_2_n_0 ;
  wire \ascii[5]_i_4_n_0 ;
  wire \ascii[6]_i_2_n_0 ;
  wire \ascii[6]_i_3_n_0 ;
  wire \ascii[6]_i_4_n_0 ;
  wire \ascii[6]_i_5_n_0 ;
  wire \ascii[6]_i_6_n_0 ;
  wire \ascii[6]_i_7_n_0 ;
  wire \ascii[6]_i_8_n_0 ;
  wire \ascii[7]_i_2_n_0 ;
  wire \ascii[7]_i_3_n_0 ;
  wire \ascii[7]_i_4_n_0 ;
  wire \ascii[7]_i_5_n_0 ;
  wire \ascii[7]_i_6_n_0 ;
  wire \ascii[7]_i_7_n_0 ;
  wire \ascii[7]_i_8_n_0 ;
  wire ascii_new;
  wire \ascii_reg[0]_i_2_n_0 ;
  wire \ascii_reg[0]_i_8_n_0 ;
  wire \ascii_reg[1]_i_2_n_0 ;
  wire \ascii_reg[1]_i_7_n_0 ;
  wire \ascii_reg[2]_i_2_n_0 ;
  wire \ascii_reg[2]_i_6_n_0 ;
  wire \ascii_reg[2]_i_8_n_0 ;
  wire \ascii_reg[3]_i_2_n_0 ;
  wire \ascii_reg[3]_i_6_n_0 ;
  wire \ascii_reg[3]_i_8_n_0 ;
  wire \ascii_reg[4]_i_6_n_0 ;
  wire \ascii_reg[5]_i_3_n_0 ;
  wire \ascii_reg[5]_i_5_n_0 ;
  wire \ascii_reg[5]_i_6_n_0 ;
  wire \ascii_reg[5]_i_7_n_0 ;
  wire \ascii_reg[5]_i_8_n_0 ;
  wire \ascii_reg[5]_i_9_n_0 ;
  wire \ascii_reg[7] ;
  wire break_i_2_n_0;
  wire break_i_3_n_0;
  wire break_i_4_n_0;
  wire break_i_5_n_0;
  wire break_reg;
  wire break_reg_0;
  wire break_reg_1;
  wire break_reg_2;
  wire break_reg_3;
  wire break_reg_4;
  wire caps_lock_i_2_n_0;
  wire caps_lock_i_3_n_0;
  wire caps_lock_reg;
  wire clear;
  wire clk;
  wire control_l_i_2_n_0;
  wire control_l_reg;
  wire control_r_i_2_n_0;
  wire control_r_reg;
  wire \count_idle[0]_i_2_n_0 ;
  wire \count_idle[0]_i_4_n_0 ;
  wire \count_idle[0]_i_5_n_0 ;
  wire \count_idle[0]_i_6_n_0 ;
  wire [11:0]count_idle_reg;
  wire \count_idle_reg[0]_i_3_n_0 ;
  wire \count_idle_reg[0]_i_3_n_1 ;
  wire \count_idle_reg[0]_i_3_n_2 ;
  wire \count_idle_reg[0]_i_3_n_3 ;
  wire \count_idle_reg[0]_i_3_n_4 ;
  wire \count_idle_reg[0]_i_3_n_5 ;
  wire \count_idle_reg[0]_i_3_n_6 ;
  wire \count_idle_reg[0]_i_3_n_7 ;
  wire \count_idle_reg[4]_i_1_n_0 ;
  wire \count_idle_reg[4]_i_1_n_1 ;
  wire \count_idle_reg[4]_i_1_n_2 ;
  wire \count_idle_reg[4]_i_1_n_3 ;
  wire \count_idle_reg[4]_i_1_n_4 ;
  wire \count_idle_reg[4]_i_1_n_5 ;
  wire \count_idle_reg[4]_i_1_n_6 ;
  wire \count_idle_reg[4]_i_1_n_7 ;
  wire \count_idle_reg[8]_i_1_n_1 ;
  wire \count_idle_reg[8]_i_1_n_2 ;
  wire \count_idle_reg[8]_i_1_n_3 ;
  wire \count_idle_reg[8]_i_1_n_4 ;
  wire \count_idle_reg[8]_i_1_n_5 ;
  wire \count_idle_reg[8]_i_1_n_6 ;
  wire \count_idle_reg[8]_i_1_n_7 ;
  wire debounce_ps2_data_n_0;
  wire e0_code;
  wire e0_code_i_2_n_0;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire prev_ps2_code_new;
  wire [7:0]ps2_code;
  wire ps2_code_new;
  wire ps2_code_new0;
  wire ps2_code_new_i_2_n_0;
  wire ps2_code_new_i_3_n_0;
  wire ps2_code_new_i_4_n_0;
  wire ps2_code_new_i_5_n_0;
  wire \ps2_word_reg_n_0_[0] ;
  wire \ps2_word_reg_n_0_[10] ;
  wire \ps2_word_reg_n_0_[8] ;
  wire \ps2_word_reg_n_0_[9] ;
  wire result;
  wire shift_l_i_2_n_0;
  wire shift_l_reg;
  wire shift_r_i_2_n_0;
  wire shift_r_reg;
  wire [0:0]state;
  wire [1:0]sync_ffs;
  wire [1:0]\sync_ffs_reg[1]_0 ;
  wire [3:3]\NLW_count_idle_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000FFFF47440000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(\FSM_sequential_state_reg[1]_2 ),
        .I2(prev_ps2_code_new),
        .I3(ps2_code_new),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(state),
        .O(break_reg_0));
  LUT6 #(
    .INIT(64'h0055FFFFF3000000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(ps2_code[7]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(\FSM_sequential_state_reg[1]_2 ),
        .O(break_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[3]),
        .I3(ps2_code[5]),
        .I4(ps2_code[0]),
        .I5(ps2_code[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(ps2_code[7]),
        .I3(\FSM_sequential_state_reg[1]_2 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEDEDEDE8EDEDEDED)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(ps2_code[1]),
        .I1(\FSM_sequential_state[1]_i_5_n_0 ),
        .I2(ps2_code[2]),
        .I3(ps2_code[5]),
        .I4(caps_lock_i_3_n_0),
        .I5(ps2_code[6]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(ps2_code[6]),
        .I1(ps2_code[4]),
        .I2(ps2_code[3]),
        .I3(ps2_code[5]),
        .I4(ps2_code[0]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ascii[0]_i_1 
       (.I0(control_r_reg),
        .I1(\ascii_reg[0]_i_2_n_0 ),
        .I2(control_l_reg),
        .I3(\ascii[0]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h82AA8282EFFF9AAA)) 
    \ascii[0]_i_10 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA2AA828AEFFF92AA)) 
    \ascii[0]_i_11 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5F555F3718224F55)) 
    \ascii[0]_i_12 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[3]),
        .I3(ps2_code[4]),
        .I4(ps2_code[5]),
        .I5(ps2_code[6]),
        .O(\ascii[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \ascii[0]_i_3 
       (.I0(shift_r_reg),
        .I1(\ascii[0]_i_6_n_0 ),
        .I2(shift_l_reg),
        .I3(\ascii[0]_i_7_n_0 ),
        .I4(ps2_code[7]),
        .I5(\ascii_reg[0]_i_8_n_0 ),
        .O(\ascii[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h003F0000BFBFFFFF)) 
    \ascii[0]_i_4 
       (.I0(ps2_code[2]),
        .I1(ps2_code[5]),
        .I2(ps2_code[0]),
        .I3(ps2_code[6]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h3C038F8F)) 
    \ascii[0]_i_5 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[5]),
        .I3(ps2_code[4]),
        .I4(ps2_code[3]),
        .O(\ascii[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0EFEFBFB0E0E0)) 
    \ascii[0]_i_6 
       (.I0(\ascii[4]_i_5_n_0 ),
        .I1(ps2_code[2]),
        .I2(ps2_code[7]),
        .I3(\ascii[0]_i_9_n_0 ),
        .I4(ps2_code[1]),
        .I5(\ascii[0]_i_10_n_0 ),
        .O(\ascii[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h75BA)) 
    \ascii[0]_i_7 
       (.I0(ps2_code[1]),
        .I1(ps2_code[3]),
        .I2(ps2_code[4]),
        .I3(ps2_code[2]),
        .O(\ascii[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h51545235F8EF5255)) 
    \ascii[0]_i_9 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[5]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ascii[1]_i_1 
       (.I0(control_r_reg),
        .I1(\ascii_reg[1]_i_2_n_0 ),
        .I2(control_l_reg),
        .I3(\ascii[1]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h22002408D5FF1008)) 
    \ascii[1]_i_10 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h04FB07FD05021010)) 
    \ascii[1]_i_11 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[3]),
        .I4(ps2_code[5]),
        .I5(ps2_code[4]),
        .O(\ascii[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \ascii[1]_i_3 
       (.I0(shift_r_reg),
        .I1(\ascii[1]_i_6_n_0 ),
        .I2(shift_l_reg),
        .I3(\ascii[4]_i_5_n_0 ),
        .I4(ps2_code[7]),
        .I5(\ascii_reg[1]_i_7_n_0 ),
        .O(\ascii[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC027CC27FFFFFFFF)) 
    \ascii[1]_i_4 
       (.I0(ps2_code[4]),
        .I1(ps2_code[3]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[6]),
        .I5(ps2_code[2]),
        .O(\ascii[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF00FF500350F3F0F)) 
    \ascii[1]_i_5 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[0]),
        .I3(ps2_code[3]),
        .I4(ps2_code[4]),
        .I5(ps2_code[5]),
        .O(\ascii[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \ascii[1]_i_6 
       (.I0(ps2_code[4]),
        .I1(ps2_code[3]),
        .I2(ps2_code[7]),
        .I3(\ascii[1]_i_8_n_0 ),
        .I4(ps2_code[1]),
        .I5(\ascii[1]_i_9_n_0 ),
        .O(\ascii[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h06FB05FD05023210)) 
    \ascii[1]_i_8 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[3]),
        .I4(ps2_code[5]),
        .I5(ps2_code[4]),
        .O(\ascii[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h22002408DDFF1008)) 
    \ascii[1]_i_9 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[1]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ascii[2]_i_1 
       (.I0(control_r_reg),
        .I1(\ascii_reg[2]_i_2_n_0 ),
        .I2(control_l_reg),
        .I3(\ascii[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h5017570255244055)) 
    \ascii[2]_i_10 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[4]),
        .I3(ps2_code[6]),
        .I4(ps2_code[5]),
        .I5(ps2_code[3]),
        .O(\ascii[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2A081008755D9AAA)) 
    \ascii[2]_i_11 
       (.I0(ps2_code[2]),
        .I1(ps2_code[5]),
        .I2(ps2_code[6]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5017570055245055)) 
    \ascii[2]_i_12 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[4]),
        .I3(ps2_code[6]),
        .I4(ps2_code[5]),
        .I5(ps2_code[3]),
        .O(\ascii[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CDCDFF00C8C8)) 
    \ascii[2]_i_3 
       (.I0(shift_r_reg),
        .I1(\ascii_reg[2]_i_6_n_0 ),
        .I2(shift_l_reg),
        .I3(\ascii[2]_i_7_n_0 ),
        .I4(ps2_code[7]),
        .I5(\ascii_reg[2]_i_8_n_0 ),
        .O(\ascii[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCFC0326A326A)) 
    \ascii[2]_i_4 
       (.I0(ps2_code[2]),
        .I1(ps2_code[4]),
        .I2(ps2_code[0]),
        .I3(ps2_code[6]),
        .I4(ps2_code[5]),
        .I5(ps2_code[3]),
        .O(\ascii[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFB0AABAAABA)) 
    \ascii[2]_i_5 
       (.I0(ps2_code[2]),
        .I1(ps2_code[4]),
        .I2(ps2_code[0]),
        .I3(ps2_code[6]),
        .I4(ps2_code[5]),
        .I5(ps2_code[3]),
        .O(\ascii[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2036)) 
    \ascii[2]_i_7 
       (.I0(ps2_code[1]),
        .I1(ps2_code[2]),
        .I2(ps2_code[4]),
        .I3(ps2_code[3]),
        .O(\ascii[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2A081008555D9AAA)) 
    \ascii[2]_i_9 
       (.I0(ps2_code[2]),
        .I1(ps2_code[5]),
        .I2(ps2_code[6]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[2]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ascii[3]_i_1 
       (.I0(control_r_reg),
        .I1(\ascii_reg[3]_i_2_n_0 ),
        .I2(control_l_reg),
        .I3(\ascii[3]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h57FE50F951ED77FF)) 
    \ascii[3]_i_10 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[3]),
        .I4(ps2_code[4]),
        .I5(ps2_code[5]),
        .O(\ascii[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD868AFDDFC7DF)) 
    \ascii[3]_i_11 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h57FC50F951ED75FF)) 
    \ascii[3]_i_12 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[3]),
        .I4(ps2_code[4]),
        .I5(ps2_code[5]),
        .O(\ascii[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CDCDFF00C8C8)) 
    \ascii[3]_i_3 
       (.I0(shift_r_reg),
        .I1(\ascii_reg[3]_i_6_n_0 ),
        .I2(shift_l_reg),
        .I3(\ascii[3]_i_7_n_0 ),
        .I4(ps2_code[7]),
        .I5(\ascii_reg[3]_i_8_n_0 ),
        .O(\ascii[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDF1CCF000751175)) 
    \ascii[3]_i_4 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[5]),
        .I4(ps2_code[3]),
        .I5(ps2_code[4]),
        .O(\ascii[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDDF1EEFA0075BBFF)) 
    \ascii[3]_i_5 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[5]),
        .I4(ps2_code[3]),
        .I5(ps2_code[4]),
        .O(\ascii[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h77FB)) 
    \ascii[3]_i_7 
       (.I0(ps2_code[1]),
        .I1(ps2_code[3]),
        .I2(ps2_code[4]),
        .I3(ps2_code[2]),
        .O(\ascii[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD868AFDDFCFDF)) 
    \ascii[3]_i_9 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ascii[4]_i_1 
       (.I0(control_r_reg),
        .I1(\ascii[4]_i_2_n_0 ),
        .I2(control_l_reg),
        .I3(\ascii[4]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0F2A4E7F00330200)) 
    \ascii[4]_i_10 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[3]),
        .I3(ps2_code[6]),
        .I4(ps2_code[5]),
        .I5(ps2_code[4]),
        .O(\ascii[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCCF3C8FFCFCFCBC8)) 
    \ascii[4]_i_2 
       (.I0(ps2_code[1]),
        .I1(ps2_code[2]),
        .I2(ps2_code[0]),
        .I3(ps2_code[5]),
        .I4(ps2_code[3]),
        .I5(ps2_code[4]),
        .O(\ascii[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \ascii[4]_i_3 
       (.I0(shift_r_reg),
        .I1(\ascii[4]_i_4_n_0 ),
        .I2(shift_l_reg),
        .I3(\ascii[4]_i_5_n_0 ),
        .I4(ps2_code[7]),
        .I5(\ascii_reg[4]_i_6_n_0 ),
        .O(\ascii[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \ascii[4]_i_4 
       (.I0(ps2_code[4]),
        .I1(ps2_code[3]),
        .I2(ps2_code[7]),
        .I3(\ascii[4]_i_7_n_0 ),
        .I4(ps2_code[1]),
        .I5(\ascii[4]_i_8_n_0 ),
        .O(\ascii[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ascii[4]_i_5 
       (.I0(ps2_code[4]),
        .I1(ps2_code[3]),
        .O(\ascii[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0A4E5D00113020)) 
    \ascii[4]_i_7 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[3]),
        .I3(ps2_code[6]),
        .I4(ps2_code[5]),
        .I5(ps2_code[4]),
        .O(\ascii[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0A202C28E7DF0400)) 
    \ascii[4]_i_8 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2A202828EFDF2800)) 
    \ascii[4]_i_9 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[4]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ascii[5]_i_1 
       (.I0(control_r_reg),
        .I1(\ascii[6]_i_2_n_0 ),
        .I2(control_l_reg),
        .I3(\ascii[5]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h2800555D4D5D2C00)) 
    \ascii[5]_i_10 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAEA90102A8AA0220)) 
    \ascii[5]_i_11 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[5]),
        .I3(ps2_code[4]),
        .I4(ps2_code[3]),
        .I5(ps2_code[6]),
        .O(\ascii[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2A227D7D7F7D3C28)) 
    \ascii[5]_i_12 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAF05AF07ED12DA70)) 
    \ascii[5]_i_13 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[3]),
        .I4(ps2_code[4]),
        .I5(ps2_code[5]),
        .O(\ascii[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h22227D7D7F753C28)) 
    \ascii[5]_i_14 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAF07AF07AF12FA70)) 
    \ascii[5]_i_15 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[3]),
        .I4(ps2_code[4]),
        .I5(ps2_code[5]),
        .O(\ascii[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2000555D4D552C00)) 
    \ascii[5]_i_16 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A2A2A6E8)) 
    \ascii[5]_i_17 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[3]),
        .I3(ps2_code[4]),
        .I4(ps2_code[5]),
        .I5(ps2_code[0]),
        .O(\ascii[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CDCDFF00C8C8)) 
    \ascii[5]_i_2 
       (.I0(shift_r_reg),
        .I1(\ascii_reg[5]_i_3_n_0 ),
        .I2(shift_l_reg),
        .I3(\ascii[5]_i_4_n_0 ),
        .I4(ps2_code[7]),
        .I5(\ascii_reg[5]_i_5_n_0 ),
        .O(\ascii[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8814)) 
    \ascii[5]_i_4 
       (.I0(ps2_code[1]),
        .I1(ps2_code[3]),
        .I2(ps2_code[4]),
        .I3(ps2_code[2]),
        .O(\ascii[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ascii[6]_i_1 
       (.I0(control_r_reg),
        .I1(\ascii[6]_i_2_n_0 ),
        .I2(control_l_reg),
        .I3(\ascii[6]_i_3_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ascii[6]_i_2 
       (.I0(ps2_code[0]),
        .I1(ps2_code[3]),
        .I2(ps2_code[6]),
        .I3(ps2_code[2]),
        .O(\ascii[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ascii[6]_i_3 
       (.I0(shift_r_reg),
        .I1(\ascii[6]_i_4_n_0 ),
        .I2(shift_l_reg),
        .I3(\ascii[6]_i_5_n_0 ),
        .O(\ascii[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \ascii[6]_i_4 
       (.I0(\ascii[4]_i_5_n_0 ),
        .I1(ps2_code[2]),
        .I2(ps2_code[7]),
        .I3(\ascii[6]_i_6_n_0 ),
        .I4(ps2_code[1]),
        .I5(\ascii[6]_i_7_n_0 ),
        .O(\ascii[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \ascii[6]_i_5 
       (.I0(\ascii[4]_i_5_n_0 ),
        .I1(ps2_code[2]),
        .I2(ps2_code[7]),
        .I3(\ascii[6]_i_8_n_0 ),
        .I4(ps2_code[1]),
        .I5(\ascii[6]_i_7_n_0 ),
        .O(\ascii[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0557447500556520)) 
    \ascii[6]_i_6 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[3]),
        .I3(ps2_code[6]),
        .I4(ps2_code[5]),
        .I5(ps2_code[4]),
        .O(\ascii[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A222820777D1028)) 
    \ascii[6]_i_7 
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(ps2_code[5]),
        .I3(ps2_code[0]),
        .I4(ps2_code[4]),
        .I5(ps2_code[3]),
        .O(\ascii[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0555445500554520)) 
    \ascii[6]_i_8 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[3]),
        .I3(ps2_code[6]),
        .I4(ps2_code[5]),
        .I5(ps2_code[4]),
        .O(\ascii[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5051504000000000)) 
    \ascii[7]_i_1 
       (.I0(state),
        .I1(control_r_reg),
        .I2(\ascii[7]_i_2_n_0 ),
        .I3(control_l_reg),
        .I4(\ascii[7]_i_3_n_0 ),
        .I5(\FSM_sequential_state_reg[1]_2 ),
        .O(E));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ascii[7]_i_2 
       (.I0(\ascii[7]_i_4_n_0 ),
        .I1(ps2_code[1]),
        .I2(\ascii[7]_i_5_n_0 ),
        .I3(ps2_code[7]),
        .O(\ascii[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \ascii[7]_i_3 
       (.I0(\ascii[7]_i_6_n_0 ),
        .I1(ps2_code[2]),
        .I2(\ascii[7]_i_7_n_0 ),
        .I3(ps2_code[1]),
        .I4(\ascii[7]_i_8_n_0 ),
        .I5(ps2_code[7]),
        .O(\ascii[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h04C80B080C080CC0)) 
    \ascii[7]_i_4 
       (.I0(ps2_code[4]),
        .I1(ps2_code[2]),
        .I2(ps2_code[6]),
        .I3(ps2_code[5]),
        .I4(ps2_code[3]),
        .I5(ps2_code[0]),
        .O(\ascii[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0507050547007050)) 
    \ascii[7]_i_5 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[3]),
        .I4(ps2_code[4]),
        .I5(ps2_code[5]),
        .O(\ascii[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h252A052A00000000)) 
    \ascii[7]_i_6 
       (.I0(ps2_code[5]),
        .I1(ps2_code[3]),
        .I2(ps2_code[4]),
        .I3(ps2_code[6]),
        .I4(e0_code),
        .I5(ps2_code[0]),
        .O(\ascii[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h3333BEEC)) 
    \ascii[7]_i_7 
       (.I0(ps2_code[0]),
        .I1(ps2_code[6]),
        .I2(ps2_code[3]),
        .I3(ps2_code[4]),
        .I4(ps2_code[5]),
        .O(\ascii[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0727072757127270)) 
    \ascii[7]_i_8 
       (.I0(ps2_code[2]),
        .I1(ps2_code[0]),
        .I2(ps2_code[6]),
        .I3(ps2_code[3]),
        .I4(ps2_code[4]),
        .I5(ps2_code[5]),
        .O(\ascii[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFCFF44440000)) 
    ascii_new_i_1
       (.I0(Q),
        .I1(\FSM_sequential_state_reg[1]_2 ),
        .I2(prev_ps2_code_new),
        .I3(ps2_code_new),
        .I4(state),
        .I5(ascii_new),
        .O(\ascii_reg[7] ));
  MUXF7 \ascii_reg[0]_i_2 
       (.I0(\ascii[0]_i_4_n_0 ),
        .I1(\ascii[0]_i_5_n_0 ),
        .O(\ascii_reg[0]_i_2_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[0]_i_8 
       (.I0(\ascii[0]_i_11_n_0 ),
        .I1(\ascii[0]_i_12_n_0 ),
        .O(\ascii_reg[0]_i_8_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[1]_i_2 
       (.I0(\ascii[1]_i_4_n_0 ),
        .I1(\ascii[1]_i_5_n_0 ),
        .O(\ascii_reg[1]_i_2_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[1]_i_7 
       (.I0(\ascii[1]_i_10_n_0 ),
        .I1(\ascii[1]_i_11_n_0 ),
        .O(\ascii_reg[1]_i_7_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[2]_i_2 
       (.I0(\ascii[2]_i_4_n_0 ),
        .I1(\ascii[2]_i_5_n_0 ),
        .O(\ascii_reg[2]_i_2_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[2]_i_6 
       (.I0(\ascii[2]_i_9_n_0 ),
        .I1(\ascii[2]_i_10_n_0 ),
        .O(\ascii_reg[2]_i_6_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[2]_i_8 
       (.I0(\ascii[2]_i_11_n_0 ),
        .I1(\ascii[2]_i_12_n_0 ),
        .O(\ascii_reg[2]_i_8_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[3]_i_2 
       (.I0(\ascii[3]_i_4_n_0 ),
        .I1(\ascii[3]_i_5_n_0 ),
        .O(\ascii_reg[3]_i_2_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[3]_i_6 
       (.I0(\ascii[3]_i_9_n_0 ),
        .I1(\ascii[3]_i_10_n_0 ),
        .O(\ascii_reg[3]_i_6_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[3]_i_8 
       (.I0(\ascii[3]_i_11_n_0 ),
        .I1(\ascii[3]_i_12_n_0 ),
        .O(\ascii_reg[3]_i_8_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[4]_i_6 
       (.I0(\ascii[4]_i_9_n_0 ),
        .I1(\ascii[4]_i_10_n_0 ),
        .O(\ascii_reg[4]_i_6_n_0 ),
        .S(ps2_code[1]));
  MUXF8 \ascii_reg[5]_i_3 
       (.I0(\ascii_reg[5]_i_6_n_0 ),
        .I1(\ascii_reg[5]_i_7_n_0 ),
        .O(\ascii_reg[5]_i_3_n_0 ),
        .S(caps_lock_reg));
  MUXF8 \ascii_reg[5]_i_5 
       (.I0(\ascii_reg[5]_i_8_n_0 ),
        .I1(\ascii_reg[5]_i_9_n_0 ),
        .O(\ascii_reg[5]_i_5_n_0 ),
        .S(caps_lock_reg));
  MUXF7 \ascii_reg[5]_i_6 
       (.I0(\ascii[5]_i_10_n_0 ),
        .I1(\ascii[5]_i_11_n_0 ),
        .O(\ascii_reg[5]_i_6_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[5]_i_7 
       (.I0(\ascii[5]_i_12_n_0 ),
        .I1(\ascii[5]_i_13_n_0 ),
        .O(\ascii_reg[5]_i_7_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[5]_i_8 
       (.I0(\ascii[5]_i_14_n_0 ),
        .I1(\ascii[5]_i_15_n_0 ),
        .O(\ascii_reg[5]_i_8_n_0 ),
        .S(ps2_code[1]));
  MUXF7 \ascii_reg[5]_i_9 
       (.I0(\ascii[5]_i_16_n_0 ),
        .I1(\ascii[5]_i_17_n_0 ),
        .O(\ascii_reg[5]_i_9_n_0 ),
        .S(ps2_code[1]));
  LUT6 #(
    .INIT(64'hFFFFF5FF00008080)) 
    break_i_1
       (.I0(state),
        .I1(break_i_2_n_0),
        .I2(ps2_code[7]),
        .I3(break_i_3_n_0),
        .I4(\FSM_sequential_state_reg[1]_2 ),
        .I5(\FSM_sequential_state_reg[1]_1 ),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    break_i_2
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(\ascii[4]_i_5_n_0 ),
        .I3(ps2_code[5]),
        .I4(ps2_code[0]),
        .I5(ps2_code[1]),
        .O(break_i_2_n_0));
  LUT5 #(
    .INIT(32'h05004848)) 
    break_i_3
       (.I0(ps2_code[1]),
        .I1(break_i_4_n_0),
        .I2(ps2_code[2]),
        .I3(break_i_5_n_0),
        .I4(ps2_code[0]),
        .O(break_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    break_i_4
       (.I0(ps2_code[5]),
        .I1(ps2_code[4]),
        .I2(ps2_code[3]),
        .I3(ps2_code[6]),
        .O(break_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    break_i_5
       (.I0(ps2_code[5]),
        .I1(ps2_code[4]),
        .I2(ps2_code[3]),
        .I3(ps2_code[6]),
        .O(break_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00100000)) 
    caps_lock_i_1
       (.I0(\FSM_sequential_state_reg[1]_2 ),
        .I1(ps2_code[7]),
        .I2(caps_lock_i_2_n_0),
        .I3(ps2_code[1]),
        .I4(state),
        .I5(caps_lock_reg),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    caps_lock_i_2
       (.I0(ps2_code[0]),
        .I1(ps2_code[6]),
        .I2(caps_lock_i_3_n_0),
        .I3(ps2_code[5]),
        .I4(\FSM_sequential_state_reg[1]_1 ),
        .I5(ps2_code[2]),
        .O(caps_lock_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    caps_lock_i_3
       (.I0(ps2_code[3]),
        .I1(ps2_code[4]),
        .O(caps_lock_i_3_n_0));
  LUT5 #(
    .INIT(32'hFF7F0040)) 
    control_l_i_1
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(state),
        .I2(control_l_i_2_n_0),
        .I3(\FSM_sequential_state_reg[1]_2 ),
        .I4(control_l_reg),
        .O(break_reg_4));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    control_l_i_2
       (.I0(ps2_code[1]),
        .I1(ps2_code[0]),
        .I2(break_i_4_n_0),
        .I3(e0_code),
        .I4(ps2_code[2]),
        .I5(ps2_code[7]),
        .O(control_l_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF7F0040)) 
    control_r_i_1
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(state),
        .I2(control_r_i_2_n_0),
        .I3(\FSM_sequential_state_reg[1]_2 ),
        .I4(control_r_reg),
        .O(break_reg_3));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    control_r_i_2
       (.I0(ps2_code[1]),
        .I1(ps2_code[0]),
        .I2(break_i_4_n_0),
        .I3(e0_code),
        .I4(ps2_code[2]),
        .I5(ps2_code[7]),
        .O(control_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \count_idle[0]_i_2 
       (.I0(\count_idle[0]_i_4_n_0 ),
        .I1(count_idle_reg[2]),
        .I2(count_idle_reg[3]),
        .I3(count_idle_reg[5]),
        .I4(count_idle_reg[4]),
        .I5(\count_idle[0]_i_5_n_0 ),
        .O(\count_idle[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_idle[0]_i_4 
       (.I0(count_idle_reg[0]),
        .I1(count_idle_reg[1]),
        .O(\count_idle[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \count_idle[0]_i_5 
       (.I0(count_idle_reg[11]),
        .I1(count_idle_reg[10]),
        .I2(count_idle_reg[9]),
        .I3(count_idle_reg[8]),
        .I4(count_idle_reg[7]),
        .I5(count_idle_reg[6]),
        .O(\count_idle[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_idle[0]_i_6 
       (.I0(count_idle_reg[0]),
        .O(\count_idle[0]_i_6_n_0 ));
  FDRE \count_idle_reg[0] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[0]_i_3_n_7 ),
        .Q(count_idle_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_idle_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\count_idle_reg[0]_i_3_n_0 ,\count_idle_reg[0]_i_3_n_1 ,\count_idle_reg[0]_i_3_n_2 ,\count_idle_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_idle_reg[0]_i_3_n_4 ,\count_idle_reg[0]_i_3_n_5 ,\count_idle_reg[0]_i_3_n_6 ,\count_idle_reg[0]_i_3_n_7 }),
        .S({count_idle_reg[3:1],\count_idle[0]_i_6_n_0 }));
  FDRE \count_idle_reg[10] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[8]_i_1_n_5 ),
        .Q(count_idle_reg[10]),
        .R(clear));
  FDRE \count_idle_reg[11] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[8]_i_1_n_4 ),
        .Q(count_idle_reg[11]),
        .R(clear));
  FDRE \count_idle_reg[1] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[0]_i_3_n_6 ),
        .Q(count_idle_reg[1]),
        .R(clear));
  FDRE \count_idle_reg[2] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[0]_i_3_n_5 ),
        .Q(count_idle_reg[2]),
        .R(clear));
  FDRE \count_idle_reg[3] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[0]_i_3_n_4 ),
        .Q(count_idle_reg[3]),
        .R(clear));
  FDRE \count_idle_reg[4] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[4]_i_1_n_7 ),
        .Q(count_idle_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_idle_reg[4]_i_1 
       (.CI(\count_idle_reg[0]_i_3_n_0 ),
        .CO({\count_idle_reg[4]_i_1_n_0 ,\count_idle_reg[4]_i_1_n_1 ,\count_idle_reg[4]_i_1_n_2 ,\count_idle_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_idle_reg[4]_i_1_n_4 ,\count_idle_reg[4]_i_1_n_5 ,\count_idle_reg[4]_i_1_n_6 ,\count_idle_reg[4]_i_1_n_7 }),
        .S(count_idle_reg[7:4]));
  FDRE \count_idle_reg[5] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[4]_i_1_n_6 ),
        .Q(count_idle_reg[5]),
        .R(clear));
  FDRE \count_idle_reg[6] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[4]_i_1_n_5 ),
        .Q(count_idle_reg[6]),
        .R(clear));
  FDRE \count_idle_reg[7] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[4]_i_1_n_4 ),
        .Q(count_idle_reg[7]),
        .R(clear));
  FDRE \count_idle_reg[8] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[8]_i_1_n_7 ),
        .Q(count_idle_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_idle_reg[8]_i_1 
       (.CI(\count_idle_reg[4]_i_1_n_0 ),
        .CO({\NLW_count_idle_reg[8]_i_1_CO_UNCONNECTED [3],\count_idle_reg[8]_i_1_n_1 ,\count_idle_reg[8]_i_1_n_2 ,\count_idle_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_idle_reg[8]_i_1_n_4 ,\count_idle_reg[8]_i_1_n_5 ,\count_idle_reg[8]_i_1_n_6 ,\count_idle_reg[8]_i_1_n_7 }),
        .S(count_idle_reg[11:8]));
  FDRE \count_idle_reg[9] 
       (.C(clk),
        .CE(\count_idle[0]_i_2_n_0 ),
        .D(\count_idle_reg[8]_i_1_n_6 ),
        .Q(count_idle_reg[9]),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce debounce_ps2_clk
       (.CLK(result),
        .Q(sync_ffs[0]),
        .clear(clear),
        .clk(clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 debounce_ps2_data
       (.D(debounce_ps2_data_n_0),
        .Q(sync_ffs[1]),
        .clk(clk));
  LUT6 #(
    .INIT(64'hFFFF555500400000)) 
    e0_code_i_1
       (.I0(\FSM_sequential_state_reg[1]_2 ),
        .I1(ps2_code[7]),
        .I2(e0_code_i_2_n_0),
        .I3(ps2_code[1]),
        .I4(state),
        .I5(e0_code),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    e0_code_i_2
       (.I0(ps2_code[0]),
        .I1(ps2_code[5]),
        .I2(ps2_code[4]),
        .I3(ps2_code[3]),
        .I4(ps2_code[6]),
        .I5(ps2_code[2]),
        .O(e0_code_i_2_n_0));
  LUT6 #(
    .INIT(64'h2000000000002000)) 
    ps2_code_new_i_1
       (.I0(ps2_code_new_i_2_n_0),
        .I1(\ps2_word_reg_n_0_[0] ),
        .I2(\ps2_word_reg_n_0_[10] ),
        .I3(ps2_code_new_i_3_n_0),
        .I4(ps2_code_new_i_4_n_0),
        .I5(ps2_code_new_i_5_n_0),
        .O(ps2_code_new0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    ps2_code_new_i_2
       (.I0(count_idle_reg[3]),
        .I1(count_idle_reg[2]),
        .I2(count_idle_reg[0]),
        .I3(count_idle_reg[1]),
        .I4(count_idle_reg[5]),
        .I5(count_idle_reg[4]),
        .O(ps2_code_new_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    ps2_code_new_i_3
       (.I0(count_idle_reg[9]),
        .I1(count_idle_reg[8]),
        .I2(count_idle_reg[6]),
        .I3(count_idle_reg[7]),
        .I4(count_idle_reg[10]),
        .I5(count_idle_reg[11]),
        .O(ps2_code_new_i_3_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    ps2_code_new_i_4
       (.I0(p_3_in),
        .I1(p_4_in),
        .I2(p_1_in),
        .I3(p_2_in),
        .O(ps2_code_new_i_4_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    ps2_code_new_i_5
       (.I0(p_0_in),
        .I1(\ps2_word_reg_n_0_[8] ),
        .I2(\ps2_word_reg_n_0_[9] ),
        .I3(p_5_in),
        .I4(p_6_in),
        .O(ps2_code_new_i_5_n_0));
  FDRE ps2_code_new_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_code_new0),
        .Q(ps2_code_new),
        .R(1'b0));
  FDRE \ps2_code_reg[0] 
       (.C(clk),
        .CE(ps2_code_new0),
        .D(p_0_in),
        .Q(ps2_code[0]),
        .R(1'b0));
  FDRE \ps2_code_reg[1] 
       (.C(clk),
        .CE(ps2_code_new0),
        .D(p_6_in),
        .Q(ps2_code[1]),
        .R(1'b0));
  FDRE \ps2_code_reg[2] 
       (.C(clk),
        .CE(ps2_code_new0),
        .D(p_5_in),
        .Q(ps2_code[2]),
        .R(1'b0));
  FDRE \ps2_code_reg[3] 
       (.C(clk),
        .CE(ps2_code_new0),
        .D(p_4_in),
        .Q(ps2_code[3]),
        .R(1'b0));
  FDRE \ps2_code_reg[4] 
       (.C(clk),
        .CE(ps2_code_new0),
        .D(p_3_in),
        .Q(ps2_code[4]),
        .R(1'b0));
  FDRE \ps2_code_reg[5] 
       (.C(clk),
        .CE(ps2_code_new0),
        .D(p_2_in),
        .Q(ps2_code[5]),
        .R(1'b0));
  FDRE \ps2_code_reg[6] 
       (.C(clk),
        .CE(ps2_code_new0),
        .D(p_1_in),
        .Q(ps2_code[6]),
        .R(1'b0));
  FDRE \ps2_code_reg[7] 
       (.C(clk),
        .CE(ps2_code_new0),
        .D(\ps2_word_reg_n_0_[8] ),
        .Q(ps2_code[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[0] 
       (.C(result),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\ps2_word_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[10] 
       (.C(result),
        .CE(1'b1),
        .D(debounce_ps2_data_n_0),
        .Q(\ps2_word_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[1] 
       (.C(result),
        .CE(1'b1),
        .D(p_6_in),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[2] 
       (.C(result),
        .CE(1'b1),
        .D(p_5_in),
        .Q(p_6_in),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[3] 
       (.C(result),
        .CE(1'b1),
        .D(p_4_in),
        .Q(p_5_in),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[4] 
       (.C(result),
        .CE(1'b1),
        .D(p_3_in),
        .Q(p_4_in),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[5] 
       (.C(result),
        .CE(1'b1),
        .D(p_2_in),
        .Q(p_3_in),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[6] 
       (.C(result),
        .CE(1'b1),
        .D(p_1_in),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[7] 
       (.C(result),
        .CE(1'b1),
        .D(\ps2_word_reg_n_0_[8] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[8] 
       (.C(result),
        .CE(1'b1),
        .D(\ps2_word_reg_n_0_[9] ),
        .Q(\ps2_word_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \ps2_word_reg[9] 
       (.C(result),
        .CE(1'b1),
        .D(\ps2_word_reg_n_0_[10] ),
        .Q(\ps2_word_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    shift_l_i_1
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(state),
        .I2(shift_l_i_2_n_0),
        .I3(ps2_code[7]),
        .I4(\FSM_sequential_state_reg[1]_2 ),
        .I5(shift_l_reg),
        .O(break_reg_1));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    shift_l_i_2
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(\ascii[4]_i_5_n_0 ),
        .I3(ps2_code[5]),
        .I4(ps2_code[0]),
        .I5(ps2_code[1]),
        .O(shift_l_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    shift_r_i_1
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(state),
        .I2(shift_r_i_2_n_0),
        .I3(ps2_code[7]),
        .I4(\FSM_sequential_state_reg[1]_2 ),
        .I5(shift_r_reg),
        .O(break_reg_2));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    shift_r_i_2
       (.I0(ps2_code[2]),
        .I1(ps2_code[6]),
        .I2(caps_lock_i_3_n_0),
        .I3(ps2_code[5]),
        .I4(ps2_code[0]),
        .I5(ps2_code[1]),
        .O(shift_r_i_2_n_0));
  FDRE \sync_ffs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sync_ffs_reg[1]_0 [0]),
        .Q(sync_ffs[0]),
        .R(1'b0));
  FDRE \sync_ffs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sync_ffs_reg[1]_0 [1]),
        .Q(sync_ffs[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_to_ascii
   (ascii_code,
    ascii_new,
    clk,
    D);
  output [6:0]ascii_code;
  output ascii_new;
  input clk;
  input [1:0]D;

  wire [1:0]D;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire ascii;
  wire [6:0]ascii6_out;
  wire [6:0]ascii_code;
  wire \ascii_code[6]_i_1_n_0 ;
  wire ascii_new;
  wire \ascii_reg_n_0_[0] ;
  wire \ascii_reg_n_0_[1] ;
  wire \ascii_reg_n_0_[2] ;
  wire \ascii_reg_n_0_[3] ;
  wire \ascii_reg_n_0_[4] ;
  wire \ascii_reg_n_0_[5] ;
  wire \ascii_reg_n_0_[6] ;
  wire \ascii_reg_n_0_[7] ;
  wire break_reg_n_0;
  wire caps_lock_reg_n_0;
  wire clk;
  wire control_l_reg_n_0;
  wire control_r_reg_n_0;
  wire e0_code;
  wire prev_ps2_code_new;
  wire ps2_code_new;
  wire ps2_keyboard_0_n_1;
  wire ps2_keyboard_0_n_12;
  wire ps2_keyboard_0_n_13;
  wire ps2_keyboard_0_n_14;
  wire ps2_keyboard_0_n_15;
  wire ps2_keyboard_0_n_16;
  wire ps2_keyboard_0_n_17;
  wire ps2_keyboard_0_n_18;
  wire ps2_keyboard_0_n_2;
  wire ps2_keyboard_0_n_3;
  wire shift_l_reg_n_0;
  wire shift_r_reg_n_0;
  wire [0:0]state;

  (* FSM_ENCODED_STATES = "new_code:01,translate:10,ready:00,output:11" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_2),
        .Q(state),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "new_code:01,translate:10,ready:00,output:11" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_1),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \ascii_code[6]_i_1 
       (.I0(\ascii_reg_n_0_[7] ),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\ascii_code[6]_i_1_n_0 ));
  FDRE \ascii_code_reg[0] 
       (.C(clk),
        .CE(\ascii_code[6]_i_1_n_0 ),
        .D(\ascii_reg_n_0_[0] ),
        .Q(ascii_code[0]),
        .R(1'b0));
  FDRE \ascii_code_reg[1] 
       (.C(clk),
        .CE(\ascii_code[6]_i_1_n_0 ),
        .D(\ascii_reg_n_0_[1] ),
        .Q(ascii_code[1]),
        .R(1'b0));
  FDRE \ascii_code_reg[2] 
       (.C(clk),
        .CE(\ascii_code[6]_i_1_n_0 ),
        .D(\ascii_reg_n_0_[2] ),
        .Q(ascii_code[2]),
        .R(1'b0));
  FDRE \ascii_code_reg[3] 
       (.C(clk),
        .CE(\ascii_code[6]_i_1_n_0 ),
        .D(\ascii_reg_n_0_[3] ),
        .Q(ascii_code[3]),
        .R(1'b0));
  FDRE \ascii_code_reg[4] 
       (.C(clk),
        .CE(\ascii_code[6]_i_1_n_0 ),
        .D(\ascii_reg_n_0_[4] ),
        .Q(ascii_code[4]),
        .R(1'b0));
  FDRE \ascii_code_reg[5] 
       (.C(clk),
        .CE(\ascii_code[6]_i_1_n_0 ),
        .D(\ascii_reg_n_0_[5] ),
        .Q(ascii_code[5]),
        .R(1'b0));
  FDRE \ascii_code_reg[6] 
       (.C(clk),
        .CE(\ascii_code[6]_i_1_n_0 ),
        .D(\ascii_reg_n_0_[6] ),
        .Q(ascii_code[6]),
        .R(1'b0));
  FDRE ascii_new_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_17),
        .Q(ascii_new),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ascii_reg[0] 
       (.C(clk),
        .CE(ascii),
        .D(ascii6_out[0]),
        .Q(\ascii_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ascii_reg[1] 
       (.C(clk),
        .CE(ascii),
        .D(ascii6_out[1]),
        .Q(\ascii_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ascii_reg[2] 
       (.C(clk),
        .CE(ascii),
        .D(ascii6_out[2]),
        .Q(\ascii_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ascii_reg[3] 
       (.C(clk),
        .CE(ascii),
        .D(ascii6_out[3]),
        .Q(\ascii_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ascii_reg[4] 
       (.C(clk),
        .CE(ascii),
        .D(ascii6_out[4]),
        .Q(\ascii_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ascii_reg[5] 
       (.C(clk),
        .CE(ascii),
        .D(ascii6_out[5]),
        .Q(\ascii_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ascii_reg[6] 
       (.C(clk),
        .CE(ascii),
        .D(ascii6_out[6]),
        .Q(\ascii_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ascii_reg[7] 
       (.C(clk),
        .CE(ascii),
        .D(1'b0),
        .Q(\ascii_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    break_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_12),
        .Q(break_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    caps_lock_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_18),
        .Q(caps_lock_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    control_l_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_16),
        .Q(control_l_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    control_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_15),
        .Q(control_r_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    e0_code_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_3),
        .Q(e0_code),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    prev_ps2_code_new_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_code_new),
        .Q(prev_ps2_code_new),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard ps2_keyboard_0
       (.D(ascii6_out),
        .E(ascii),
        .\FSM_sequential_state_reg[0] (ps2_keyboard_0_n_12),
        .\FSM_sequential_state_reg[1] (ps2_keyboard_0_n_3),
        .\FSM_sequential_state_reg[1]_0 (ps2_keyboard_0_n_18),
        .\FSM_sequential_state_reg[1]_1 (break_reg_n_0),
        .\FSM_sequential_state_reg[1]_2 (\FSM_sequential_state_reg_n_0_[1] ),
        .Q(\ascii_reg_n_0_[7] ),
        .ascii_new(ascii_new),
        .\ascii_reg[7] (ps2_keyboard_0_n_17),
        .break_reg(ps2_keyboard_0_n_1),
        .break_reg_0(ps2_keyboard_0_n_2),
        .break_reg_1(ps2_keyboard_0_n_13),
        .break_reg_2(ps2_keyboard_0_n_14),
        .break_reg_3(ps2_keyboard_0_n_15),
        .break_reg_4(ps2_keyboard_0_n_16),
        .caps_lock_reg(caps_lock_reg_n_0),
        .clk(clk),
        .control_l_reg(control_l_reg_n_0),
        .control_r_reg(control_r_reg_n_0),
        .e0_code(e0_code),
        .prev_ps2_code_new(prev_ps2_code_new),
        .ps2_code_new(ps2_code_new),
        .shift_l_reg(shift_l_reg_n_0),
        .shift_r_reg(shift_r_reg_n_0),
        .state(state),
        .\sync_ffs_reg[1]_0 (D));
  FDRE #(
    .INIT(1'b0)) 
    shift_l_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_13),
        .Q(shift_l_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    shift_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps2_keyboard_0_n_14),
        .Q(shift_r_reg_n_0),
        .R(1'b0));
endmodule
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
