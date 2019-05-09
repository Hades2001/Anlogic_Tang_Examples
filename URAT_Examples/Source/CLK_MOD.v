module CLK_MOD
(
	CLK,
	nRST,
	
	CLK_OUT,
	
	Count_REG
);

	input 	CLK;
	input 	nRST;
	
	input  	[31:0] Count_REG;
	reg 	[31:0] Count;
	
	output reg CLK_OUT;

	always @(  posedge CLK or negedge nRST  )
	begin
		if(  !nRST  )
		begin
		Count		<= 32'd0;
		CLK_OUT		<= 1'b1;
		end
		else if ( Count == Count_REG )
		begin
			CLK_OUT <= ~CLK_OUT;
			Count 	<= 32'd0;
		end
		else
		Count <= Count + 1'b1;
	end

endmodule
