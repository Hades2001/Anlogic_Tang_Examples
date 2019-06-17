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
    inout       [7:0]       J80_Data,

    output                  FIFOWe,

    output      [7:0]       RGBData

);

//******************************************************
//
//
//
//
//
//******************************************************

    parameter   [2:0]   A_Res       = 3'b000,
                        A_CTRL      = 3'b001,
                        A_Pix       = 3'b010,  
                        A_BL        = 3'b011,
                        A_Test      = 3'b100;

    reg         [4:0]       LCD_Ctrl_Reg;
    reg         [4:0]       LCD_Pix_Reg;     
    reg         [4:0]       LCD_BL_Reg;  
    reg         [4:0]       LCD_Test_Reg;

    reg         [7:0]       OutDataReg;

    assign      J80_Data = ( J80_Re ) && ( !J80_We ) ? OutDataReg : 8'bzzzz_zzzz;

    always @( posedge CLK or negedge nRST ) begin
    if( !nRST ) begin

        end
    else if(( J80_RS == 1'b1 )&&( J80_We == 1'b1 ))begin
        case( J80_Data[7:5] )
            A_Res   :   OutDataReg  <=  { J80_Data[7:5], 5'b00000       };
            A_CTRL  :   OutDataReg  <=  { J80_Data[7:5], LCD_Ctrl_Reg   };
            A_Pix   :   OutDataReg  <=  { J80_Data[7:5], LCD_Pix_Reg    };
            A_BL    :   OutDataReg  <=  { J80_Data[7:5], LCD_BL_Reg     };
            A_Test  :   OutDataReg  <=  { J80_Data[7:5], LCD_Test_Reg   };
        endcase
        end
    end

    always @( posedge CLK or negedge nRST ) begin
    if( !nRST ) begin

        end
    else if(( J80_RS == 1'b1 )&&( J80_We == 1'b1 ))begin
        case( J80_Data[7:5] )
            A_Res   :   OutDataReg  <=  { J80_Data[7:5], 5'b00000       };
            A_CTRL  :   OutDataReg  <=  { J80_Data[7:5], LCD_Ctrl_Reg   };
            A_Pix   :   OutDataReg  <=  { J80_Data[7:5], LCD_Pix_Reg    };
            A_BL    :   OutDataReg  <=  { J80_Data[7:5], LCD_BL_Reg     };
            A_Test  :   OutDataReg  <=  { J80_Data[7:5], LCD_Test_Reg   };
        endcase
        end
    end


endmodule