/*=================================================================================================
 = File name : ALU_trans.sv                                                                       =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 09 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_TRANS
`define ALU_TRANS

typedef enum bit[3:0] {
  ADD       = 4'b0000,
  SUB       = 4'b0001,
  MUL       = 4'b0010,
  DIV       = 4'b0011,
  AND       = 4'b0100,
  OR        = 4'b0101,
  NAND      = 4'b0110,
  NOR       = 4'b0111,
  NOP       = 4'b1000,
  CMP_EQ    = 4'B1001,
  CMP_LS    = 4'b1010,
  CMP_GR    = 4'b1011,
  A_SF_L    = 4'b1100,
  A_SF_R    = 4'b1101,
  B_SF_L    = 4'b1110,
  B_SF_R =   4'b1111
} opcode_A; 

class ALU_trans extends uvm_sequence_item;
    bit           Carry_OUT_m   ;

    bit           Arith_Flag_m  ;
    bit           Logic_Flag_m  ;
    bit           Shift_Flag_m  ;
    bit           CMP_Flag_m    ;

    bit[31:0]      ARITH_m ;
    bit[15:0]      LOGIC_m ;
    bit[15:0]      SHIFT_m ;
    bit[2:0]       CMP_m   ;

    rand bit[3:0] opcode_m;

    rand bit[15:0] operand_A;
    rand bit[15:0] operand_B;


    rand bit[31:0] delay_m; //IN WOREST CASE FOR ARITH(MUL)

  constraint c_delay {
    delay_m inside {[0:5]};
  }

  constraint c_operandA {
    operand_A dist {
      16'h00            :/ 1,
      16'h01            :/ 1,
      [16'h02:16'hfd]   :/ 10,
      16'hfe            :/ 1,
      16'hff            :/ 1
    };
  }

  constraint c_operandB {
    operand_B dist {
      16'h00            :/ 1,
      16'h01            :/ 1,
      [16'h02:16'hfd]   :/ 10,
      16'hfe            :/ 1,
      16'hff            :/ 1
    };
  }

  `uvm_object_utils_begin(ALU_trans)
    `uvm_field_int(delay_m, UVM_ALL_ON)

    `uvm_field_int(opcode_m, UVM_ALL_ON)

    `uvm_field_int(operand_A, UVM_ALL_ON)
    `uvm_field_int(operand_B, UVM_ALL_ON)

    `uvm_field_int(Carry_OUT_m, UVM_ALL_ON)
    `uvm_field_int(Arith_Flag_m, UVM_ALL_ON)
    `uvm_field_int(Logic_Flag_m, UVM_ALL_ON)
    `uvm_field_int(Shift_Flag_m, UVM_ALL_ON)
    `uvm_field_int(CMP_Flag_m, UVM_ALL_ON)

    `uvm_field_int(ARITH_m, UVM_ALL_ON)
    `uvm_field_int(LOGIC_m, UVM_ALL_ON)
    `uvm_field_int(SHIFT_m, UVM_ALL_ON)
    `uvm_field_int(CMP_m, UVM_ALL_ON)

  `uvm_object_utils_end

  function new(string name="ALU_trans");
    super.new(name);
  endfunction : new
endclass : ALU_trans

`endif
