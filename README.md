# Design and Verification using UVM for Simple ALU 
ALU is the fundamental building block of the processor, which is responsible for carrying out different functions:
- Arithmetic functions through ARITHMETIC_UNIT block.
- Logic functions through LOGIC_UNIT block.
- Shift functions through SHIFT_UNIT block. 
- Comparison functions through CMP_UNIT block. 
- Decoder Unit responsibles for enable which Function to operate according to the highest Most significant 2-bit of the ALU_FUNC control bus ALU_FUNC [3:2]. 

## 1. Directories:
- rtl : rtl design
- tb/top            : hvl top.
- tb/test           : tests.
- tb/env            : Environment, scoreboard ...
- tb/agents         : agents.
- tb/sequences      : sequences.


## 2. System Architecture:
The ALU module consists of five sub modules:

#### 1- ARITHMETIC_UNIT.
#### 2- LOGIC_UNIT.
#### 3- SHIFT_UNIT.
#### 4- CMP_UNIT.
#### 5- DCODER_UNIT.

![image]()

## 3. Interface signals:
| Signal name   | Signal width      | Description                      
| ------------- | ----------------- | -----------------------------------------------------------                                        
| clk           | Bit               | Clock signal on which the entire module is working.                  
| RST           | Bit               | 
| Enable        | Bit               |
| A             |[OPRND_WIDTH-1:0]  | Input 1
| B             |[OPRND_WIDTH-1:0]  | Input 2
| ALU_FUN       |[CTRL_WIDTH-1:0]   | Operation code
| ALU_OUT       |[OUT_WIDTH-1:0]    | Output
| OUT_VALID     | Bit               | Output Flag

### ALU_FUN Table

| ALU_FUN   | Operation                     | ALU_OUT                      
| --------- | ----------------------------- | -------------                                      
| 0000      | Arithmatic : Addition	        |                 
| 0001      | Arithmatic : Subtraction      | 
| 0010      | Arithmatic : Multiplication	|
| 0011      | Arithmatic : Division         | 
| 0100      | Logic : AND	                | 
| 0101      | Logic : OR	                | 
| 0110      | Logic : NAND                  | 
| 0111      | Logic : NOR	                | 
| 1000      | NOP	                        | Equal to 0
| 1001      | CMP: A = B	                | Equal to 1
| 1010      | CMP: A > B	                | Equal to 2
| 1011      | CMP: A < B	                | Equal to 3
| 1100      | SHIFT: A >> 1	                |
| 1101      | SHIFT: A << 1	                |
| 1110      | SHIFT: B >> 1	                |
| 1111      | SHIFT: B << 1	                |
		
	
## 4. UVM Architecture:

![image]()

## 5. Sequence items:
alu_seq_item

## 6. Sequences:

| Sequence               |
| ---------------------- |
| alu_sequence_reset     |
| alu_add_sequence 	     |
| alu_sub_sequence       |  
| alu_mul_sequence       | 
| alu_div_sequence       |
| alu_and_sequence       |
| alu_or_sequence        |
| alu_nand_sequence      |
| alu_nor_sequence       |
| alu_nop_sequence       |
| alu_equal_sequence     |
| alu_greater_sequence   |
| alu_less_sequence      |
| alu_a_lsr_sequence     |
| alu_a_lsl_sequence     |
| alu_b_lsr_sequence     |
| alu_b_lsl_sequence     |

## 7. Tests Scenarios:
| Test               | Scenario                                                                                  |
| ------------------ | ----------------------------------------------------------------------------------------- |
| alu_test_all	     | reset -> add -> sub -> mul -> div -> and -> or -> nand -> nor -> nop -> equal -> greater -> less -> a_lsr -> a_lsl -> b_lsr -> b_lsl 
| alu_add_test	     | 
| alu_sub_test       |  
| alu_mul_test       | 
| alu_div_test       |
| alu_and_test       |
| alu_or_test        |
| alu_nand_test      |
| alu_nor_test       |
| alu_nop_test       |
| alu_equal_test     |
| alu_greater_test   |
| alu_less_test      |
| alu_a_lsr_test     |
| alu_a_lsl_test     |
| alu_b_lsr_test     |
| alu_b_lsl_test     |


![image]()

## 8. Assertions:


![image]()


## 9. Coverage:

### 9.1 Functional Coverage:
![image]()

### 9.2 Code Coverage:
![image]()