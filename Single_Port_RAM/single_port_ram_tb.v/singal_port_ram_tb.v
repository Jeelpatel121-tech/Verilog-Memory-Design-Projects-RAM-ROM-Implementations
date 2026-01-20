`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2026 10:27:28
// Design Name: 
// Module Name: singal_port_ram_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module singal_port_ram_tb();
reg [7:0]data;
reg [5:0]addr;
reg we,clk;
wire [7:0]q;

single_port_ram spr1(.data(data),.addr(addr),.we(we),.clk(clk),.q(q));

initial
begin
    clk=1'b1;
    forever #5 clk=~clk;
end

initial
begin
    data=8'h01;
    addr=5'd0;
    we=1'b1;
    #10;
    
    data=8'h02;
    addr=5'd1;
    #10;
    
    data=8'h03;
    addr=5'd2;
    #10;
    
    addr=5'd0;
    we=1'b0;
    #10;
    
    addr=5'd1;
    #10;
    
    addr=5'd2;
    #10;
    
    data=8'h04;
    addr=5'd1;
    we=1'b1;
    #10;
    
    addr=5'd1;
    we=1'b0;
    #10
$finish;
end
endmodule
