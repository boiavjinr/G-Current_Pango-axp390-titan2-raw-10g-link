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

module ipm2t_hssthp_apb_bridge_v1_0(
    //--------Fabric Port--------//
    input  wire                  p_cfg_clk                                       ,//input               
    input  wire                  p_cfg_rst                                       ,//input               
    input  wire                  p_cfg_psel                                      ,//input               
    input  wire                  p_cfg_enable                                    ,//input               
    input  wire                  p_cfg_write                                     ,//input               
    input  wire [15:0]           p_cfg_addr                                      ,//input [15:0]        
    input  wire [7:0]            p_cfg_wdata                                     ,//input [7:0]     
    output reg                   p_cfg_ready                                     ,//output              
    output reg  [7:0]            p_cfg_rdata                                     ,//output [7:0]        
    output reg                   p_cfg_int                                       ,//output     
    //--------PLL0 Port--------//
    input  wire                  P_CFG_READY_HPLL                                ,//input      
    input  wire [7:0]            P_CFG_RDATA_HPLL                                ,//input [7:0]
    input  wire                  P_CFG_INT_HPLL                                  ,//input   
    output wire                  P_CFG_RST_HPLL                                  ,//output       
    output wire                  P_CFG_CLK_HPLL                                  ,//output       
    output reg                   P_CFG_PSEL_HPLL                                 ,//output       
    output reg                   P_CFG_ENABLE_HPLL                               ,//output       
    output reg                   P_CFG_WRITE_HPLL                                ,//output       
    output wire [11:0]           P_CFG_ADDR_HPLL                                 ,//output [11:0]
    output wire [7:0]            P_CFG_WDATA_HPLL                                ,//output [7:0] 
    //--------CHANNEL0 Port--------//
    input  wire                  P_CFG_READY_0                                   ,//input                    
    input  wire [7:0]            P_CFG_RDATA_0                                   ,//input [7:0]              
    input  wire                  P_CFG_INT_0                                     ,//input               
    output wire                  P_CFG_CLK_0                                     ,//output                   
    output wire                  P_CFG_RST_0                                     ,//output                   
    output reg                   P_CFG_PSEL_0                                    ,//output                   
    output reg                   P_CFG_ENABLE_0                                  ,//output                   
    output reg                   P_CFG_WRITE_0                                   ,//output                   
    output wire [11:0]           P_CFG_ADDR_0                                    ,//output [11:0]            
    output wire [7:0]            P_CFG_WDATA_0                                   ,//output [7:0]         
    //--------CHANNEL1 Port--------//
    input  wire                  P_CFG_READY_1                                   ,//input                    
    input  wire [7:0]            P_CFG_RDATA_1                                   ,//input [7:0]              
    input  wire                  P_CFG_INT_1                                     ,//input               
    output wire                  P_CFG_CLK_1                                     ,//output                   
    output wire                  P_CFG_RST_1                                     ,//output                   
    output reg                   P_CFG_PSEL_1                                    ,//output                   
    output reg                   P_CFG_ENABLE_1                                  ,//output                   
    output reg                   P_CFG_WRITE_1                                   ,//output                   
    output wire [11:0]           P_CFG_ADDR_1                                    ,//output [11:0]            
    output wire [7:0]            P_CFG_WDATA_1                                   ,//output [7:0]         
    //--------CHANNEL2 Port--------//
    input  wire                  P_CFG_READY_2                                   ,//input                    
    input  wire [7:0]            P_CFG_RDATA_2                                   ,//input [7:0]              
    input  wire                  P_CFG_INT_2                                     ,//input               
    output wire                  P_CFG_CLK_2                                     ,//output                   
    output wire                  P_CFG_RST_2                                     ,//output                   
    output reg                   P_CFG_PSEL_2                                    ,//output                   
    output reg                   P_CFG_ENABLE_2                                  ,//output                   
    output reg                   P_CFG_WRITE_2                                   ,//output                   
    output wire [11:0]           P_CFG_ADDR_2                                    ,//output [11:0]            
    output wire [7:0]            P_CFG_WDATA_2                                   ,//output [7:0]         
    //--------CHANNEL3 Port--------//
    input  wire                  P_CFG_READY_3                                   ,//input                    
    input  wire [7:0]            P_CFG_RDATA_3                                   ,//input [7:0]              
    input  wire                  P_CFG_INT_3                                     ,//input               
    output wire                  P_CFG_CLK_3                                     ,//output                   
    output wire                  P_CFG_RST_3                                     ,//output                   
    output reg                   P_CFG_PSEL_3                                    ,//output                   
    output reg                   P_CFG_ENABLE_3                                  ,//output                   
    output reg                   P_CFG_WRITE_3                                   ,//output                   
    output wire [11:0]           P_CFG_ADDR_3                                    ,//output [11:0]            
    output wire [7:0]            P_CFG_WDATA_3                                    //output [7:0]         
);

//---------------------------MAIN LOGIC---------------------------//

//cfg clock & reset
assign P_CFG_CLK_HPLL  =  p_cfg_clk;
assign P_CFG_CLK_0     =  p_cfg_clk;
assign P_CFG_CLK_1     =  p_cfg_clk;
assign P_CFG_CLK_2     =  p_cfg_clk;
assign P_CFG_CLK_3     =  p_cfg_clk;

assign P_CFG_RST_HPLL  =  p_cfg_rst;
assign P_CFG_RST_0     =  p_cfg_rst;
assign P_CFG_RST_1     =  p_cfg_rst;
assign P_CFG_RST_2     =  p_cfg_rst;
assign P_CFG_RST_3     =  p_cfg_rst;

assign P_CFG_ADDR_HPLL       = p_cfg_addr[11:0];//output [11:0]
assign P_CFG_WDATA_HPLL      = p_cfg_wdata;//output [7:0] 
assign P_CFG_ADDR_0          = p_cfg_addr[11:0];//output [11:0]
assign P_CFG_WDATA_0         = p_cfg_wdata;//output [7:0] 
assign P_CFG_ADDR_1          = p_cfg_addr[11:0];//output [11:0]
assign P_CFG_WDATA_1         = p_cfg_wdata;//output [7:0] 
assign P_CFG_ADDR_2          = p_cfg_addr[11:0];//output [11:0]
assign P_CFG_WDATA_2         = p_cfg_wdata;//output [7:0] 
assign P_CFG_ADDR_3          = p_cfg_addr[11:0];//output [11:0]
assign P_CFG_WDATA_3         = p_cfg_wdata;//output [7:0] 

always @(*) begin
    P_CFG_PSEL_HPLL         = 1'b0;//output       
    P_CFG_ENABLE_HPLL       = 1'b0;//output       
    P_CFG_WRITE_HPLL        = 1'b0;//output       
    P_CFG_PSEL_0            = 1'b0;//output                   
    P_CFG_ENABLE_0          = 1'b0;//output                   
    P_CFG_WRITE_0           = 1'b0;//output                   
    P_CFG_PSEL_1            = 1'b0;//output                   
    P_CFG_ENABLE_1          = 1'b0;//output                   
    P_CFG_WRITE_1           = 1'b0;//output                   
    P_CFG_PSEL_2            = 1'b0;//output                   
    P_CFG_ENABLE_2          = 1'b0;//output                   
    P_CFG_WRITE_2           = 1'b0;//output                   
    P_CFG_PSEL_3            = 1'b0;//output                   
    P_CFG_ENABLE_3          = 1'b0;//output                   
    P_CFG_WRITE_3           = 1'b0;//output                   
    p_cfg_ready             = 1'b0;//output              
    p_cfg_rdata             = 8'b0;//output [7:0]        
    p_cfg_int               = 1'b0;//output     
    case(p_cfg_addr[15:12])
        4'b0000 :   begin
            P_CFG_PSEL_0            = p_cfg_psel    ;//output                   
            P_CFG_ENABLE_0          = p_cfg_enable  ;//output                   
            P_CFG_WRITE_0           = p_cfg_write   ;//output                   
            p_cfg_ready             = P_CFG_READY_0 ;//output              
            p_cfg_rdata             = P_CFG_RDATA_0 ;//output [7:0]        
        end
        4'b0001 :   begin
            P_CFG_PSEL_1            = p_cfg_psel    ;//output                   
            P_CFG_ENABLE_1          = p_cfg_enable  ;//output                   
            P_CFG_WRITE_1           = p_cfg_write   ;//output                   
            p_cfg_ready             = P_CFG_READY_1 ;//output              
            p_cfg_rdata             = P_CFG_RDATA_1 ;//output [7:0]        
        end
        4'b0010 :   begin
            P_CFG_PSEL_2            = p_cfg_psel    ;//output                   
            P_CFG_ENABLE_2          = p_cfg_enable  ;//output                   
            P_CFG_WRITE_2           = p_cfg_write   ;//output                   
            p_cfg_ready             = P_CFG_READY_2 ;//output              
            p_cfg_rdata             = P_CFG_RDATA_2 ;//output [7:0]        
        end
        4'b0011 :   begin
            P_CFG_PSEL_3            = p_cfg_psel    ;//output                   
            P_CFG_ENABLE_3          = p_cfg_enable  ;//output                   
            P_CFG_WRITE_3           = p_cfg_write   ;//output                   
            p_cfg_ready             = P_CFG_READY_3 ;//output              
            p_cfg_rdata             = P_CFG_RDATA_3 ;//output [7:0]        
        end
        4'b0100 :   begin
            P_CFG_PSEL_HPLL         = p_cfg_psel    ;//output       
            P_CFG_ENABLE_HPLL       = p_cfg_enable  ;//output       
            P_CFG_WRITE_HPLL        = p_cfg_write   ;//output       
            p_cfg_ready             = P_CFG_READY_HPLL;//output              
            p_cfg_rdata             = P_CFG_RDATA_HPLL;//output [7:0]        
        end
        default :   begin
            P_CFG_PSEL_HPLL         = 1'b0;//output       
            P_CFG_ENABLE_HPLL       = 1'b0;//output       
            P_CFG_WRITE_HPLL        = 1'b0;//output       
            P_CFG_PSEL_0            = 1'b0;//output                   
            P_CFG_ENABLE_0          = 1'b0;//output                   
            P_CFG_WRITE_0           = 1'b0;//output                   
            P_CFG_PSEL_1            = 1'b0;//output                   
            P_CFG_ENABLE_1          = 1'b0;//output                   
            P_CFG_WRITE_1           = 1'b0;//output                   
            P_CFG_PSEL_2            = 1'b0;//output                   
            P_CFG_ENABLE_2          = 1'b0;//output                   
            P_CFG_WRITE_2           = 1'b0;//output                   
            P_CFG_PSEL_3            = 1'b0;//output                   
            P_CFG_ENABLE_3          = 1'b0;//output                   
            P_CFG_WRITE_3           = 1'b0;//output                   
            p_cfg_ready             = 1'b0;//output              
            p_cfg_rdata             = 8'b0;//output [7:0]        
            p_cfg_int               = 1'b0;//output     
        end
    endcase
end

endmodule
