module TOP
(
	clk,
	nRST,

	LED,
	GPIO,

	LCDBK,
	LCD_CLK,
	LCD_HYNC,
	LCD_SYNC,
	LCD_DEN,
	LCD_R,
	LCD_G,
	LCD_B

	
);

	input			clk;
	input			nRST;
	
	output	[2:0]	LED;

	output			GPIO;
	output			LCDBK;
	output			LCD_CLK;
	output			LCD_HYNC;
	output			LCD_SYNC;
	output			LCD_DEN;
	output	[7:0]	LCD_R;
	output	[7:0]	LCD_G;
	output	[7:0]	LCD_B;

	assign		LCDBK 	= 	1'b1;
	assign		LED[0] 	=	1'b1;

	wire 		PixeClk;		
	wire		CLK_100M;
	wire		CLK_50M;
	LCDPLL	PLL1
	(	
		.refclk		(	clk			),
		.reset		(	1'b0		),
		.clk0_out	(	PixeClk		),
		.clk1_out	(	CLK_100M	),
		.clk2_out	(	CLK_50M		)
	);

	wire	FIFO_RST;
    wire    FIFO_CLK_R;
    wire    FIFO_CLK_W;
    wire    FIFO_RE;
    wire    FIFO_WE;
    wire    FIFO_EMPTY;
    wire    FIFO_FULL;
    wire    [15:0]  FIFO_DO;
    wire    [7:0]  	FIFO_DI;
	
	DisFIFO 	FIFO0
	(
		.rst		(	FIFO_RST	),
		.di			(	FIFO_DI		), 
		.clkw		(	FIFO_CLK_W	), 
		.we			(	FIFO_WE		),
		.do			(	FIFO_DO		), 
		.clkr		(	FIFO_CLK_R	), 
		.re			(	FIFO_RE		),
		.empty_flag	(	FIFO_EMPTY	),
		.full_flag	(	FIFO_FULL	) 
	);
	
	LCDCTRL U4
	(
		.CLK		(	CLK_100M	),
		.nRST		(	nRST		),

		.HSYNC		(	LCD_HYNC	),
		.VSYNC		(	LCD_SYNC	),

		.FIFOWe		(	FIFO_WE		),

		.RGBData	(	FIFO_DI		)

	);
	
	assign	FIFO_CLK_W 	= CLK_100M;

	VGAMod	D1
	(
		.CLK		(	clk			),
		.nRST		(	nRST		),

		.PixelClk	(	PixeClk		),

		.LCD_DE		(	LCD_DEN	 	),
		.LCD_HSYNC	(	LCD_HYNC 	),
    	.LCD_VSYNC	(	LCD_SYNC 	),

		.LCD_B		(	LCD_B		),
		.LCD_G		(	LCD_G		),
		.LCD_R		(	LCD_R		),

		.FIFO_RST	(	FIFO_RST	),
		.FIFO_CLK	(	FIFO_CLK_R	),
		.FIFO_RE	(	FIFO_RE		),
		.FIFO_Empty	(	FIFO_EMPTY	),
		.FIFO_Data	(	FIFO_DO		)

	);

	assign		LCD_CLK		=	PixeClk;
	assign		GPIO		=	LCD_DEN;

	CLK_MOD	U1
	(
		.CLK		(	PixeClk	),
		.RSTn		(	nRST	),
		
		.CLK_OUT	(	LED[1]	),
		
		.Count_REG	(	32'd33000000 )
	);

	CLK_MOD	U2
	(
		.CLK		(	clk		),
		.RSTn		(	nRST	),
		
		.CLK_OUT	(	LED[2]	),

		.Count_REG	(	32'd24000000)	
	);

endmodule