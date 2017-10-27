//*************************************************
//** 2016 spring iVCAD                          
//** Author: Doris
//** Description: input memory
//** Mar. 2014 Tim revised	
//** Mar. 2015 Jimmy revised  
//** Mar. 2016 Yip revised   		
//*************************************************
`timescale 1ns/10ps
module input_memory (clk, rst, enable, ADDRInput, OutData);

input  clk,enable,rst;
input  [5:0]  ADDRInput;
output [31:0] OutData;
wire   [5:0]  ADDRInput;
reg    [31:0] OutData;
reg    [31:0] input_mem [63:0];	
integer i;

always@(posedge clk or posedge rst)begin

	if(rst)begin
		for(i=0;i<64;i=i+1)
		input_mem[i]<=0;
	end
	
	else if(enable==1)
		OutData<=input_mem[ADDRInput];
	else OutData<=32'dz;

end 
endmodule

