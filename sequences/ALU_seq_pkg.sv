/*=================================================================================================
 = File name : ALU_seq_pkg.sv                                                                     =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 07 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_SEQ_PKG
`define ALU_SEQ_PKG

package ALU_seq_pkg;
  import uvm_pkg::*;
  import ALU_env_pkg::*;
  
  `include "ALU_seq_cfg.sv"
  `include "ALU_seq.sv"

  `include "ALU_ADD_seq.sv"
  `include "ALU_SUB_seq.sv"
  `include "ALU_MUL_seq.sv"
  `include "ALU_DIV_seq.sv"

  `include "ALU_AND_seq.sv"
  `include "ALU_OR_seq.sv"
  `include "ALU_NAND_seq.sv"
  `include "ALU_NOR_seq.sv"

  `include "ALU_NOP_seq.sv"
  `include "ALU_CMP_EQ_seq.sv"
  `include "ALU_CMP_LS_seq.sv"
  `include "ALU_CMP_GR_seq.sv"

  `include "ALU_A_SF_L_seq.sv"
  `include "ALU_A_SF_R_seq.sv"
  `include "ALU_B_SF_L_seq.sv"
  `include "ALU_B_SF_R_seq.sv"

  `include "ALU_NODELAY_seq.sv"
  `include "ALU_LONGDELAY_seq.sv"

  `include "ALU_ERROR_seq.sv"
endpackage : alu_seq_pkg
`endif
