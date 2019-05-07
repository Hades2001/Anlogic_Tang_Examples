module LEDRGBCtrl
(
    input   wire    CLK,
    input   wire    nRST,

    output  wire    [2:0]    LEDs
);

    reg [31:0]  Count_LED;
    
    always@( posedge CLK or negedge nRST ) begin
        if ( !nRST ) begin
            Count_LED     <=  32'd0;
        end
        else if ( Count_LED >= 32'd196608000 )begin
            Count_LED     <=  32'd0;
        end
        else begin
            Count_LED     <=  Count_LED + 1'b1;
        end
    end

    wire    [31:0]  PWM_RData;
    wire    [31:0]  PWM_GData;
    wire    [31:0]  PWM_BData;

    assign  PWM_RData[31:0]   = ( Count_LED <= 32'd65536000 ) ? Count_LED[31:0] : 
                                (( Count_LED > 32'd65536000)&&( Count_LED <= 32'd131072000 )) ? ( 32'd131072000 - Count_LED[31:0] ) : 32'b0;

    assign  PWM_GData[31:0]   = (( Count_LED >= 32'd65536000 )&&( Count_LED <= 32'd131072000 )) ? ( Count_LED[31:0] - 32'd65536000 ) : 
                                ( Count_LED > 32'd131072000 ) ? ( 32'd196608000 - Count_LED[31:0] ) : 32'b0;

    assign  PWM_BData[31:0]   = ( Count_LED <= 32'd65536000 ) ? ( 32'd65536000 - Count_LED[31:0] ) : 
                                ( Count_LED > 32'd131072000 ) ? ( Count_LED[31:0] - 32'd131072000 ) : 32'b0;

    PWM
    #(
       .PWMWidth( 16 )
    )
    R_PWM
    (
        .CLK        (   CLK         ),
        .nRST       (   nRST        ),
        
        .OUT        (   LEDs[0]     ),
        .PWMUpData  (   16'd1000    ),
        .PWMConData (   PWM_RData[31:16]   )

    );

    PWM
    #(
       .PWMWidth( 16 )
    )
    G_PWM
    (
        .CLK        (   CLK         ),
        .nRST       (   nRST        ),
        
        .OUT        (   LEDs[1]     ),
        .PWMUpData  (   16'd1000    ),
        .PWMConData (   PWM_GData[31:16]   )

    );

    PWM
    #(
       .PWMWidth( 16 )
    )
    B_PWM
    (
        .CLK        (   CLK         ),
        .nRST       (   nRST        ),
        
        .OUT        (   LEDs[2]     ),
        .PWMUpData  (   16'd1000    ),
        .PWMConData (   PWM_BData[31:16]   )

    );

endmodule