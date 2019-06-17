module TOP
(
	input 	wire	clk,
	input 	wire	nRST,

	output	wire	[2:0]LED,
	inout 	wire	GPIO,

	input 	wire 	CSI_PCLK,	//CSI时
	output 	wire 	CSI_XCLK,	//CSI系统时
	input 	wire 	CSI_HREF,	//同
	input 	wire 	CSI_VSYNC,	//帧同
	output 	wire 	CSI_PWDN,	//模式
	output 	wire 	CSI_RST,	//位
	output 	wire 	CSI_SOIC,	//SCCB,时
	inout 	wire 	CSI_SOID,	//SCCB,
	input 	wire 	[7:0]CSI_D,	//

	output	wire	LCDBK,
	output	wire	LCD_CLK,
	output	wire	LCD_HYNC,
	output	wire	LCD_SYNC,
	output	wire	LCD_DEN,
	output	wire	LCD_R,
	output	wire	LCD_G,
	output	wire	LCD_B

	
);
	assign		LCDBK 	= 	1'b1;
	assign		LED[0] 	=	1'b1;

	wire 		PixeClk;	
	wire		CLK_33M;	
	wire		CLK_100M;
	wire		CLK_50M;

	LCDPLL	PLL1
	(	
		.refclk		(	clk			),
		.reset		(	1'b0		),
		.clk0_out	(	CLK_33M		),
		.clk1_out	(	CLK_100M	),
		.clk2_out	(	CLK_50M		)
	);

	assign	PixeClk = CLK_33M;

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