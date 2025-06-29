/*=================================================================================================
 = File name : ALU_env_pkg.sv                                                                     =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 09 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_ENV_PKG
`define ALU_ENV_PKG
package ALU_env_pkg;
  import uvm_pkg::*;
  
  `include "ALU_trans.sv"
  `include "ALU_seqr.sv"
  `include "ALU_driver.sv"
  `include "alu_monitor.sv"
  `include "ALU_agent.sv"
  `include "ALU_scoreboard.sv"
  `include "ALU_coverage.sv"
  `include "ALU_env.sv"
endpackage : ALU_env_pkg
`endif