//*************************************************
//** 2016 spring iVCAD                          
//** Author: Doris
//** Description: Register file
//** Mar. 2014 Tim revised	
//** Mar. 2015 Jimmy revised	
//** Mar. 2016 Yip revised  	
//*************************************************
`timescale 1ns/10ps
module operation( 
	//- input
	clk,
	rst,
	enable,															
	RegInput0,
	RegInput1,
	RegInput2,
	RegInput3,
	RegInput4,
	RegInput5,
	RegInput6,
	RegInput7,
	outResult
	);

input clk,rst,enable;

input [31:0] RegInput0, RegInput1, 
			 RegInput2, RegInput3,
			 RegInput4, RegInput5, 
			 RegInput6, RegInput7;
output[31:0] outResult;
reg [31:0] outResult;

always@( posedge clk )begin

	if(enable)begin
			//RegInput0 
			if(RegInput0>RegInput1 && RegInput0>RegInput2 && RegInput0>RegInput3
				&& RegInput0>RegInput4 && RegInput0>RegInput5 && RegInput0>RegInput6
				&& RegInput0>RegInput7)
				begin
					outResult=RegInput0;
				end
			//RegInput1 	
			else if(RegInput1>RegInput0 && RegInput1>RegInput2 && RegInput1>RegInput3
				&& RegInput1>RegInput4 && RegInput1>RegInput5 && RegInput1>RegInput6
				&& RegInput1>RegInput7)
				begin
					outResult=RegInput1;
				end
			//RegInput2 	
			else if(RegInput2>RegInput0 && RegInput2>RegInput1 && RegInput2>RegInput3
				&& RegInput2>RegInput4 && RegInput2>RegInput5 && RegInput2>RegInput6
				&& RegInput2>RegInput7)
				begin
					outResult=RegInput2;
				end			
			//RegInput3 	
			else if(RegInput3>RegInput0 && RegInput3>RegInput2 && RegInput3>RegInput1
				&& RegInput3>RegInput4 && RegInput3>RegInput5 && RegInput3>RegInput6
				&& RegInput3>RegInput7)
				begin
					outResult=RegInput3;
				end			
			//RegInput4 	
			else if(RegInput4>RegInput0 && RegInput4>RegInput2 && RegInput4>RegInput3
				&& RegInput4>RegInput1 && RegInput4>RegInput5 && RegInput4>RegInput6
				&& RegInput4>RegInput7)
				begin
					outResult=RegInput4;
				end
			//RegInput5 	
			else if(RegInput5>RegInput0 && RegInput5>RegInput2 && RegInput5>RegInput3
				&& RegInput5>RegInput4 && RegInput5>RegInput1 && RegInput5>RegInput6
				&& RegInput5>RegInput7)
				begin
					outResult=RegInput5;
				end			
			//RegInput6 	
			else if(RegInput6>RegInput0 && RegInput6>RegInput2 && RegInput6>RegInput3
				&& RegInput6>RegInput4 && RegInput6>RegInput5 && RegInput6>RegInput1
				&& RegInput6>RegInput7)
				begin
					outResult=RegInput6;
				end			
			//RegInput7	
			else if(RegInput7>RegInput0 && RegInput7>RegInput2 && RegInput7>RegInput3
				&& RegInput7>RegInput4 && RegInput7>RegInput5 && RegInput7>RegInput6
				&& RegInput7>RegInput1)
				begin
					outResult=RegInput7;
				end

		end


end
endmodule











































































