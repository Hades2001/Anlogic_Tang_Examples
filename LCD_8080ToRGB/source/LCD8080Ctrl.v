module LCD8080Ctrl
(
    input                   CLK,
    input                   nRST,

    input                   HSYNC,
    input                   VSYNC,

    input                   J80_CLK,
    input                   J80_RS,
    input                   J80_We,
    input                   J80_Re,
    inout       [7:0]       J80_Data;

    output                  FIFOWe,

    output      [7:0]       RGBData

);
    reg         [4:0]       LCD_Ctrl_Reg;
    reg         [4:0]       LCD_Pix_Reg;       
    reg         [4:0]       LCD_Test_Reg;

    reg         [7:0]       OutDataReg;

    assign      J80_Data = ( J80_Re ) && ( !J80_We ) ? OutDataReg : 8'bzzzz_zzzz;

    always @( posedge CLK or negedge nRST ) begin
    if( !nRST ) begin

        end
    else begin

        end
    end

endmodule