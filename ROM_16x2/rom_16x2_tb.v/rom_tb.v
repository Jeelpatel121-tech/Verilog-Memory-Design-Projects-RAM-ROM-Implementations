`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2026 19:12:27
// Design Name: 
// Module Name: rom_tb
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


module rom_tb();
reg clk,en;
reg [3:0] addr;
wire [3:0] data;

rom r1(.clk(clk),.en(en),.addr(addr),.data(data));

initial
begin
    clk=1'b1;
    forever #5 clk=~clk;
end

initial
begin
    en=1'b0;
    #10;
    
    en=1'b1;
    addr=4'b1010;
    #10
    
    en=1'b1;
    addr=4'b0110;
    #10
    
    en=1'b1;
    addr=4'b001;
    #10
    
    en=1'b0;
    addr=4'b1111;
    #10
    
    en=1'b1;
    addr=4'b1000;
    #10
    
    en=1'b1;
    addr=4'b0000;
    #10
    
    en=1'b1;
    addr=4'bxxxx;
    #10
$finish;
end
endmodule
