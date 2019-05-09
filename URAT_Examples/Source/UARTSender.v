module UARTSender
(
    input   wire    UART_CLK,
    input   wire    nRST,

    input   wire    [9:0]   Data,

    output  reg             FIFO_CLK,
    output  reg             FIFO_RE,
    input   wire            FIFO_Empty,
    input   wire    [7:0]   FIFO_Data,

    output  wire    UART_TX
    );

    reg         [7:0]   Count;
    reg                 UART_TX_reg;
    reg         [7:0]   SendBuff;

    assign      UART_TX = UART_TX_reg;


    parameter   [3:0]   IDEL        = 4'b0001,
                        F_CLK_N     = 4'b0010,  
                        F_CLK_P     = 4'b0011,
                        START       = 4'b0100,
                        SEND        = 4'b0101,
                        STOP        = 4'b0110,
                        SENDIDE     = 4'b0111,
                        READ_N      = 4'b1000,
                        READ_P      = 4'b1001;

    reg         [3:0]   UART_FSM;
    
    always@( posedge UART_CLK or negedge nRST ) begin
        if( !nRST ) begin
            Count       <=  8'd0;
            UART_TX_reg <=  1'b1;
            UART_FSM    <=  IDEL;
            FIFO_CLK    <=  1'b0;
            FIFO_RE     <=  1'b0;
        end
        else begin
            case ( UART_FSM )
                IDEL:   begin
                    UART_TX_reg     <=  1'b1;
                    UART_FSM        <=  F_CLK_P;
                    end
                F_CLK_P:    begin
                    FIFO_CLK    <=  1'b1;
                    UART_FSM        <=  F_CLK_N;
                    end
                F_CLK_N:    begin
                    FIFO_CLK    <=  1'b0;
                    if(( FIFO_Empty == 1'b0 )&&( FIFO_RE == 1'b1))begin
                        UART_FSM        <=  READ_P;
                        end
                    else if(( FIFO_Empty == 1'b0 )&&( FIFO_RE == 1'b0))begin
                        UART_FSM        <=  F_CLK_P;
                        FIFO_RE         <=  1'b1;
                        end
                    else if(( FIFO_Empty == 1'b1 )&&( FIFO_RE == 1'b0))begin
                        UART_FSM        <=  IDEL;
                        end
                    else if(( FIFO_Empty == 1'b1 )&&( FIFO_RE == 1'b1))begin
                        UART_FSM        <=  READ_P;
                        FIFO_RE         <=  1'b0;
                        end
                    end
                READ_P:     begin
                    FIFO_CLK    <=  1'b1;
                    UART_FSM        <=  READ_N;
                    end
                READ_N:     begin
                    FIFO_CLK    <=  1'b0;
                    UART_FSM        <=  START;
                    end
                START:  begin
                    UART_TX_reg     <=  1'b0;
                    Count           <=  8'd0;
                    SendBuff[7:0]   <=  FIFO_Data[7:0];
                    UART_FSM        <=  SEND;
                    end  
                SEND:   begin
                    if( Count < 8'd7 ) begin
                        UART_TX_reg     <=  SendBuff[0];
                        SendBuff[6:0]   <=  SendBuff[7:1];
                        Count           <=  Count + 1'b1;
                        end
                    else begin
                        UART_FSM        <=  STOP;
                        end
                    end
                STOP:   begin
                    UART_TX_reg     <=  1'b1;
                    UART_FSM        <=  SENDIDE;
                    end
                SENDIDE:begin
                    UART_TX_reg     <=  1'b1;
                    UART_FSM        <=  F_CLK_N;
                    end    
                default:begin
                    UART_FSM    <=  IDEL;
                    Count       <=  8'd0;
                    UART_TX_reg <=  1'b1;
                    end 
            endcase
        end
    end


endmodule