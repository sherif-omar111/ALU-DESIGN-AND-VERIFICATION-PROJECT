/*=================================================================================================
 = File name : ALU_seq_cfg.sv                                                                     =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 07 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_SEQ_CFG
`define ALU_SEQ_CFG

class ALU_seq_cfg extends uvm_object;
    `uvm_object_utils(ALU_seq_cfg)

    rand int num_trans_m;

    constraint c_num_trans {

        num_trans_m inside {[1:50]};
    }

function new(string name="ALU_seq_cfg");
    super.new(name);
endfunction : new
endclass : ALU_seq_cfg

`endif