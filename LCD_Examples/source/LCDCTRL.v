module LCDCTRL
(
    input                   CLK,
    input                   nRST,

    input                   HSYNC,
    input                   VSYNC,

    output          [7:0]   RGBData

);

    always@( posedge CLK or negedge nRST )begin
    if( !nRST ) begin 

        end

    end



endmodule