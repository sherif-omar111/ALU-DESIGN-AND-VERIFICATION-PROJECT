/*=================================================================================================
 = File name : ALU_seq.sv                                                                         =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 07 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_SEQ
`define ALU_SEQ

class ALU_seq extends uvm_sequence;
    `uvm_object_utils(ALU_seq)
    ALU_seq_cfg cfg_m;

function new(string name="ALU_seq");
    super.new(name);
endfunction : new

virtual function bit get_trans(ALU_trans trans);
    return (trans.randomize() with{
        opcode_m inside {ADD, SUB, MUL, DIV, AND, OR, NAND, NOR, NOP, CMP_EQ, CMP_LS, CMP_GR, A_SF_L, A_SF_R, B_SF_L, B_SF_R };
    });
endfunction : get_trans

virtual task pre_body;
    assert (uvm_config_db#(ALU_seq_cfg)::get(m_sequencer, "", "alu_seq_cfg", cfg_m)) 
    else begin
        `uvm_fatal("ALU_SEQ", "Unable to get alu_seq_cfg")
    end
endtask : pre_body

virtual task body;
    ALU_trans trans;
    repeat(cfg_m.num_trans_m) begin
    trans = new ;
    start_item(trans);
    if(!get_trans(trans))begin
        `uvm_fatal("ALU_SEQ", "Randomized trans failed!")
      end
      finish_item(trans);
    end
  endtask : body
endclass : ALU_seq
`endif


