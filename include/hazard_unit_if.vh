//Created: 	02/11/2014
//Author:	Nabeel Zaim (mg232)
//Lab Section:	437-03
//Description: 	hazard unit interface

`ifndef HAZARD_UNIT_IF_VH
 `define HAZARD_UNIT_IF_VH

 `include "cpu_types_pkg.vh"

interface hazard_unit_if;
   import cpu_types_pkg::*;

   logic ihit, dhit, halt;
   logic FDen, DEen, EMen, MWen;
   logic FDflush, DEflush, EMflush, MWflush;
   logic branching, jumping, loading;
   logic dREN, dWEN;
   
   modport haz (
		input  ihit, dhit, halt, branching, jumping, loading, dREN, dWEN,
		output FDen, DEen, EMen, MWen,
		       FDflush, DEflush, EMflush, MWflush
		);
      
endinterface

`endif //HAZARD_UNIT_IF_VH
