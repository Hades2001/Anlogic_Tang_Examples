module LCDCTRL
(
    input                   CLK,
    input                   nRST,

    input                   HSYNC,
    input                   VSYNC,

    output                  FIFOWe,

    output          [7:0]   RGBData

);

    reg     [15:0]      AddrCtrl;

    always@( posedge CLK or negedge nRST )begin
    if( !nRST ) begin 
        AddrCtrl        <= 16'd0;
        end
    else if(    VSYNC   ) begin
        AddrCtrl        <= 16'd0;
        end
    else if(    HSYNC   ) begin
        AddrCtrl        <= 16'd0;
        end
    else begin
        AddrCtrl        <= AddrCtrl + 1'b1;
        end
    end

    assign FIFOWe = (( AddrCtrl >= 12'd0 )&&(AddrCtrl <= 16'd1600)&&( VSYNC == 1'b0 )&&( HSYNC == 1'b0 )) ? 1'b1 : 1'b0;

    assign RGBData = (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0000_0000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd0    )&&(AddrCtrl < 16'd400  )) ? 8'b0001_1111 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b0000_0111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd400  )&&(AddrCtrl < 16'd800  )) ? 8'b1110_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b1111_1000 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd800  )&&(AddrCtrl < 16'd1200 )) ? 8'b0000_0000 :
                     (( AddrCtrl[0] == 0 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 
                     (( AddrCtrl[0] == 1 )&&( AddrCtrl >= 16'd1200 )&&(AddrCtrl < 16'd1600 )) ? 8'b1111_1111 : 8'b0000_0000;

endmodule