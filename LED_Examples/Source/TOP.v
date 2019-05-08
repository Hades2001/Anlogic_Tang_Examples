module TOP
(
    CLK_24M,
    nRST,

    LEDs,

    GPIO
);

    input           CLK_24M;
    input           nRST;

    output  [2:0]   LEDs;
    output          GPIO;

    wire            CLK_100M;  
    wire            CLK_50M;
    wire            CLK_200M;
    wire            CLK_33M;


    SysPll  Pll
    (
        .refclk     (   CLK_24M     ),
		.reset      (   ~nRST       ),
		.clk0_out   (   CLK_100M    ),
		.clk1_out   (   CLK_50M     ),
		.clk2_out   (   CLK_200M    ),
		.clk3_out   (   CLK_33M     )
    );

    LEDRGBCtrl  U1
    (
        .CLK    (   CLK_50M     ),
        .nRST   (   nRST        ),

        .LEDs   (   LEDs        )
    );
    

endmodule