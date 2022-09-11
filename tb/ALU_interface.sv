/*=================================================================================================
 = File name : ALU_interface.sv                                                                   =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 03 , 2022                                                                      =
 =================================================================================================*/

interface ALU_interface (
    input CLK,
);

    logic [31:0]    Arith_OUT   ;
    logic [15:0]    Logic_OUT   ;
    logic [15:0]    Shift_OUT   ;
    logic [2:0]     CMP_OUT     ;

    logic           Carry_OUT   ;

    logic           Arith_Flag  ;
    logic           Logic_Flag  ;
    logic           Shift_Flag  ;
    logic           CMP_Flag    ;

    logic [15:0] A;
    logic [15:0] B ;

    logic [3:0] ALU_FUNC ;

endinterface : ALU_interface