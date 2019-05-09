module VGAMod
(
    input                   CLK,
    input                   nRST,

    input                   PixelClk,

    output                  LCD_DE,
    output                  LCD_HSYNC,
    output                  LCD_VSYNC,

	output          [7:0]   VGA_B,
	output          [7:0]   VGA_G,
	output          [7:0]   VGA_R,

    output                  FIFO_CLK,
    output                  FIFO_RE,
    input   wire            FIFO_Empty,
    input   wire    [15:0]  FIFO_Data

);

    reg         [15:0]  PixelCount;
    reg         [15:0]  LineCount;

    localparam      WidthPixel  = 16'd800;
    localparam      HightPixel  = 16'd480;

    localparam      H_BackPorch  =  16'd256;
    localparam      V_BackPorch  =  16'd45;

    localparam      PixelForHS  =   16'd1056 + H_BackPorch;
    localparam      LineForVS   =   16'd525  + V_BackPorch;

    localparam      FIFOReStart =   H_BackPorch - 1'b1;
    localparam      FIFOReEnd   =   16'd1056    + 1'b1;

    always @(  posedge PixelClk or negedge nRST  )begin
        if( !nRST ) begin
            LineCount       <=  16'b0;    
            PixelCount      <=  16'b0;
            end
        else if(  PixelCount  ==  PixelForHS ) begin
            PixelCount      <=  16'b0;
            LineCount       <=  LineCount + 1'b1;
            end
        else if(  LineCount  == LineForVS  ) begin
            LineCount       <=  16'b0;
            PixelCount      <=  16'b0;
            end
        else begin
            PixelCount      <=  PixelCount + 1'b1;
            end
    end

    assign  LCD_HSYNC = (( PixelCount >= ( H_BackPorch + 4 ))&&( PixelCount < (PixelForHS - 5))) ? 1'b0 : 1'b1;
    assign  LCD_VSYNC = (( LineCount  >= ( V_BackPorch + 2 ))&&( LineCount  < (LineForVS  - 5))) ? 1'b0 : 1'b1;

    assign  LCD_DE = (  ( PixelCount >= H_BackPorch )&&
                        ( PixelCount <= PixelForHS ) &&
                        ( LineCount >= V_BackPorch ) &&
                        ( LineCount < LineForVS ))  ? 1'b1 : 1'b0;

    assign  FIFO_CLK = PixelClk;
    assign  FIFO_RE  = (( PixelCount >= FIFOReStart )&&( PixelCount <= FIFOReEnd )&&( FIFO_Empty == 1'b0 )) ? 1'b1 : 1'b0;

    assign  VGA_R    = ( FIFO_Empty == 1'b0 ) ? {FIFO_Data[15:11], 3'b111 } : 8'b1111_1111;
    assign  VGA_G    = ( FIFO_Empty == 1'b0 ) ? {FIFO_Data[10:5] , 2'b11  } : 8'b0000_0000;
    assign  VGA_B    = ( FIFO_Empty == 1'b0 ) ? {FIFO_Data[4:0]  , 3'b111 } : 8'b0000_0000;

    
/*
    always @(  posedge PixelClk or negedge nRST  )begin
        if( !nRST ) begin
            VGA_R       <=  8'b0;
            VGA_G       <=  8'b0;
            VGA_B       <=  8'b0;
            end
        else if( LCD_DE == 1'b1 )begin
            case( PixelCount )
            1'b0            : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'h00;
                end
            16'd256          : begin
                VGA_R       <=  8'hff;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'h00;
                end
            16'd356         : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'hff;
                VGA_B       <=  8'h00;
                end
            16'd456         : begin
                VGA_R       <=  8'hff;
                VGA_G       <=  8'hff;
                VGA_B       <=  8'h00;
                end
            16'd556         : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'hff;
                end
            16'd656         : begin
                VGA_R       <=  8'hff;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'hff;
                end
            16'd756         : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'hff;
                VGA_B       <=  8'hff;
                end
            16'd856         : begin
                VGA_R       <=  8'hff;
                VGA_G       <=  8'hff;
                VGA_B       <=  8'hff;
                end
            16'd956         : begin
                VGA_R       <=  8'h00;
                VGA_G       <=  8'h00;
                VGA_B       <=  8'h00;
                end
            endcase
            end
    end
*/

endmodule