/*=================================================================================================
 = File name : ALU_test_pkg.sv                                                                    =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 03 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_TEST_PKG
`define ALU_TEST_PKG

package ALU_test_pkg;
  import uvm_pkg::*;
  import ALU_ENV_pkg::*;
  import ALU_SEQ_pkg::*;
  `include "ALU_test.sv"

  `include "ALU_ADD_test.sv"
  `include "ALU_SUB_test.sv"
  `include "ALU_MUL_test.sv"
  `include "ALU_DIV_test.sv"

  `include "ALU_AND_test.sv"
  `include "ALU_OR_test.sv"
  `include "ALU_NAND_test.sv"
  `include "ALU_NOR_test.sv"

  `include "ALU_NOP_test.sv"
  `include "ALU_CMP_EQ_test.sv"
  `include "ALU_CMP_LS_test.sv"
  `include "ALU_CMP_GR_test.sv"

  `include "ALU_A_SF_L_test.sv"
  `include "ALU_A_SF_R_test.sv"
  `include "ALU_B_SF_L_test.sv"
  `include "ALU_B_SF_R_test.sv"
  
  `include "ALU_NODELAY_test.sv"
  `include "ALU_LONGDELAY_test.sv"

  `include "ALU_ERROR_test.sv"
endpackage : ALU_test_pkg
`endif