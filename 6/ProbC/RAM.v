//*************************************************
//** 2016 spring iVCAD                          
//** Description: RAM
//** Mar. 2014 Tim revised	
//** Mar. 2015 Jimmy revised
//** Mar. 2016 Yip revised  
//*************************************************

`timescale 1ns/10ps
module RAM(	clk, rst, address, enable_read, 
			enable_write, DMin, DMout);

input 	clk,rst;
input 	[6:0]	address;
input 			enable_read;
input 			enable_write;
input	[63:0]	DMin;
output 	[63:0]	DMout;
reg		[63:0]  DMout;
reg		[63:0]	RAM_Data [63:0];
integer i;


always@(posedge clk or rst)begin
	if(rst) begin
    for(i=0 ; i<64 ; i=i+1 )
  		RAM_Data[i] <=64'd0; 
  end
	else if(enable_read == 1'b1)
		DMout <= RAM_Data[address];			
	else if (enable_write == 1'b1)
		RAM_Data[address] <= DMin;		
	else 
		DMout <= 64'bz;
end

endmodule


