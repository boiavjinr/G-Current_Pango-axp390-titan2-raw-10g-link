
///////////////////////////////////////////////////////////////////////////////
//
// Copyright (c) 2019 PANGO MICROSYSTEMS, INC
// ALL RIGHTS REVERVED.
//
// THE SOURCE CODE CONTAINED HEREIN IS PROPRIETARY TO PANGO MICROSYSTEMS, INC.
// IT SHALL NOT BE REPRODUCED OR DISCLOSED IN WHOLE OR IN PART OR USED BY
// PARTIES WITHOUT WRITTEN AUTHORIZATION FROM THE OWNER.
//
///////////////////////////////////////////////////////////////////////////////
//
// Library:
// Filename:
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100fs

module Transceiver_10G_src #(
    parameter TD_8BIT_ONLY_0   = "FALSE",
    parameter TD_10BIT_ONLY_0  = "FALSE",
    parameter TD_8B10B_8BIT_0  = "FALSE",
    parameter TD_16BIT_ONLY_0  = "FALSE",
    parameter TD_20BIT_ONLY_0  = "FALSE",
    parameter TD_8B10B_16BIT_0 = "FALSE",
    parameter TD_32BIT_ONLY_0  = "FALSE",
    parameter TD_40BIT_ONLY_0  = "FALSE",
    parameter TD_64BIT_ONLY_0  = "FALSE",
    parameter TD_80BIT_ONLY_0  = "FALSE",
    parameter TD_8B10B_32BIT_0 = "FALSE",
    parameter TD_8B10B_64BIT_0 = "FALSE",
    parameter TD_64B66B_16BIT_0   = "FALSE",
    parameter TD_64B66B_32BIT_0   = "FALSE",
    parameter TD_64B66B_64BIT_0   = "FALSE",
    parameter TD_64B67B_16BIT_0   = "FALSE",
    parameter TD_64B67B_32BIT_0   = "FALSE",
    parameter TD_64B67B_64BIT_0   = "FALSE",
    parameter TD_64B66B_CAUI_32BIT_0 = "FALSE",
    parameter TD_64B66B_CAUI_64BIT_0 = "FALSE",
    parameter TD_128B130B_32BIT_0 = "FALSE",
    parameter TD_128B130B_64BIT_0 = "FALSE",
    parameter TD_8BIT_ONLY_1   = "FALSE",
    parameter TD_10BIT_ONLY_1  = "FALSE",
    parameter TD_8B10B_8BIT_1  = "FALSE",
    parameter TD_16BIT_ONLY_1  = "FALSE",
    parameter TD_20BIT_ONLY_1  = "FALSE",
    parameter TD_8B10B_16BIT_1 = "FALSE",
    parameter TD_32BIT_ONLY_1  = "FALSE",
    parameter TD_40BIT_ONLY_1  = "FALSE",
    parameter TD_64BIT_ONLY_1  = "FALSE",
    parameter TD_80BIT_ONLY_1  = "FALSE",
    parameter TD_8B10B_32BIT_1 = "FALSE",
    parameter TD_8B10B_64BIT_1 = "FALSE",
    parameter TD_64B66B_16BIT_1   = "FALSE",
    parameter TD_64B66B_32BIT_1   = "FALSE",
    parameter TD_64B66B_64BIT_1   = "FALSE",
    parameter TD_64B67B_16BIT_1   = "FALSE",
    parameter TD_64B67B_32BIT_1   = "FALSE",
    parameter TD_64B67B_64BIT_1   = "FALSE",
    parameter TD_64B66B_CAUI_32BIT_1 = "FALSE",
    parameter TD_64B66B_CAUI_64BIT_1 = "FALSE",
    parameter TD_128B130B_32BIT_1 = "FALSE",
    parameter TD_128B130B_64BIT_1 = "FALSE",
    parameter TD_8BIT_ONLY_2   = "FALSE",
    parameter TD_10BIT_ONLY_2  = "FALSE",
    parameter TD_8B10B_8BIT_2  = "FALSE",
    parameter TD_16BIT_ONLY_2  = "FALSE",
    parameter TD_20BIT_ONLY_2  = "FALSE",
    parameter TD_8B10B_16BIT_2 = "FALSE",
    parameter TD_32BIT_ONLY_2  = "FALSE",
    parameter TD_40BIT_ONLY_2  = "FALSE",
    parameter TD_64BIT_ONLY_2  = "FALSE",
    parameter TD_80BIT_ONLY_2  = "FALSE",
    parameter TD_8B10B_32BIT_2 = "FALSE",
    parameter TD_8B10B_64BIT_2 = "FALSE",
    parameter TD_64B66B_16BIT_2   = "FALSE",
    parameter TD_64B66B_32BIT_2   = "FALSE",
    parameter TD_64B66B_64BIT_2   = "FALSE",
    parameter TD_64B67B_16BIT_2   = "FALSE",
    parameter TD_64B67B_32BIT_2   = "FALSE",
    parameter TD_64B67B_64BIT_2   = "FALSE",
    parameter TD_64B66B_CAUI_32BIT_2 = "FALSE",
    parameter TD_64B66B_CAUI_64BIT_2 = "FALSE",
    parameter TD_128B130B_32BIT_2 = "FALSE",
    parameter TD_128B130B_64BIT_2 = "FALSE",
    parameter TD_8BIT_ONLY_3   = "FALSE",
    parameter TD_10BIT_ONLY_3  = "FALSE",
    parameter TD_8B10B_8BIT_3  = "FALSE",
    parameter TD_16BIT_ONLY_3  = "FALSE",
    parameter TD_20BIT_ONLY_3  = "FALSE",
    parameter TD_8B10B_16BIT_3 = "FALSE",
    parameter TD_32BIT_ONLY_3  = "FALSE",
    parameter TD_40BIT_ONLY_3  = "FALSE",
    parameter TD_64BIT_ONLY_3  = "FALSE",
    parameter TD_80BIT_ONLY_3  = "FALSE",
    parameter TD_8B10B_32BIT_3 = "FALSE",
    parameter TD_8B10B_64BIT_3 = "FALSE",
    parameter TD_64B66B_16BIT_3   = "FALSE",
    parameter TD_64B66B_32BIT_3   = "FALSE",
    parameter TD_64B66B_64BIT_3   = "FALSE",
    parameter TD_64B67B_16BIT_3   = "FALSE",
    parameter TD_64B67B_32BIT_3   = "FALSE",
    parameter TD_64B67B_64BIT_3   = "FALSE",
    parameter TD_64B66B_CAUI_32BIT_3 = "FALSE",
    parameter TD_64B66B_CAUI_64BIT_3 = "FALSE",
    parameter TD_128B130B_32BIT_3 = "FALSE",
    parameter TD_128B130B_64BIT_3 = "FALSE"
)(
    input          i_src_clk0                    ,
    input          i_src_clk1                    ,
    input          i_src_clk2                    ,
    input          i_src_clk3                    ,
    input          i_src_rstn                    ,
    output [79:0]  o_txd_0                       ,
    output [7:0]   o_txk_0                       ,
    output [6:0]   o_txq_0                       ,
    output [2:0]   o_txh_0                       ,
    output [2:0]   o_txh_h_0                     ,
    output         o_tx_st_0                     ,
    output         o_txd_vld_0                   ,
    output         o_tx_st_h_0                   ,
    output         o_txd_vld_h_0                 ,
    output [79:0]  o_txd_1                       ,
    output [7:0]   o_txk_1                       ,
    output [6:0]   o_txq_1                       ,
    output [2:0]   o_txh_1                       ,
    output [2:0]   o_txh_h_1                     ,
    output         o_tx_st_1                     ,
    output         o_txd_vld_1                   ,
    output         o_tx_st_h_1                   ,
    output         o_txd_vld_h_1                 ,
    output [79:0]  o_txd_2                       ,
    output [7:0]   o_txk_2                       ,
    output [6:0]   o_txq_2                       ,
    output [2:0]   o_txh_2                       ,
    output [2:0]   o_txh_h_2                     ,
    output         o_tx_st_2                     ,
    output         o_txd_vld_2                   ,
    output         o_tx_st_h_2                   ,
    output         o_txd_vld_h_2                 ,
    output [79:0]  o_txd_3                       ,
    output [7:0]   o_txk_3                       ,
    output [6:0]   o_txq_3                       ,
    output [2:0]   o_txh_3                       ,
    output [2:0]   o_txh_h_3                     ,
    output         o_tx_st_3                     ,
    output         o_txd_vld_3                   ,
    output         o_tx_st_h_3                   ,
    output         o_txd_vld_h_3
);

localparam CH0_INNER_TDATA_WIDTH = 32;
localparam CH1_INNER_TDATA_WIDTH = 20;
localparam CH2_INNER_TDATA_WIDTH = 20;
localparam CH3_INNER_TDATA_WIDTH = 20;
localparam [9:0] CH0_RXPCS_COMMA_REG0 = 10'b0;
localparam [9:0] CH1_RXPCS_COMMA_REG0 = 10'b0;
localparam [9:0] CH2_RXPCS_COMMA_REG0 = 10'b0;
localparam [9:0] CH3_RXPCS_COMMA_REG0 = 10'b0;
localparam CH0_RXPCS_BONDING = "Bypassed";
localparam CH1_RXPCS_BONDING = "Bypassed";
localparam CH2_RXPCS_BONDING = "Bypassed";
localparam CH3_RXPCS_BONDING = "Bypassed";
localparam [7:0] CH0_RXPCS_A_REG = 8'b01111100;
localparam [7:0] CH1_RXPCS_A_REG = 8'b01111100;
localparam [7:0] CH2_RXPCS_A_REG = 8'b01111100;
localparam [7:0] CH3_RXPCS_A_REG = 8'b01111100;
localparam CH0_RXPCS_CTC = "Bypassed";
localparam CH1_RXPCS_CTC = "Bypassed";
localparam CH2_RXPCS_CTC = "Bypassed";
localparam CH3_RXPCS_CTC = "Bypassed";
localparam [8:0] CH0_RXPCS_SKIP_REG0 = 9'b0;
localparam [8:0] CH1_RXPCS_SKIP_REG0 = 9'b0;
localparam [8:0] CH2_RXPCS_SKIP_REG0 = 9'b0;
localparam [8:0] CH3_RXPCS_SKIP_REG0 = 9'b0;
localparam [8:0] CH0_RXPCS_SKIP_REG1 = 9'b0;
localparam [8:0] CH1_RXPCS_SKIP_REG1 = 9'b0;
localparam [8:0] CH2_RXPCS_SKIP_REG1 = 9'b0;
localparam [8:0] CH3_RXPCS_SKIP_REG1 = 9'b0;
localparam [8:0] CH0_RXPCS_SKIP_REG2 = 9'b0;
localparam [8:0] CH1_RXPCS_SKIP_REG2 = 9'b0;
localparam [8:0] CH2_RXPCS_SKIP_REG2 = 9'b0;
localparam [8:0] CH3_RXPCS_SKIP_REG2 = 9'b0;
localparam [8:0] CH0_RXPCS_SKIP_REG3 = 9'b0;
localparam [8:0] CH1_RXPCS_SKIP_REG3 = 9'b0;
localparam [8:0] CH2_RXPCS_SKIP_REG3 = 9'b0;
localparam [8:0] CH3_RXPCS_SKIP_REG3 = 9'b0;

localparam [3:0] TD_8BIT_ONLY   = {{TD_8BIT_ONLY_3  =="TRUE"},{TD_8BIT_ONLY_2  =="TRUE"},{TD_8BIT_ONLY_1  =="TRUE"},{TD_8BIT_ONLY_0  =="TRUE"}};
localparam [3:0] TD_10BIT_ONLY  = {{TD_10BIT_ONLY_3 =="TRUE"},{TD_10BIT_ONLY_2 =="TRUE"},{TD_10BIT_ONLY_1 =="TRUE"},{TD_10BIT_ONLY_0 =="TRUE"}};
localparam [3:0] TD_8B10B_8BIT  = {{TD_8B10B_8BIT_3 =="TRUE"},{TD_8B10B_8BIT_2 =="TRUE"},{TD_8B10B_8BIT_1 =="TRUE"},{TD_8B10B_8BIT_0 =="TRUE"}};
localparam [3:0] TD_16BIT_ONLY  = {{TD_16BIT_ONLY_3 =="TRUE"},{TD_16BIT_ONLY_2 =="TRUE"},{TD_16BIT_ONLY_1 =="TRUE"},{TD_16BIT_ONLY_0 =="TRUE"}};
localparam [3:0] TD_20BIT_ONLY  = {{TD_20BIT_ONLY_3 =="TRUE"},{TD_20BIT_ONLY_2 =="TRUE"},{TD_20BIT_ONLY_1 =="TRUE"},{TD_20BIT_ONLY_0 =="TRUE"}};
localparam [3:0] TD_8B10B_16BIT = {{TD_8B10B_16BIT_3=="TRUE"},{TD_8B10B_16BIT_2=="TRUE"},{TD_8B10B_16BIT_1=="TRUE"},{TD_8B10B_16BIT_0=="TRUE"}};
localparam [3:0] TD_32BIT_ONLY  = {{TD_32BIT_ONLY_3 =="TRUE"},{TD_32BIT_ONLY_2 =="TRUE"},{TD_32BIT_ONLY_1 =="TRUE"},{TD_32BIT_ONLY_0 =="TRUE"}};
localparam [3:0] TD_40BIT_ONLY  = {{TD_40BIT_ONLY_3 =="TRUE"},{TD_40BIT_ONLY_2 =="TRUE"},{TD_40BIT_ONLY_1 =="TRUE"},{TD_40BIT_ONLY_0 =="TRUE"}};
localparam [3:0] TD_64BIT_ONLY  = {{TD_64BIT_ONLY_3 =="TRUE"},{TD_64BIT_ONLY_2 =="TRUE"},{TD_64BIT_ONLY_1 =="TRUE"},{TD_64BIT_ONLY_0 =="TRUE"}};
localparam [3:0] TD_80BIT_ONLY  = {{TD_80BIT_ONLY_3 =="TRUE"},{TD_80BIT_ONLY_2 =="TRUE"},{TD_80BIT_ONLY_1 =="TRUE"},{TD_80BIT_ONLY_0 =="TRUE"}};
localparam [3:0] TD_8B10B_32BIT = {{TD_8B10B_32BIT_3=="TRUE"},{TD_8B10B_32BIT_2=="TRUE"},{TD_8B10B_32BIT_1=="TRUE"},{TD_8B10B_32BIT_0=="TRUE"}};
localparam [3:0] TD_8B10B_64BIT = {{TD_8B10B_64BIT_3=="TRUE"},{TD_8B10B_64BIT_2=="TRUE"},{TD_8B10B_64BIT_1=="TRUE"},{TD_8B10B_64BIT_0=="TRUE"}};
localparam [3:0] TD_66B_16B   = {{TD_64B66B_16BIT_3=="TRUE"},{TD_64B66B_16BIT_2=="TRUE"},{TD_64B66B_16BIT_1=="TRUE"},{TD_64B66B_16BIT_0=="TRUE"}};
localparam [3:0] TD_66B_32B   = {{TD_64B66B_32BIT_3=="TRUE" && CH3_INNER_TDATA_WIDTH==16},{TD_64B66B_32BIT_2=="TRUE" && CH2_INNER_TDATA_WIDTH==16},
                                {TD_64B66B_32BIT_1=="TRUE" && CH1_INNER_TDATA_WIDTH==16},{TD_64B66B_32BIT_0=="TRUE" && CH0_INNER_TDATA_WIDTH==16}};
localparam [3:0] TD_66B_32B_2 = {{TD_64B66B_32BIT_3=="TRUE" && CH3_INNER_TDATA_WIDTH==32},{TD_64B66B_32BIT_2=="TRUE" && CH2_INNER_TDATA_WIDTH==32},
                                {TD_64B66B_32BIT_1=="TRUE" && CH1_INNER_TDATA_WIDTH==32},{TD_64B66B_32BIT_0=="TRUE" && CH0_INNER_TDATA_WIDTH==32}};
localparam [3:0] TD_66B_64B   = {{TD_64B66B_64BIT_3=="TRUE"},{TD_64B66B_64BIT_2=="TRUE"},{TD_64B66B_64BIT_1=="TRUE"},{TD_64B66B_64BIT_0=="TRUE"}};
localparam [3:0] TD_67B_16B   = {{TD_64B67B_16BIT_3=="TRUE"},{TD_64B67B_16BIT_2=="TRUE"},{TD_64B67B_16BIT_1=="TRUE"},{TD_64B67B_16BIT_0=="TRUE"}};
localparam [3:0] TD_67B_32B   = {{TD_64B67B_32BIT_3=="TRUE" && CH3_INNER_TDATA_WIDTH==16},{TD_64B67B_32BIT_2=="TRUE" && CH2_INNER_TDATA_WIDTH==16},
                                {TD_64B67B_32BIT_1=="TRUE" && CH1_INNER_TDATA_WIDTH==16},{TD_64B67B_32BIT_0=="TRUE" && CH0_INNER_TDATA_WIDTH==16}};
localparam [3:0] TD_67B_32B_2 = {{TD_64B67B_32BIT_3=="TRUE" && CH3_INNER_TDATA_WIDTH==32},{TD_64B67B_32BIT_2=="TRUE" && CH2_INNER_TDATA_WIDTH==32},
                                {TD_64B67B_32BIT_1=="TRUE" && CH1_INNER_TDATA_WIDTH==32},{TD_64B67B_32BIT_0=="TRUE" && CH0_INNER_TDATA_WIDTH==32}};
localparam [3:0] TD_67B_64B   = {{TD_64B67B_64BIT_3=="TRUE"},{TD_64B67B_64BIT_2=="TRUE"},{TD_64B67B_64BIT_1=="TRUE"},{TD_64B67B_64BIT_0=="TRUE"}};
localparam [3:0] TD_CAUI_32B  = {{TD_64B66B_CAUI_32BIT_3=="TRUE"},{TD_64B66B_CAUI_32BIT_2=="TRUE"},{TD_64B66B_CAUI_32BIT_1=="TRUE"},{TD_64B66B_CAUI_32BIT_0=="TRUE"}};
localparam [3:0] TD_CAUI_64B  = {{TD_64B66B_CAUI_64BIT_3=="TRUE"},{TD_64B66B_CAUI_64BIT_2=="TRUE"},{TD_64B66B_CAUI_64BIT_1=="TRUE"},{TD_64B66B_CAUI_64BIT_0=="TRUE"}};
localparam [3:0] TD_130B_32B  = {{TD_128B130B_32BIT_3=="TRUE"},{TD_128B130B_32BIT_2=="TRUE"},{TD_128B130B_32BIT_1=="TRUE"},{TD_128B130B_32BIT_0=="TRUE"}};
localparam [3:0] TD_130B_64B  = {{TD_128B130B_64BIT_3=="TRUE"},{TD_128B130B_64BIT_2=="TRUE"},{TD_128B130B_64BIT_1=="TRUE"},{TD_128B130B_64BIT_0=="TRUE"}};

localparam [8:0] K28_1          = {1'h1,8'h3C};
localparam [8:0] K28_5          = {1'h1,8'hBC};
localparam [8:0] K28_7          = {1'h1,8'hFC};
localparam [8:0] D5_6           = {1'h0,8'hC5};
localparam [8:0] D16_2          = {1'h0,8'h50};

genvar i;

//128B130B control signal
reg  [6:0]  ctrl_cnt [3:0]   ;
reg  [1:0]  header   [3:0]   ;
reg  [2:0]  skp_len  [3:0]   ;
reg  [3:0]  txd_vld          ;
reg  [3:0]  txd_vld_h        ;
reg  [3:0]  tx_start         ;
reg  [3:0]  tx_start_h       ;
reg  [3:0]  tx_st_flag       ;
reg  [3:0]  eieos_en         ;
reg  [2:0]  eieos_cnt [3:0]  ;
reg  [10:0] cnt0      [3:0]  ;
reg  [9:0]  cnt1      [3:0]  ;
reg  [3:0]  rx_rdy           ;

//128B130B sequence: skp_8byte_data,skp_20byte_data,skp_12byte_data,skp_24byte_data,skp_16byte_data
//2/3/4/5/6 cycles of 32bit dataout
wire [63:0]  skp_8byte_data  = {32'h570ec0e1,32'haaaaaaaa};
wire [95:0]  skp_12byte_data = {32'h9beb35e1,32'haaaaaaaa,32'haaaaaaaa};
wire [127:0] skp_16byte_data = {32'h3b76e9e1,32'haaaaaaaa,32'haaaaaaaa,32'haaaaaaaa};
wire [159:0] skp_20byte_data = {32'hc417cee1,32'haaaaaaaa,32'haaaaaaaa,32'haaaaaaaa,32'haaaaaaaa};
wire [191:0] skp_24byte_data = {32'h749edfe1,32'haaaaaaaa,32'haaaaaaaa,32'haaaaaaaa,32'haaaaaaaa,32'haaaaaaaa};



wire [ 3:0] src_clk = {i_src_clk3,i_src_clk2,i_src_clk1,i_src_clk0};

//********************** Pattern Controller ********************************************
// 8B10B Pattern Format:
//    0        4        8        12       16       20       24       28       32
// __ ________ ________ ________ ________ ________ ________ ________ ________ ________
// __X___a____X__idle__X__idle__X__idle__X__idle__X__idle__X__skip__X___pl___X___a____
//
// a:    4 bytes Channel Bonding Special Code
// idle: 4 bytes Idle Special Code
// skip: 4 bytes Skip Special Code
// pl:   4 bytes Payload
//
//**************************************************************************************
// valid for pattern branches
reg  [15:0] pattern_cnt    [3:0] ;
reg  [3 :0] cnt2_flag;
reg  [6:0] txq        [3:0] ;
wire [2:0] txh        [3:0] ;
reg  [15:0] pattern_cnt_ff [3:0] ;

generate
for (i=0; i<=3; i=i+1) begin : PATTERN_FF
    always @ (posedge src_clk[i] or negedge i_src_rstn) begin
        if(i_src_rstn==1'b0)
            pattern_cnt_ff[i] <= 16'd0;
        else begin
            pattern_cnt_ff[i] <= pattern_cnt[i];
        end
    end

    //128B130B Control first send eieos when rx is ready
    `ifdef IPM2T_HSST_SPEEDUP_SIM
     initial
     begin
         rx_rdy = 4'b0;
         #250000;
         rx_rdy = 4'b1111;
     end
    `else
    always @ (posedge src_clk[i] or negedge i_src_rstn) begin
        if(i_src_rstn==1'b0)
            cnt0[i] <= 11'd0;
        else if(cnt0[i][10])
            cnt0[i] <= 11'd0;
        else
            cnt0[i] <= cnt0[i] + 11'd1;
    end

    always @ (posedge src_clk[i] or negedge i_src_rstn) begin
        if(i_src_rstn==1'b0)
            cnt1[i] <= 10'd0;
        else if(cnt1[i][9])
            cnt1[i] <= 10'd0;
        else if(cnt0[i][10])
            cnt1[i] <= cnt1[i] + 11'd1;
        else;
    end

    always @ (posedge src_clk[i] or negedge i_src_rstn) begin
        if(i_src_rstn==1'b0)
            rx_rdy[i] <= 1'b0;
        else if(cnt1[i][9])//>1ms
            rx_rdy[i] <= 1'b1;
        else;
    end
    `endif
end
endgenerate

generate
for (i=0; i<=3; i=i+1) begin : PATTERN_CNT
    if(TD_8B10B_8BIT[i]==1) begin : TD_8B10B_8BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd31) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else if(TD_8B10B_16BIT[i]==1) begin : TD_8B10B_16BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd15) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else if(TD_66B_16B[i]==1 ) begin : TD_66B_16B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd65) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else if(TD_66B_32B[i]==1 ) begin : TD_66B_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd32)
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            else
                pattern_cnt[i] <= 16'd0;
        end
    end
    else if(TD_66B_32B_2[i]==1 ) begin : TD_66B_32B_2
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]==16'd32 && cnt2_flag[i]==1'b1)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd32 && cnt2_flag[i]==1'b1)
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            else ;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                cnt2_flag[i] <= 1'b0;
            else
                cnt2_flag[i] <= ~cnt2_flag[i];
        end
    end
    else if(TD_66B_64B[i]==1 ) begin : TD_66B_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd32) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else if(TD_67B_16B[i]==1) begin : TD_67B_16B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd133) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else if(TD_67B_32B[i]==1) begin : TD_67B_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd66) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else if(TD_67B_32B_2[i]==1) begin : TD_67B_32B_2
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]==16'd66 && cnt2_flag[i]==1'b1)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd66 && cnt2_flag[i]==1'b1)
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            else ;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                cnt2_flag[i] <= 1'b0;
            else
                cnt2_flag[i] <= ~cnt2_flag[i];
        end
    end
    else if(TD_67B_64B[i]==1) begin : TD_67B_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd66) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else if(TD_CAUI_32B[i]==1) begin : TD_CAUI_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd65) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else if(TD_CAUI_64B[i]==1) begin : TD_CAUI_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd32) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else if(TD_8B10B_64BIT[i]==1) begin : TD_8B10B_64BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd7) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
    else begin : TD_8B10B_32BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                pattern_cnt[i] <= 16'd0;
            else if(pattern_cnt[i]<16'd7) begin
                pattern_cnt[i] <= pattern_cnt[i]+16'd1;
            end
            else begin
                pattern_cnt[i] <= 16'd0;
            end
        end
    end
end
endgenerate

// ********************* Idle Bytes Generater *********************
// 4 bytes Idle Special Code
wire [ 9*4-1:0] idlle_byte0 ;
wire [ 9*4-1:0] idlle_byte1 ;
wire [ 9*4-1:0] idlle_byte2 ;
wire [ 9*4-1:0] idlle_byte3 ;

generate
if(CH0_RXPCS_COMMA_REG0==10'b1001111100) begin : COMMA_K281_O
    assign idlle_byte0[9*1-1:9*0] = K28_1;
end
else if(CH0_RXPCS_COMMA_REG0==10'b0001111100) begin : COMMA_K287_O
    assign idlle_byte0[9*1-1:9*0] = K28_7;
end
else begin : COMMA_K285_O
    assign idlle_byte0[9*1-1:9*0] = K28_5;
end

if(CH1_RXPCS_COMMA_REG0==10'b1001111100) begin : COMMA_K281_1
    assign idlle_byte0[9*2-1:9*1] = K28_1;
end
else if(CH1_RXPCS_COMMA_REG0==10'b0001111100) begin : COMMA_K287_1
    assign idlle_byte0[9*2-1:9*1] = K28_7;
end
else begin : COMMA_K285_1
    assign idlle_byte0[9*2-1:9*1] = K28_5;
end

if(CH2_RXPCS_COMMA_REG0==10'b1001111100) begin : COMMA_K281_2
    assign idlle_byte0[9*3-1:9*2] = K28_1;
end
else if(CH2_RXPCS_COMMA_REG0==10'b0001111100) begin : COMMA_K287_2
    assign idlle_byte0[9*3-1:9*2] = K28_7;
end
else begin : COMMA_K285_2
    assign idlle_byte0[9*3-1:9*2] = K28_5;
end

if(CH3_RXPCS_COMMA_REG0==10'b1001111100) begin : COMMA_K281_3
    assign idlle_byte0[9*4-1:9*3] = K28_1;
end
else if(CH3_RXPCS_COMMA_REG0==10'b0001111100) begin : COMMA_K287_3
    assign idlle_byte0[9*4-1:9*3] = K28_7;
end
else begin : COMMA_K285_3
    assign idlle_byte0[9*4-1:9*3] = K28_5;
end

endgenerate

assign idlle_byte1 = {4{D5_6}};
assign idlle_byte2 = idlle_byte0;
assign idlle_byte3 = idlle_byte1;

// ********************* Channel Bonding Bytes Generater *********************
// 4 bytes Channel Bonding Special Code
wire [ 9*4-1:0] a_byte0     ;
wire [ 9*4-1:0] a_byte1     ;
wire [ 9*4-1:0] a_byte2     ;
wire [ 9*4-1:0] a_byte3     ;

generate
if(CH0_RXPCS_BONDING=="Bypassed") begin : BONDING_BYPASS_BUF0
    assign a_byte0[9*1-1:9*0] = idlle_byte0[9*1-1:9*0];
end
else begin : BONDING_A_BUF0
    assign a_byte0[9*1-1:9*0] = {1'b1,CH0_RXPCS_A_REG};
end

if(CH1_RXPCS_BONDING=="Bypassed") begin : BONDING_BYPASS_BUF1
    assign a_byte0[9*2-1:9*1] = idlle_byte0[9*2-1:9*1];
end
else begin : BONDING_A_BUF1
    assign a_byte0[9*2-1:9*1] = {1'b1,CH1_RXPCS_A_REG};
end

if(CH2_RXPCS_BONDING=="Bypassed") begin : BONDING_BYPASS_BUF2
    assign a_byte0[9*3-1:9*2] = idlle_byte0[9*3-1:9*2];
end
else begin : BONDING_A_BUF2
    assign a_byte0[9*3-1:9*2] = {1'b1,CH2_RXPCS_A_REG};
end

if(CH3_RXPCS_BONDING=="Bypassed") begin : BONDING_BYPASS_BUF3
    assign a_byte0[9*4-1:9*3] = idlle_byte0[9*4-1:9*3];
end
else begin : BONDING_A_BUF3
    assign a_byte0[9*4-1:9*3] = {1'b1,CH3_RXPCS_A_REG};
end

endgenerate

assign a_byte1 = idlle_byte1;
assign a_byte2 = idlle_byte2;
assign a_byte3 = idlle_byte3;

// ********************* Skip Bytes Generater *********************
// 4 bytes Skip Special Code
wire [ 3*4-1:0] ctc_mode    ;
wire [ 9*4-1:0] skip_buf0   ;
wire [ 9*4-1:0] skip_buf1   ;
wire [ 9*4-1:0] skip_buf2   ;
wire [ 9*4-1:0] skip_buf3   ;
wire [ 9*4-1:0] skip_byte0  ;
wire [ 9*4-1:0] skip_byte1  ;
wire [ 9*4-1:0] skip_byte2  ;
wire [ 9*4-1:0] skip_byte3  ;

assign ctc_mode[3*1-1:3*0] = CH0_RXPCS_CTC == "GE"                 ? 3'd1 :
                             CH0_RXPCS_CTC == "XAUI"               ? 3'd2 :
                             CH0_RXPCS_CTC == "PCIE_2BYTE"         ? 3'd3 :
                             CH0_RXPCS_CTC == "CUSTOMERIZED_1BYTE" ? 3'd4 :
                             CH0_RXPCS_CTC == "CUSTOMERIZED_2BYTE" ? 3'd5 :
                            (CH0_RXPCS_CTC == "CUSTOMERIZED_4BYTE" || CH0_RXPCS_CTC == "PCIE_4BYTE") ? 3'd6 : 3'd7;
assign ctc_mode[3*2-1:3*1] = CH1_RXPCS_CTC == "GE"                 ? 3'd1 :
                             CH1_RXPCS_CTC == "XAUI"               ? 3'd2 :
                             CH1_RXPCS_CTC == "PCIE_2BYTE"         ? 3'd3 :
                             CH1_RXPCS_CTC == "CUSTOMERIZED_1BYTE" ? 3'd4 :
                             CH1_RXPCS_CTC == "CUSTOMERIZED_2BYTE" ? 3'd5 :
                            (CH1_RXPCS_CTC == "CUSTOMERIZED_4BYTE" || CH1_RXPCS_CTC == "PCIE_4BYTE") ? 3'd6 : 3'd7;
assign ctc_mode[3*3-1:3*2] = CH2_RXPCS_CTC == "GE"                 ? 3'd1 :
                             CH2_RXPCS_CTC == "XAUI"               ? 3'd2 :
                             CH2_RXPCS_CTC == "PCIE_2BYTE"         ? 3'd3 :
                             CH2_RXPCS_CTC == "CUSTOMERIZED_1BYTE" ? 3'd4 :
                             CH2_RXPCS_CTC == "CUSTOMERIZED_2BYTE" ? 3'd5 :
                            (CH2_RXPCS_CTC == "CUSTOMERIZED_4BYTE" || CH2_RXPCS_CTC == "PCIE_4BYTE") ? 3'd6 : 3'd7;
assign ctc_mode[3*4-1:3*3] = CH3_RXPCS_CTC == "GE"                 ? 3'd1 :
                             CH3_RXPCS_CTC == "XAUI"               ? 3'd2 :
                             CH3_RXPCS_CTC == "PCIE_2BYTE"         ? 3'd3 :
                             CH3_RXPCS_CTC == "CUSTOMERIZED_1BYTE" ? 3'd4 :
                             CH3_RXPCS_CTC == "CUSTOMERIZED_2BYTE" ? 3'd5 :
                            (CH3_RXPCS_CTC == "CUSTOMERIZED_4BYTE" || CH3_RXPCS_CTC == "PCIE_4BYTE") ? 3'd6 : 3'd7;

assign skip_buf0[9*1-1:9*0] = CH0_RXPCS_SKIP_REG0;
assign skip_buf0[9*2-1:9*1] = CH1_RXPCS_SKIP_REG0;
assign skip_buf0[9*3-1:9*2] = CH2_RXPCS_SKIP_REG0;
assign skip_buf0[9*4-1:9*3] = CH3_RXPCS_SKIP_REG0;
assign skip_buf1[9*1-1:9*0] = CH0_RXPCS_SKIP_REG1;
assign skip_buf1[9*2-1:9*1] = CH1_RXPCS_SKIP_REG1;
assign skip_buf1[9*3-1:9*2] = CH2_RXPCS_SKIP_REG1;
assign skip_buf1[9*4-1:9*3] = CH3_RXPCS_SKIP_REG1;
assign skip_buf2[9*1-1:9*0] = CH0_RXPCS_SKIP_REG2;
assign skip_buf2[9*2-1:9*1] = CH1_RXPCS_SKIP_REG2;
assign skip_buf2[9*3-1:9*2] = CH2_RXPCS_SKIP_REG2;
assign skip_buf2[9*4-1:9*3] = CH3_RXPCS_SKIP_REG2;
assign skip_buf3[9*1-1:9*0] = CH0_RXPCS_SKIP_REG3;
assign skip_buf3[9*2-1:9*1] = CH1_RXPCS_SKIP_REG3;
assign skip_buf3[9*3-1:9*2] = CH2_RXPCS_SKIP_REG3;
assign skip_buf3[9*4-1:9*3] = CH3_RXPCS_SKIP_REG3;

generate
for (i=0; i<=3; i=i+1) begin : SKIP_BUF
    assign skip_byte0[9*(i+1)-1:9*i] = (ctc_mode[3*(i+1)-1:3*i] == 1) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 2) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 3) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 4) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 5) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 6) ? skip_buf0[9*(i+1)-1:9*i] : K28_5;
    assign skip_byte1[9*(i+1)-1:9*i] = (ctc_mode[3*(i+1)-1:3*i] == 1) ? skip_buf1[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 2) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 3) ? skip_buf1[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 4) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 5) ? skip_buf1[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 6) ? skip_buf1[9*(i+1)-1:9*i] : D5_6;
    assign skip_byte2[9*(i+1)-1:9*i] = (ctc_mode[3*(i+1)-1:3*i] == 1) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 2) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 3) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 4) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 5) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 6) ? skip_buf2[9*(i+1)-1:9*i] : K28_5;
    assign skip_byte3[9*(i+1)-1:9*i] = (ctc_mode[3*(i+1)-1:3*i] == 1) ? skip_buf1[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 2) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 3) ? skip_buf1[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 4) ? skip_buf0[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 5) ? skip_buf1[9*(i+1)-1:9*i] :
                                       (ctc_mode[3*(i+1)-1:3*i] == 6) ? skip_buf3[9*(i+1)-1:9*i] : D5_6;
end
endgenerate

// ********************* Payload Generater *********************
reg  [79:0] payload [3:0];
localparam [ 7:0] PAYLOAD_8W  =  8'b01_000_111;
localparam [ 9:0] PAYLOAD_10W = 10'b01_0000_1111;
localparam [15:0] PAYLOAD_16W = {2{8'b0001_0111}};
localparam [19:0] PAYLOAD_20W = {2{10'b00001_01111}};
localparam [31:0] PAYLOAD_32W = {4{8'b0101_0011}};
localparam [39:0] PAYLOAD_40W = {4{10'b00101_00111}};
localparam [63:0] PAYLOAD_64W = {8{8'b1010_0011}};
localparam [79:0] PAYLOAD_80W = {8{10'b01110_00011}};
localparam [15:0] PAYLOAD_66B67B_16B = {2{8'b1010_1010}};
localparam [31:0] PAYLOAD_66B67B_32B = {4{8'b1010_1010}};
localparam [63:0] PAYLOAD_66B67B_64B = {8{8'b1010_1010}};
localparam [31:0] PAYLOAD_CAUI_32B   = {4{8'b1010_1010}};
localparam [63:0] PAYLOAD_CAUI_64B   = {8{8'b1010_1010}};
localparam [31:0] PAYLOAD_120B130B_32B = {32'h570ec0e1};
localparam [63:0] PAYLOAD_120B130B_64B = {32'h570ec0e1,32'h570ec0e1};


generate
for (i=0; i<=3; i=i+1) begin: PL_LANE
    if(TD_8BIT_ONLY[i]==1) begin : TD_8BIT_ONLY
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {72'b0,PAYLOAD_8W};
            else
                payload[i] <= payload[i];
        end
    end
    else if(TD_10BIT_ONLY[i]==1) begin : TD_10BIT_ONLY
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {70'b0,PAYLOAD_10W};
            else
                payload[i] <= payload[i];
        end
    end
    else if(TD_16BIT_ONLY[i]==1) begin : TD_16BIT_ONLY
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {64'b0,PAYLOAD_16W};
            else
                payload[i] <= payload[i];
        end
    end
    else if(TD_20BIT_ONLY[i]==1) begin : TD_20BIT_ONLY
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {60'b0,PAYLOAD_20W};
            else
                payload[i] <= payload[i];
        end
    end
    else if(TD_32BIT_ONLY[i]==1) begin : TD_32BIT_ONLY
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {48'b0,PAYLOAD_32W};
            else
                payload[i] <= payload[i];
        end
    end
    else if(TD_40BIT_ONLY[i]==1) begin : TD_40BIT_ONLY
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {40'b0,PAYLOAD_40W};
            else
                payload[i] <= payload[i];
        end
    end
    else if(TD_64BIT_ONLY[i]==1) begin : TD_64BIT_ONLY
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {16'b0,PAYLOAD_64W};
            else
                payload[i] <= payload[i];
        end
    end
    else if(TD_80BIT_ONLY[i]==1) begin : TD_80BIT_ONLY
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {PAYLOAD_80W};
            else
                payload[i] <= payload[i];
        end
    end
    else if(TD_8B10B_8BIT[i]==1) begin : TD_8B10B_8BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= 80'b1;
            else if((pattern_cnt[i]>=16'd28)&&(pattern_cnt[i]<=16'd31)) begin
                payload[i][7:0] <= {payload[i][6:0],payload[i][7]};
            end
            else ;
        end
    end
    else if(TD_8B10B_16BIT[i]==1) begin : TD_8B10B_16BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= 80'b1;
            else if((pattern_cnt[i]>=16'd14)&&(pattern_cnt[i]<=16'd15))
                payload[i][15:0] <= {payload[i][14:0],payload[i][15]};
            else ;
        end
    end
    else if(TD_66B_16B[i]==1) begin : TD_66B_16B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn == 1'b0)
                payload[i] <= {64'd0,PAYLOAD_66B67B_16B};
            else if((pattern_cnt[i] == 16'd62) || (pattern_cnt[i] == 16'd63))
                payload[i] <= 80'd0;
            else
                payload[i] <= {64'd0,PAYLOAD_66B67B_16B};
        end
    end
    else if(TD_66B_32B[i]==1) begin : TD_66B_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn == 1'b0)
                payload[i] <= {48'd0,PAYLOAD_66B67B_32B};
            else if(pattern_cnt[i] == 16'd31)
                payload[i] <= 80'd0;
            else
                payload[i] <= {48'd0,PAYLOAD_66B67B_32B};
        end
    end
    else if(TD_66B_32B_2[i]==1) begin : TD_66B_32B_2
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn == 1'b0)
                payload[i] <= {48'd0,PAYLOAD_66B67B_32B};
            else if(pattern_cnt[i] == 16'd32)
                payload[i] <= 80'd0;
            else
                payload[i] <= {48'd0,PAYLOAD_66B67B_32B};
        end
    end
    else if(TD_66B_64B[i]==1) begin : TD_66B_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn == 1'b0)
                payload[i] <= {16'd0,PAYLOAD_66B67B_64B};
            else if(pattern_cnt[i] == 16'd32)
                payload[i] <= 80'd0;
            else
                payload[i] <= {16'd0,PAYLOAD_66B67B_64B};
        end
    end
    else if(TD_67B_16B[i]) begin : TD_67B_16B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {64'd0,PAYLOAD_66B67B_16B};
            else if((pattern_cnt[i] == 16'd42) || (pattern_cnt[i] == 16'd43) || (pattern_cnt[i] == 16'd88) || (pattern_cnt[i] == 16'd89) || (pattern_cnt[i] == 16'd130) || (pattern_cnt[i] == 16'd131))
                payload[i] <= 80'd0;
            else
                payload[i] <= {64'd0,PAYLOAD_66B67B_16B};
        end
    end
    else if(TD_67B_32B[i]) begin : TD_67B_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {48'd0,PAYLOAD_66B67B_32B};
            else if((pattern_cnt[i] == 16'd21) || (pattern_cnt[i] == 16'd44) || (pattern_cnt[i] == 16'd65))
                payload[i] <= 80'd0;
            else
                payload[i] <= {48'd0,PAYLOAD_66B67B_32B};
        end
    end
    else if(TD_67B_32B_2[i]) begin : TD_67B_32B_2
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {48'd0,PAYLOAD_66B67B_32B};
            else if((pattern_cnt[i] == 16'd22) || (pattern_cnt[i] == 16'd44) || (pattern_cnt[i] == 16'd66))
                payload[i] <= 80'd0;
            else
                payload[i] <= {48'd0,PAYLOAD_66B67B_32B};
        end
    end
    else if(TD_67B_64B[i]) begin : TD_67B_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= {16'd0,PAYLOAD_66B67B_64B};
            else if((pattern_cnt[i] == 16'd22) || (pattern_cnt[i] == 16'd44) || (pattern_cnt[i] == 16'd66))
                payload[i] <= 80'd0;
            else
                payload[i] <= {16'd0,PAYLOAD_66B67B_64B};
        end
    end
    else if(TD_CAUI_32B[i]==1) begin : TD_CAUI_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn == 1'b0)
                payload[i] <= {48'd0,PAYLOAD_CAUI_32B};
            else if((pattern_cnt[i] == 16'd62) || (pattern_cnt[i] == 16'd63))
                payload[i] <= 80'd0;
            else
                payload[i] <= {48'd0,PAYLOAD_CAUI_32B};
        end
    end
    else if(TD_CAUI_64B[i]==1) begin : TD_CAUI_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn == 1'b0)
                payload[i] <= {16'd0,PAYLOAD_CAUI_64B};
            else if(pattern_cnt[i] == 16'd31)
                payload[i] <= 80'd0;
            else
                payload[i] <= {16'd0,PAYLOAD_CAUI_64B};
        end
    end
    else if(TD_130B_32B[i]==1) begin : TD_130B_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn == 1'b0)
                payload[i] <= {48'd0,PAYLOAD_120B130B_32B};
            else if(eieos_en[i]==1'b1)
                payload[i] <= {48'd0,32'hff00_ff00};//eieos order-set
            else if(skp_len[i]==3'd2) //skp order-set
                 payload[i] <= ctrl_cnt[i]==7'd59 ? skp_8byte_data[0+:32] : skp_8byte_data[32+:32];
            else if(skp_len[i]==3'd3) begin
                case(ctrl_cnt[i])
                    7'd59   :   payload[i] <= {48'd0,skp_12byte_data[0 +:32]};
                    7'd60   :   payload[i] <= {48'd0,skp_12byte_data[32+:32]};
                    7'd61   :   payload[i] <= {48'd0,skp_12byte_data[64+:32]};
                    default :   payload[i] <= {48'd0,PAYLOAD_120B130B_32B};
                endcase
            end
            else if(skp_len[i]==3'd4) begin
                case(ctrl_cnt[i])
                    7'd59   :   payload[i] <= {48'd0,skp_16byte_data[0 +:32]};
                    7'd60   :   payload[i] <= {48'd0,skp_16byte_data[32+:32]};
                    7'd61   :   payload[i] <= {48'd0,skp_16byte_data[64+:32]};
                    7'd62   :   payload[i] <= {48'd0,skp_16byte_data[96+:32]};
                    default :   payload[i] <= {48'd0,PAYLOAD_120B130B_32B};
                endcase
            end
            else if(skp_len[i]==3'd5) begin
                case(ctrl_cnt[i])
                    7'd59   :   payload[i] <= {48'd0,skp_20byte_data[0  +:32]};
                    7'd60   :   payload[i] <= {48'd0,skp_20byte_data[32 +:32]};
                    7'd61   :   payload[i] <= {48'd0,skp_20byte_data[64 +:32]};
                    7'd62   :   payload[i] <= {48'd0,skp_20byte_data[96 +:32]};
                    7'd63   :   payload[i] <= {48'd0,skp_20byte_data[128+:32]};
                    default :   payload[i] <= {48'd0,PAYLOAD_120B130B_32B};
                endcase
            end
            else if(skp_len[i]==3'd6) begin
                case(ctrl_cnt[i])
                    7'd59   :   payload[i] <= {48'd0,skp_24byte_data[0  +:32]};
                    7'd60   :   payload[i] <= {48'd0,skp_24byte_data[32 +:32]};
                    7'd61   :   payload[i] <= {48'd0,skp_24byte_data[64 +:32]};
                    7'd62   :   payload[i] <= {48'd0,skp_24byte_data[96 +:32]};
                    7'd63   :   payload[i] <= {48'd0,skp_24byte_data[128+:32]};
                    7'd64   :   payload[i] <= {48'd0,skp_24byte_data[160+:32]};
                    default :   payload[i] <= {48'd0,PAYLOAD_120B130B_32B};
                endcase
            end
            else
                payload[i] <= {48'd0,PAYLOAD_120B130B_32B};
        end
    end
    else if(TD_130B_64B[i]==1) begin : TD_130B_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn == 1'b0)
                payload[i] <= {16'd0,PAYLOAD_120B130B_64B};
			else if(eieos_en[i]==1'b1) begin
				case (eieos_cnt[i])
					3'd1	:	payload[i] <= {16'd0,32'hff00_ff00,32'h570ec0e1};//eieos order-set
					3'd2	:	payload[i] <= {16'd0,32'hff00_ff00,32'hff00_ff00};
					default :	payload[i] <= {48'd0,32'hff00_ff00};
				endcase
			end
			else if(ctrl_cnt[i]==7'd64)
				payload[i] <= {16'd0,32'h570ec0e1,32'b0};
			else if(ctrl_cnt[i]==7'd29)
				payload[i] <= {16'd0,32'haaaaaaaa,32'h570ec0e1};
			else if(ctrl_cnt[i]==7'd30)
				payload[i] <= {16'd0,32'haaaaaaaa,32'haaaaaaaa};
			else if(ctrl_cnt[i]==7'd31)
				payload[i] <= {48'b0,32'h3b76e9e1};
            else
                payload[i] <= {16'd0,PAYLOAD_120B130B_64B};
        end
    end
    else if(TD_8B10B_64BIT[i]==1) begin : TD_8B10B_64BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= 80'b1;
            else if(pattern_cnt[i]==16'd7)
                payload[i][63:0] <= {payload[i][62:0],payload[i][63]};
            else ;
        end
    end
    else begin : TD_8B10B_32BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                payload[i] <= 80'b1;
            else if(pattern_cnt[i]==16'd7)
                payload[i][31:0] <= {payload[i][30:0],payload[i][31]};
            else ;
        end
    end
end
endgenerate

// ********************* Pattern Generater *********************
reg [79:0] txd [3:0];
reg [ 7:0] txk [3:0];

generate
for (i=0; i<=3; i=i+1) begin: PATTERN_LANE
    if(TD_8B10B_8BIT[i]==1) begin : TD_8B10B_8BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txd[i] <= {72'd0,idlle_byte0[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,idlle_byte0[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd0) begin
                txd[i] <= {72'h0,a_byte0[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,a_byte0[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd1) begin
                txd[i] <= {72'h0,a_byte1[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,a_byte1[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd2) begin
                txd[i] <= {72'h0,a_byte2[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,a_byte2[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd3) begin
                txd[i] <= {72'h0,a_byte3[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,a_byte3[9*(i+1)-1]};
            end
            else if((pattern_cnt[i]==16'd4)||(pattern_cnt[i]==16'd8)||(pattern_cnt[i]==16'd12)||(pattern_cnt[i]==16'd16)||(pattern_cnt[i]==16'd20)) begin
                txd[i] <= {72'h0,idlle_byte0[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,idlle_byte0[9*(i+1)-1]};
            end
            else if((pattern_cnt[i]==16'd5)||(pattern_cnt[i]==16'd9)||(pattern_cnt[i]==16'd13)||(pattern_cnt[i]==16'd17)||(pattern_cnt[i]==16'd21)) begin
                txd[i] <= {72'h0,idlle_byte1[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,idlle_byte1[9*(i+1)-1]};
            end
            else if((pattern_cnt[i]==16'd6)||(pattern_cnt[i]==16'd10)||(pattern_cnt[i]==16'd14)||(pattern_cnt[i]==16'd18)||(pattern_cnt[i]==16'd22)) begin
                txd[i] <= {72'h0,idlle_byte2[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,idlle_byte2[9*(i+1)-1]};
            end
            else if((pattern_cnt[i]==16'd7)||(pattern_cnt[i]==16'd11)||(pattern_cnt[i]==16'd15)||(pattern_cnt[i]==16'd19)||(pattern_cnt[i]==16'd23)) begin
                txd[i] <= {72'h0,idlle_byte3[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,idlle_byte3[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd24) begin
                txd[i] <= {72'h0,skip_byte0[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,skip_byte0[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd25) begin
                txd[i] <= {72'h0,skip_byte1[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,skip_byte1[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd26) begin
                txd[i] <= {72'h0,skip_byte2[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,skip_byte2[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd27) begin
                txd[i] <= {72'h0,skip_byte3[9*(i+1)-2:9*i]};
                txk[i] <= { 7'h0,skip_byte3[9*(i+1)-1]};
            end
            else begin
                txd[i] <= payload[i];
                txk[i] <= 8'd0;
            end
        end
    end
    else if(TD_8B10B_16BIT[i]==1) begin : TD_8B10B_16BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txd[i] <= {64'd0,{2{idlle_byte0[9*(i+1)-2:9*i]}}};
                txk[i] <= { 6'd0,{2{idlle_byte0[9*(i+1)-1]}}};
            end
            else if(pattern_cnt[i]==16'd0) begin
                txd[i] <= {64'h0,a_byte1[9*(i+1)-2:9*i],a_byte0[9*(i+1)-2:9*i]};
                txk[i] <= { 6'h0,a_byte1[9*(i+1)-1],a_byte0[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd1) begin
                txd[i] <= {64'h0,a_byte3[9*(i+1)-2:9*i],a_byte2[9*(i+1)-2:9*i]};
                txk[i] <= { 6'h0,a_byte3[9*(i+1)-1],a_byte2[9*(i+1)-1]};
            end
            else if((pattern_cnt[i]==16'd2)||(pattern_cnt[i]==16'd4)||(pattern_cnt[i]==16'd6)||(pattern_cnt[i]==16'd8)||(pattern_cnt[i]==16'd10)) begin
                txd[i] <= {64'h0,idlle_byte1[9*(i+1)-2:9*i],idlle_byte0[9*(i+1)-2:9*i]};
                txk[i] <= { 6'h0,idlle_byte1[9*(i+1)-1],idlle_byte0[9*(i+1)-1]};
            end
            else if((pattern_cnt[i]==16'd3)||(pattern_cnt[i]==16'd5)||(pattern_cnt[i]==16'd7)||(pattern_cnt[i]==16'd9)||(pattern_cnt[i]==16'd11)) begin
                txd[i] <= {64'h0,idlle_byte3[9*(i+1)-2:9*i],idlle_byte2[9*(i+1)-2:9*i]};
                txk[i] <= { 6'h0,idlle_byte3[9*(i+1)-1],idlle_byte2[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd12) begin
                txd[i] <= {64'h0,skip_byte1[9*(i+1)-2:9*i],skip_byte0[9*(i+1)-2:9*i]};
                txk[i] <= { 6'h0,skip_byte1[9*(i+1)-1],skip_byte0[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd13) begin
                txd[i] <= {64'h0,skip_byte3[9*(i+1)-2:9*i],skip_byte2[9*(i+1)-2:9*i]};
                txk[i] <= { 6'h0,skip_byte3[9*(i+1)-1],skip_byte2[9*(i+1)-1]};
            end
            else begin
                txd[i] <= payload[i];
                txk[i] <= 8'd0;
            end
        end
    end
    else if(TD_8B10B_32BIT[i]==1) begin : TD_8B10B_32BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txd[i] <= {48'b0,{4{idlle_byte0[9*(i+1)-2:9*i]}}};
                txk[i] <= { 4'd0,{4{idlle_byte0[9*(i+1)-1]}}};
            end
            else if(pattern_cnt[i]==16'd0) begin
                txd[i] <= {48'h0,a_byte3[9*(i+1)-2:9*i],a_byte2[9*(i+1)-2:9*i],a_byte1[9*(i+1)-2:9*i],a_byte0[9*(i+1)-2:9*i]};
                txk[i] <= {a_byte3[9*(i+1)-1],a_byte2[9*(i+1)-1],a_byte1[9*(i+1)-1],a_byte0[9*(i+1)-1]};
            end
            else if((pattern_cnt[i]==16'd1)||(pattern_cnt[i]==16'd2)||(pattern_cnt[i]==16'd3)||(pattern_cnt[i]==16'd4)||(pattern_cnt[i]==16'd5)) begin
                txd[i] <= {48'h0,idlle_byte3[9*(i+1)-2:9*i],idlle_byte2[9*(i+1)-2:9*i],idlle_byte1[9*(i+1)-2:9*i],idlle_byte0[9*(i+1)-2:9*i]};
                txk[i] <= {idlle_byte3[9*(i+1)-1],idlle_byte2[9*(i+1)-1],idlle_byte1[9*(i+1)-1],idlle_byte0[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd6) begin
                txd[i] <= {48'h0,skip_byte3[9*(i+1)-2:9*i],skip_byte2[9*(i+1)-2:9*i],skip_byte1[9*(i+1)-2:9*i],skip_byte0[9*(i+1)-2:9*i]};
                txk[i] <= {skip_byte3[9*(i+1)-1],skip_byte2[9*(i+1)-1],skip_byte1[9*(i+1)-1],skip_byte0[9*(i+1)-1]};
            end
            else begin
                txd[i] <= payload[i];
                txk[i] <= 8'd0;
            end
        end
    end
    else if(TD_8B10B_64BIT[i]==1) begin : TD_8B10B_64BIT
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txd[i] <= {16'b0,{8{idlle_byte0[9*(i+1)-2:9*i]}}};
                txk[i] <= {8{idlle_byte0[9*(i+1)-1]}};
            end
            else if(pattern_cnt[i]==16'd0) begin
                txd[i] <= {16'b0,a_byte3[9*(i+1)-2:9*i],a_byte2[9*(i+1)-2:9*i],a_byte1[9*(i+1)-2:9*i],a_byte0[9*(i+1)-2:9*i],a_byte3[9*(i+1)-2:9*i],a_byte2[9*(i+1)-2:9*i],a_byte1[9*(i+1)-2:9*i],a_byte0[9*(i+1)-2:9*i]};
                txk[i] <= {a_byte3[9*(i+1)-1],a_byte2[9*(i+1)-1],a_byte1[9*(i+1)-1],a_byte0[9*(i+1)-1],a_byte3[9*(i+1)-1],a_byte2[9*(i+1)-1],a_byte1[9*(i+1)-1],a_byte0[9*(i+1)-1]};
            end
            else if((pattern_cnt[i]==16'd1)||(pattern_cnt[i]==16'd2)||(pattern_cnt[i]==16'd3)||(pattern_cnt[i]==16'd4)||(pattern_cnt[i]==16'd5)) begin
                txd[i] <= {16'b0,idlle_byte3[9*(i+1)-2:9*i],idlle_byte2[9*(i+1)-2:9*i],idlle_byte1[9*(i+1)-2:9*i],idlle_byte0[9*(i+1)-2:9*i],idlle_byte3[9*(i+1)-2:9*i],idlle_byte2[9*(i+1)-2:9*i],idlle_byte1[9*(i+1)-2:9*i],idlle_byte0[9*(i+1)-2:9*i]};
                txk[i] <= {idlle_byte3[9*(i+1)-1],idlle_byte2[9*(i+1)-1],idlle_byte1[9*(i+1)-1],idlle_byte0[9*(i+1)-1],idlle_byte3[9*(i+1)-1],idlle_byte2[9*(i+1)-1],idlle_byte1[9*(i+1)-1],idlle_byte0[9*(i+1)-1]};
            end
            else if(pattern_cnt[i]==16'd6) begin
                txd[i] <= {16'b0,skip_byte3[9*(i+1)-2:9*i],skip_byte2[9*(i+1)-2:9*i],skip_byte1[9*(i+1)-2:9*i],skip_byte0[9*(i+1)-2:9*i],skip_byte3[9*(i+1)-2:9*i],skip_byte2[9*(i+1)-2:9*i],skip_byte1[9*(i+1)-2:9*i],skip_byte0[9*(i+1)-2:9*i]};
                txk[i] <= {skip_byte3[9*(i+1)-1],skip_byte2[9*(i+1)-1],skip_byte1[9*(i+1)-1],skip_byte0[9*(i+1)-1],skip_byte3[9*(i+1)-1],skip_byte2[9*(i+1)-1],skip_byte1[9*(i+1)-1],skip_byte0[9*(i+1)-1]};
            end
            else begin
                txd[i] <= payload[i];
                txk[i] <= 8'd0;
            end
        end
    end
    else if(TD_130B_32B[i]==1) begin : TD_130B_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txd[i] <= {48'd0,PAYLOAD_120B130B_32B};
                txk[i] <= 8'd0;
            end
            else begin
                txd[i] <= payload[i];
                txk[i] <= 8'd0;
            end
        end
    end
    else if(TD_130B_64B[i]==1) begin : TD_130B_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txd[i] <= {16'd0,PAYLOAD_120B130B_64B};
                txk[i] <= 8'd0;
            end
            else begin
                txd[i] <= payload[i];
                txk[i] <= 8'd0;
            end
        end
    end
    else begin : TD_ONLY_OR_6667B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txd[i] <= 80'd0;
                txk[i] <= 8'd0;
            end
            else begin
                txd[i] <= payload[i];
                txk[i] <= 8'd0;
            end
        end
    end
end
endgenerate

// ********************* 66B67B 128B130B HEADER && SEQUENCE Generater *********************
generate
for (i=0; i<=3; i=i+1) begin : TXH_GENERATE
    if(TD_66B_16B[i]==1 || TD_66B_32B[i]==1 || TD_66B_32B_2[i]==1 || TD_66B_64B[i]) begin : TD_66B_TXH_ENABLE
        assign txh[i] = 3'b001;
    end
    else if(TD_CAUI_32B[i]==1 || TD_CAUI_64B[i]==1) begin : TD_CAUI_TXH_ENABLE
        assign txh[i] = 3'b001;
    end
    else if(TD_67B_16B[i]==1 || TD_67B_32B[i]==1 || TD_67B_32B_2[i] || TD_67B_64B[i]) begin : TD_67B_TXH_ENABLE
        assign txh[i] = 3'b100 ;
    end
    else if(TD_130B_32B[i]==1 || TD_130B_64B[i]==1) begin : TD_130B_TXH_ENABLE
        assign txh[i] = header[i] ;
    end
    else begin : TXH_DISABLE
        assign txh[i] = 3'b000 ;
    end
end
endgenerate

generate
for (i=0; i<=3; i=i+1) begin : CTRL_FOR_130B
    if(TD_130B_32B[i]==1) begin : TD_130B_32B_CTRL_ENABLE
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                ctrl_cnt[i] <= 7'd0;
            else if(ctrl_cnt[i]==(7'd60 + skp_len[i]))
                ctrl_cnt[i] <= 7'd0;
            else
                ctrl_cnt[i] <= ctrl_cnt[i] + 7'd1;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                skp_len[i] <= 3'd2;
            else if(rx_rdy[i]==1'b1 && eieos_cnt[i] ==3'd0 && ctrl_cnt[i]==7'd58)
                skp_len[i] <= 3'd4; //eieos
            else if(ctrl_cnt[i]==7'd60 + skp_len[i]) begin
                case(skp_len[i])
                    3'd2:   skp_len[i] <= 3'd5;
                    3'd3:   skp_len[i] <= 3'd6;
                    3'd4:   skp_len[i] <= 3'd2;
                    3'd5:   skp_len[i] <= 3'd3;
                    3'd6:   skp_len[i] <= 3'd4;
                    default:skp_len[i] <= 3'd2;
                endcase
            end
            else ;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                eieos_cnt[i] <= 3'd0;
            else if(rx_rdy[i]==1'b1 && eieos_cnt[i] ==3'd0 && ctrl_cnt[i]==7'd58)
                eieos_cnt[i] <= 3'd1;
            else if(eieos_cnt[i] ==3'd5)
                eieos_cnt[i] <= eieos_cnt[i];
            else if(eieos_cnt[i] !=3'd0)
                eieos_cnt[i] <= eieos_cnt[i] + 3'b1;
            else ;
        end

        always @ (*) begin
            if(rx_rdy[i]==1'b1 && eieos_cnt[i]>=3'd1 && eieos_cnt[i]<=3'd4)
                eieos_en[i] = 1'b1;
            else
                eieos_en[i] = 1'b0;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                txd_vld[i] <= 1'b0;
            else if(ctrl_cnt[i]==7'd60 + skp_len[i])
                txd_vld[i] <= 1'b0;
            else
                txd_vld[i] <= 1'b1;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                tx_start[i] <= 1'b0;
            else if(ctrl_cnt[i]>7'd60)
                tx_start[i] <= 1'b0;
            else if(ctrl_cnt[i][1:0]==2'b00) //means /4 is zero
                tx_start[i] <= 1'b1;
            else
                tx_start[i] <= 1'b0;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                header[i] <= 2'b10;
            else if(ctrl_cnt[i]>=7'd60)
                header[i] <= 2'b01;
            else
                header[i] <= 2'b10;
        end
    end
    else if(TD_130B_64B[i]==1) begin : TD_130B_64B_CTRL_ENABLE
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                ctrl_cnt[i] <= 7'd0;
            else if(ctrl_cnt[i]==7'd64)//compare with 128b130b_32bit
                ctrl_cnt[i] <= 7'd0;
            else
                ctrl_cnt[i] <= ctrl_cnt[i] + 7'd1;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                eieos_cnt[i] <= 3'd0;
            else if(rx_rdy[i]==1'b1 && eieos_cnt[i] ==3'd0 && ctrl_cnt[i]==7'd28 && tx_st_flag[i]==1'b0)
                eieos_cnt[i] <= 3'd1;
            else if(eieos_cnt[i] ==3'd4)
                eieos_cnt[i] <= eieos_cnt[i];
            else if(eieos_cnt[i] !=3'd0)
                eieos_cnt[i] <= eieos_cnt[i] + 3'b1;
            else ;
        end

        always @ (*) begin
            if(rx_rdy[i]==1'b1 && eieos_cnt[i]>=3'd1 && eieos_cnt[i]<=3'd3)
                eieos_en[i] = 1'b1;
            else
                eieos_en[i] = 1'b0;
        end

		always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                tx_st_flag[i] <= 1'b0;
            else if(ctrl_cnt[i]==7'd32 || ctrl_cnt[i]==7'd64)
                tx_st_flag[i] <= ~tx_st_flag[i];
            else;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                txd_vld[i] <= 1'b0;
			else if(ctrl_cnt[i]>=7'd1 && ctrl_cnt[i]<=7'd32)
                txd_vld[i] <= 1'b1;
			else if(ctrl_cnt[i]>=7'd33 && ctrl_cnt[i]<=7'd64)
                txd_vld[i] <= 1'b1;
            else
                txd_vld[i] <= 1'b0;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                txd_vld_h[i] <= 1'b0;
			else if(ctrl_cnt[i]<=7'd31)
                txd_vld_h[i] <= 1'b1;
			else if(ctrl_cnt[i]>=7'd33 && ctrl_cnt[i]<=7'd64)
                txd_vld_h[i] <= 1'b1;
            else
                txd_vld_h[i] <= 1'b0;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                tx_start_h[i] <= 1'b0;
			else if(ctrl_cnt[i][0]==1'b0 && tx_st_flag[i]==1'b0 && ctrl_cnt[i]<=7'd30) //means /2 is zero
                tx_start_h[i] <= 1'b1;
            else
                tx_start_h[i] <= 1'b0;
        end

		always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
				tx_start[i] <= 1'b0;
			else if(tx_st_flag[i]==1'b1) begin
				if(ctrl_cnt[i]==7'd33)
					tx_start[i] <= 1'b1;
				else
					tx_start[i] <= ~tx_start[i];
			end
            else
                tx_start[i] <= 1'b0;
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
        	if(i_src_rstn==1'b0)
                header[i] <= 2'b10;
			else if(ctrl_cnt[i]==7'd30 || ctrl_cnt[i]==7'd31 || ctrl_cnt[i]==7'd32)
                header[i] <= 2'b01;
            else
                header[i] <= 2'b10;
        end
    end
    else begin : TD_130B_CTRL_DISABLE
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                txd_vld[i] <= 1'b0;
            else
                txd_vld[i] <= txd_vld[i];
        end

        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0)
                tx_start[i] <= 1'b0;
            else
                tx_start[i] <= tx_start[i];
        end
    end
end
endgenerate

generate
for (i=0; i<=3; i=i+1) begin: TD_66B67B_HEADER_SEQUENCE
    if(TD_66B_16B[i]==1 || TD_67B_16B[i]==1) begin : TD_66B67B_16B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txq[i] <= 7'd0;
            end
            else begin
                txq[i] <= pattern_cnt_ff[i][7:1];
            end
        end
    end
    else if(TD_CAUI_32B[i]==1) begin : TD_CAUI_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txq[i] <= 7'd0;
            end
            else begin
                txq[i] <= pattern_cnt_ff[i][7:1];
            end
        end
    end
    else if(TD_CAUI_64B[i]==1) begin : TD_CAUI_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txq[i] <= 7'd0;
            end
            else begin
                txq[i] <= pattern_cnt_ff[i][6:0];
            end
        end
    end
    else if (TD_66B_32B[i]==1 || TD_66B_32B_2[i]==1 || TD_67B_32B[i]==1 || TD_67B_32B_2[i]==1) begin : TD_66B67B_32B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txq[i] <= 7'd0;
            end
            else begin
                txq[i] <= pattern_cnt_ff[i][6:0]    ;
            end
        end
    end
    else if (TD_66B_64B[i]==1 || TD_67B_64B[i]==1) begin : TD_66B67B_64B
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txq[i] <= 7'd0;
            end
            else begin
                txq[i] <= pattern_cnt_ff[i][6:0]    ;
            end
        end
    end
    else begin : TD_64B_DISABLE
        always @ (posedge src_clk[i] or negedge i_src_rstn) begin
            if(i_src_rstn==1'b0) begin
                txq[i] <= 7'd0;
            end
            else
                txq[i] <= 7'd0;
        end
    end
end
endgenerate

assign o_txd_0     = txd[0];
assign o_txk_0     = txk[0];
assign o_txq_0     = txq[0];
assign o_txh_0     = txh[0];
assign o_txh_h_0   = txh[0];
assign o_txd_1     = txd[1];
assign o_txk_1     = txk[1];
assign o_txq_1     = txq[1];
assign o_txh_1     = txh[1];
assign o_txh_h_1   = txh[1];
assign o_txd_2     = txd[2];
assign o_txk_2     = txk[2];
assign o_txq_2     = txq[2];
assign o_txh_2     = txh[2];
assign o_txh_h_2   = txh[2];
assign o_txd_3     = txd[3];
assign o_txk_3     = txk[3];
assign o_txq_3     = txq[3];
assign o_txh_3     = txh[3];
assign o_txh_h_3   = txh[3];
assign o_tx_st_0   = tx_start[0];
assign o_tx_st_1   = tx_start[1];
assign o_tx_st_2   = tx_start[2];
assign o_tx_st_3   = tx_start[3];
assign o_tx_st_h_0 = tx_start_h[0];
assign o_tx_st_h_1 = tx_start_h[1];
assign o_tx_st_h_2 = tx_start_h[2];
assign o_tx_st_h_3 = tx_start_h[3];
assign o_txd_vld_0 = txd_vld[0];
assign o_txd_vld_1 = txd_vld[1];
assign o_txd_vld_2 = txd_vld[2];
assign o_txd_vld_3 = txd_vld[3];
assign o_txd_vld_h_0 = txd_vld_h[0];
assign o_txd_vld_h_1 = txd_vld_h[1];
assign o_txd_vld_h_2 = txd_vld_h[2];
assign o_txd_vld_h_3 = txd_vld_h[3];

endmodule
