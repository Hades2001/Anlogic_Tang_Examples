module UART_CTRL
(
    input   wire    CLK,
    input   wire    nRST,

    output                  FIFO_CLK,
    output                  FIFO_WE,
    input   wire            FIFO_FULL,
    output          [7:0]   FIFO_Data

);

    reg     [6:0]   Addr;

    always@( posedge CLK or negedge nRST )begin
        if( !nRST ) begin
            Addr    <=  7'd0;
            end
        else if( Addr >= 7'b100_0000 )begin
            Addr    <=  7'd0;
            end
        else if( FIFO_FULL == 1'b0 ) begin
            Addr    <= Addr + 1'b1;
            end
    end

    assign  FIFO_WE = ~ FIFO_FULL;
    assign  FIFO_CLK = CLK;

    ROMx8x64    ROM1
    ( 
        .doa         (  FIFO_Data   ), 
        .addra       (  Addr[5:0]   ), 
        .clka        (  CLK         ), 
        .rsta        (  ~nRST       ) 
    );


endmodule