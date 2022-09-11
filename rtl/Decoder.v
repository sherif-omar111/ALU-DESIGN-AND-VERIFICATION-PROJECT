/*=================================================================================================
 = File name : Decoder.v                                                                          =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 03 , 2022                                                                      =
 =================================================================================================*/

module Decoder (

input  wire [1:0] IN ,
output reg  [3:0] OUT
);


always @(*)
  begin
  OUT = 4'b0000 ;
    case (IN)
     2'b00 : OUT = 4'b0001 ;
     2'b01 : OUT = 4'b0010 ;          
     2'b10 : OUT = 4'b0100 ;     
     2'b11 : OUT = 4'b1000 ;     
   endcase
 end 
 
 
 endmodule