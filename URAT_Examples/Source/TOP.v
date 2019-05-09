module TOP
(
    CLK_24M,
    nRST,

    LEDs,

    UART_TX,
    GPIO
);

    input           CLK_24M;
    input           nRST;

    output  [2:0]   LEDs;
    output          UART_TX;
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

    wire    UART_CLK;

    CLK_MOD     C1
    (
        .CLK    (   CLK_50M     ),
        .nRST   (   nRST        ),
        
        .CLK_OUT(   UART_CLK    ),
        
        .Count_REG( 32'd217     )
    );

    wire    FIFO_CLK_R;
    wire    FIFO_CLK_W;
    wire    FIFO_RE;
    wire    FIFO_WE;
    wire    FIFO_EMPTY;
    wire    FIFO_FULL;
    wire    [7:0]   FIFO_DO;
    wire    [7:0]   FIFO_DI;

    UARTFIFO FIFO0(
        .rst        (   ~nRST       ),
        .di         (   FIFO_DI     ), 
        .clkw       (   FIFO_CLK_W  ), 
        .we         (   FIFO_WE     ),
        .do         (   FIFO_DO     ), 
        .clkr       (   FIFO_CLK_R  ), 
        .re         (   FIFO_RE     ),
        .empty_flag (   FIFO_EMPTY  ),
        .full_flag  (   FIFO_FULL   ) 
    );

    UART_CTRL   U3
    (
        .CLK        (   CLK_50M     ),
        .nRST       (   nRST        ),

        .FIFO_CLK   (   FIFO_CLK_W  ),
        .FIFO_WE    (   FIFO_WE     ),
        .FIFO_FULL  (   FIFO_FULL   ),
        .FIFO_Data  (   FIFO_DI     )
    );

    UARTSender  U2
    (
        .UART_CLK   (   UART_CLK    ),
        .nRST       (   nRST        ),
        .Data       (   8'h75       ),

        .FIFO_CLK   (   FIFO_CLK_R  ),
        .FIFO_RE    (   FIFO_RE     ),
        .FIFO_Empty (   FIFO_EMPTY  ),
        .FIFO_Data  (   FIFO_DO     ),

        .UART_TX    (   UART_TX     )
    );
    

endmodule