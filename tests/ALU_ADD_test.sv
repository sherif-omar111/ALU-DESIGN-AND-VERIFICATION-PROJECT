/*=================================================================================================
 = File name : ALU_ADD_test.sv                                                                    =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 03 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_ADD_TEST
`define ALU_ADD_TEST

class ALU_ADD_test extends ALU_test;
    `uvm_component_utils(ALU_ADD_test)

    function new(string name , uvm_component parent);
        super.new(name, parent);
    endfunction : new

    virtual function void build_phase(uvm_phase phase);
        ALU_SEQ::type_id::set_type_override(ALU_ADD_seq::type_id::get());
        super.build_phase(phase);
    endfunction : build_phase
endclass : ALU_ADD_test
`endif 