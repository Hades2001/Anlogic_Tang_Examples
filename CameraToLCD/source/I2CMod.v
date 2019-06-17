module I2CMod
#(
    parameter START_WAIT    = 5,
    parameter STOP_WAIT     = 5,
    parameter ACK_WAIT      = 16
)
(
    input   wire    CLK,
    input   wire    nRST,

    inout   wire    SDA,
    output  wire    SCL,

    output  reg             FIFO_CLK,
    output  reg             FIFO_RE,
    input   wire            FIFO_Empty,
    input   wire    [8:0]   FIFO_Data
);

    reg     SDA_MODE;
    reg     SDA_DATA;

    reg     [7:0]   CountWait;
    reg     [3:0]   CountSend;
    reg     [8:0]   SendData;
    reg     [3:0]   I2C_FSM;

    parameter   [3:0]   IDEL        = 4'b0000,
                        F_CLK_N     = 4'b0001,  
                        F_CLK_P     = 4'b0010,
                        SENDSTART   = 4'b0011,
                        SENDSTART_W = 4'b0100,
                        PREPAREDATA = 4'b0101,
                        READ_N      = 4'b0110,
                        READ_P      = 4'b0111,
                        SENDDATA_N  = 4'b1000,
                        SENDDATA_P  = 4'b1001,
                        SENDACK     = 4'b1010,
                        SENDACK_W   = 4'b1011,
                        SENDSTOP    = 4'b1100,
                        SENDSTOP_W  = 4'b1101;

    assign  SDA = SDA_MODE ? SDA_DATA : 1'bz;

    always @( posedge CLK or negedge nRST )
    begin
        if( !nRST )begin
            I2C_FSM     <=  IDEL;
            CountWait   <=  8'd0;
            CountSend   <=  4'd0;
            FIFO_CLK    <=  1'b0;
            FIFO_RE     <=  1'b0;
            SCL         <=  1'b1;
            SDA_DATA    <=  1'b1;
            SDA_MODE    <=  1'b1;
            end   
        else begin
            case (  I2C_FSM )
                IDEL: begin 
                    I2C_FSM     <=  F_CLK_P;
                    end
                F_CLK_P:begin
                    FIFO_CLK    <=  1'b1;
                    I2C_FSM     <=  F_CLK_N;
                    end
                F_CLK_N:begin
                    FIFO_CLK    <=  1'b0;
                    if(( FIFO_Empty == 1'b0 )&&( FIFO_RE == 1'b1))begin
                        I2C_FSM         <=  READ_P;
                        end
                    else if(( FIFO_Empty == 1'b0 )&&( FIFO_RE == 1'b0))begin
                        I2C_FSM         <=  SENDSTART;
                        FIFO_RE         <=  1'b1;
                        end
                    else if(( FIFO_Empty == 1'b1 )&&( FIFO_RE == 1'b0))begin
                        I2C_FSM         <=  SENDSTOP;
                        end
                    else if(( FIFO_Empty == 1'b1 )&&( FIFO_RE == 1'b1))begin
                        I2C_FSM         <=  READ_P;
                        FIFO_RE         <=  1'b0;
                    end
                SENDSTART:begin
                    CountWait   <= START_WAIT;
                    SDA_DATA    <= 1'b0;
                    I2C_FSM     <= SENDSTART_W;
                    end
                SENDSTART_W:begin
                    if( CountWait == 8'd0 ) begin
                        SCL         <=  1'b0;
                        I2C_FSM     <=  F_CLK_P;
                        end
                    else begin
                        CountWait   <=  CountWait - 1'b1;
                        end
                    end
                SENDSTOP : begin
                    SCL         <=  1'b1;
                    I2C_FSM     <=  SENDSTOP_W;
                    CountWait   <=  STOP_WAIT;
                    end
                SENDSTOP_W : begin
                    if( CountWait == 8'd0 ) begin
                        SCL         <=  1'b1;
                        I2C_FSM     <=  IDEL;
                        end
                    else begin
                        CountWait   <=  CountWait - 1'b1;
                        end
                    end
                READ_P  :begin
                    FIFO_CLK    <=  1'b1;
                    I2C_FSM     <=  READ_N;
                    end
                READ_N  :begin
                    FIFO_CLK    <=  1'b0;
                    I2C_FSM     <=  PREPAREDATA;
                    end
                PREPAREDATA : begin
                    SendData    <=  FIFO_Data;
                    CountSend   <=  4'd0;
                    I2C_FSM     <=  SENDDATA_N;
                    end
                SENDDATA_N    :begin
                    if( CountSend < 4'd8 )begin
                        SCL         <=  1'b0;
                        SDA_DATA        <= SendData[8]; 
                        SendData[8:1]   <=  SendData[7:0];
                        CountSend       <= CountSend + 1'b1;
                        I2C_FSM         <=  SENDDATA_P;
                        end
                    else begin
                        I2C_FSM         <=  SENDACK;
                        end
                    end
                SENDDATA_P    :begin
                    SCL         <=  1'b1;
                    I2C_FSM     <=  SENDDATA_N;
                    end
                SENDACK :begin
                    SCL         <=  1'b1;
                    SDA_MODE    <=  1'b0;
                    SDA_DATA    <=  1'b1;
                    CountWait   <=  ACK_WAIT;
                    end
                SENDACK_W:begin
                    if(( CountWait == 8'd0 )||( SDA_DATA == 1'b0 )) begin
                        SCL         <=  1'b0;
                        SDA_MODE    <=  1'b1;
                        SDA_DATA    <=  1'b0;
                        I2C_FSM     <=  F_CLK_N;
                        end
                    else begin
                        CountWait   <= CountWait - 1'b1;
                        end
                    end
                default: begin
                    I2C_FSM     <=  IDEL;
                    end
            endcase
        end   
    end



endmodule