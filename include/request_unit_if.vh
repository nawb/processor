//Created: 	02/11/2014
//Author:	Nabeel Zaim (mg232)
//Lab Section:	437-03
//Description: 	request unit (hazard unit) interface

`ifndef REQUEST_UNIT_IF_VH
 `define REQUEST_UNIT_IF_VH

 `include "cpu_types_pkg.vh"

interface request_unit_if;
   import cpu_types_pkg::*;

   logic regwr, dcuREN, dcuWEN, ihit, dhit, imemREN, dmemWEN, dmemREN, pcEN;   
   
   modport req (
		input  regwr, dcuREN, dcuWEN, ihit, dhit,
		output imemREN, dmemREN, dmemWEN, pcEN
		);
endinterface

`endif //REQUEST_UNIT_IF_VH
