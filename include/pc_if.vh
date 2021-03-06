/*
 //Created: 	02/11/2014
 //Author:	Nabeel Zaim (mg232)
 //Lab Section:	437-03
 //Description: 	program counter interface
 */
`ifndef PC_IF_VH
 `define PC_IF_VH

 `include "cpu_types_pkg.vh"

interface pc_if;
   import cpu_types_pkg::*;

   logic [ADDR_W-1:0] imm26;
   word_t  imm16; //the extended address to go to
   word_t  regval; //the new PC value from a reg [spefically for use by JR]   
   logic [1:0] 	      pc_src;
   logic 	      branchmux;   
   word_t  imemaddr;
   logic 	      pcEN;   
   
   // register file ports
   modport pc 
     (
      input  imm16, imm26, regval, pc_src, pcEN, branchmux,
      output imemaddr
      );

endinterface

`endif //PC_IF_VH
