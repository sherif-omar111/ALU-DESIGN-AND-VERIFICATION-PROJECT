/*=================================================================================================
 = File name : ALU_CMP_LS_seq.sv                                                                  =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 07 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_CMP_LS_SEQ
`define ALU_CMP_LS_SEQ
class ALU_CMP_LS_seq extends ALU_seq;
  `uvm_object_utils(ALU_CMP_LS_seq)

  function new(string name="ALU_CMP_LS_seq");
    super.new(name);
  endfunction : new

  virtual function bit get_trans(ALU_trans trans);
    return (trans.randomize() with {
      opcode_m == ADD;
    });
  endfunction : get_trans

  virtual task body;
    super.body();
  endtask : body
endclass : ALU_CMP_LS_seq
`endif