/*=================================================================================================
 = File name : ALU_driver.sv                                                                      =
 = Author    : Sherif Omar                                                                        =
 = Linkedin  : https://www.linkedin.com/in/sherif-omar-23829b222/                                 =
 = Email     : sherifomar661@gmail.com  "If you have any questions, feel free to contact me"      =
 = Date      : Sep 09 , 2022                                                                      =
 =================================================================================================*/

`ifndef ALU_DRIVER
`define ALU_DRIVER
class ALU_driver extends uvm_driver#(ALU_trans);
    `uvm_component_utils(ALU_driver)


    virtual ALU_interface vif_a;

    function new (string name , uvm_component parent);
        super.new(name, parent);
    endfunction : new

//build phase
virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    assert (uvm_config_db#(virtual ALU_interface)::get(null, "","ALU_interface",vif_a)) 
    else begin
        `uvm_fatal("ALU_DRIVER", "Unable to get alu interface!!")
    end
endfunction : build_phase


//connect phase
virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
endfunction : connect_phase

//reset phase 
virtual task reset_phase(uvm_phase phase);
    phase.raise_objection(this);
    @(posedge vif_a.CLK);
    phase.drop_objection(this);
endtask : reset_phase

//run phase
virtual task run_phase(uvm_phase phase);
    ALU_trans trans;
    init_signal();
    forever begin
        eq_item_port.get_next_item(trans);
        drive_signal(trans);
        seq_item_port.item_done();
    end
endtask : run_phase

virtual task drive_signal(ALU_trans trans);
    vif_a.A         <= trans.operand_A;
    vif_a.B         <= trans.operand_B;
    vif_a.ALU_FUNC  <= trans.opcode_m ;
    @(posedge vif_a.CLK);
    vif_a.A         <= 15'b0;
    vif_a.B         <= 15'b0;
    vif_a.ALU_FUNC  <= 4'b0;
    repeat(trans.delay_m) begin
        @(posedge vif_a.CLK);
    end
endtask : drive_signal

virtual task init_signal();
    vif_a.A         <= 15'b0;
    vif_a.B         <= 15'b0;
    vif_a.ALU_FUNC  <= 4'b0;
    @(posedge vif_a.CLK);
endtask : init_signal

endclass : ALU_driver


