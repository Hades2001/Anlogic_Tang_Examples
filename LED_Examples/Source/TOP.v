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

    /*
    PWM
    #(
       .PWMWidth( 16 )
    )
    R_PWM
    (
        .CLK        (   CLK_24M ),
        .nRST       (   nRST    ),
        
        .OUT        (   LEDs[0]     ),
        .PWMUpData  (   16'd1000    ),
        .PWMConData (   16'd10     )

    );
        assign  LEDs[1] = 1'b1;
        assign  LEDs[2] = 1'b1;
    */



    LEDRGBCtrl  U1
    (
        .CLK    (   CLK_50M     ),
        .nRST   (   nRST        ),

        .LEDs   (   LEDs        )
    );
    

endmodule