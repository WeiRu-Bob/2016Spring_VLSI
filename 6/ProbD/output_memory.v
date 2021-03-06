//*************************************************
//** 2016 spring iVCAD                          
//** Author: Doris
//** Description: output memory
//** Mar. 2014 Tim revised	
//** Mar. 2015 Jimmy revised   	
//** Mar. 2016 Yip revised  	
//*************************************************
`timescale 1ns/10ps
module output_memory (clk, rst, enable, Addr, writeData);

input 		  clk;
input 		  rst;
input 		  enable;
input  [5:0]  Addr;
input  [31:0] writeData;
reg    [31:0] output_mem [63:0];	
integer i;

always@(posedge clk or posedge rst)begin

	if(rst)begin
		for(i=0;i<64;i=i+1)
		output_mem[i]<=32'd0;
	end
	
	else if(enable && Addr<64)
		output_mem[Addr]<=writeData;
	else ;

end 
endmodule

