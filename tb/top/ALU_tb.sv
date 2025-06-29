/*=================================================================================================
 = File name : ALU_tb.sv                                                                          =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Mar 03 , 2022                                                                      =
 =================================================================================================*/

module ALU_tb ;
    import uvm_pkg::*;

logic CLK;

//interface
    ALU_interface ALU_VIF(.CLK(CLK));


//Design
ALU_top dut(
    .A(ALU_VIF.A) ,
    .B(ALU_VIF.B) ,
    .ALU_FUNC(ALU_VIF.ALU_FUNC) ,
    .CLK(ALU_VIF.CLK) ,
    .Arith_OUT(ALU_VIF.Arith_OUT) ,
    .Carry_OUT(ALU_VIF.Carry_OUT) ,
    .Arith_Flag(ALU_VIF.Arith_Flag) ,
    .Logic_OUT(ALU_VIF.Logic_OUT) ,
    .Logic_Flag(ALU_VIF.Logic_Flag) ,
    .Shift_OUT(ALU_VIF.Shift_OUT) ,
    .Shift_Flag(ALU_VIF.Shift_Flag) ,
    .CMP_OUT(ALU_VIF.CMP_OUT) ,
    .CMP_Flag(ALU_VIF.CMP_Flag)
);

initial begin
    uvm_config_db#(virtual ALU_interface)::set(null, "" , "ALU_interface" , ALU_VIF) ;
    run_test();
end

initial begin
    CLK = 1'b0 ;
    repeat(5) begin
        @(posedge CLK)
    end
    always begin
        #1ns CLK= ~CLK;
    end
end

//Dump waveform
initial begin                                                                                                                   
    if ($test$plusargs("debussy")) begin
      if($test$plusargs("fsdb")) begin
        $fsdbDumpvars;
        $fsdbDumpfile("debussy.fsdb");
      end
      else begin
        $dumpvars;
        $dumpfile("debussy.fsdb");
      end
    end
  end

endmodule : ALU_tb