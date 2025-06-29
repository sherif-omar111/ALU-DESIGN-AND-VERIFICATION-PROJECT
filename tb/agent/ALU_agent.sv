/*=================================================================================================
 = File name : ALU_agent.sv                                                                       =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 09 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_AGENT
`define ALU_AGENT
class ALU_agent extends uvm_agent;
    `uvm_component_utils(ALU_agent)

    ALU_seqr    seqr_a;
    ALU_driver  driver_a;
    ALU_monitor monitor_a;

    function new(string name , uvm_component_parent);
        super.new(name, parent) ;
    endfunction : new 

//build phase
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        seqr_a      = ALU_seqr::type_id::create("seqr_a", this);
        driver_a    = ALU_driver::type_id::create("driver_a", this);
        monitor_a   = ALU_monitor::type_id::create("monitor_a", this);
    endfunction : build_phase

//connent phase 
    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        driver_a.seq_item_port.connect(seqr_a.seq_item_export);
    endfunction : connect_phase 

endclass : alu_agent
`endif
