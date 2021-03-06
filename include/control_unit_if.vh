/*
 //Created: 	02/10/2014
 //Author:	Nabeel Zaim (mg232)
 //Lab Section:	437-03
 //Description: control unit interface 
 */

`ifndef CONTROL_UNIT_IF_VH
 `define CONTROL_UNIT_IF_VH

 `include "cpu_types_pkg.vh"

interface control_unit_if;   
   import cpu_types_pkg::*;

   //IF STAGE
   logic [31:0] align; //for aligning my indentations in emacs. not used.
   word_t       instr;
   logic        regEN, halt;

   //ID STAGE
   regbits_t    rs, rd, rt;
   logic [IMM_W-1:0] imm16;
   logic [1:0]	regdst;
   logic 	extop;

   //EX STAGE
   aluop_t 	alu_op;
   regbits_t    shamt;   
   logic [1:0] 	alu_src, pc_src;
   logic [2:0] 	alu_flags;
   logic 	zeroflag;
   logic 	flush;   

   //MEM+WB STAGE
   logic 	memwr, regwr;
   logic [1:0] 	memtoreg;   
   logic        icuREN, dcuWEN, dcuREN;
   logic        datomic;
            
   // regular module ports
   modport cu
     (
      input instr, alu_flags, zeroflag,
      output halt, rs, rd, rt, imm16, regdst, extop, alu_op, shamt, alu_src, pc_src,
      memwr, memtoreg, regwr, icuREN, dcuWEN, dcuREN, datomic,
      regEN, flush
      );
   
endinterface

   
`endif //CONTROL_UNIT_IF_VH
