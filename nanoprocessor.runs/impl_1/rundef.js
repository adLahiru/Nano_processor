//
// Vivado(TM)
// rundef.js: a Vivado-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
<<<<<<< HEAD
<<<<<<< HEAD
  PathVal = "C:/Xilinx/SDK/2018.1/bin;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2018.1/bin;";
} else {
  PathVal = "C:/Xilinx/SDK/2018.1/bin;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2018.1/bin;" + PathVal;
=======
  PathVal = "C:/Xilinx/SDK/2018.2/bin;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2018.2/bin;";
} else {
  PathVal = "C:/Xilinx/SDK/2018.2/bin;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2018.2/bin;" + PathVal;
>>>>>>> origin/sandeni
=======
  PathVal = "C:/Xilinx/SDK/2018.1/bin;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2018.1/bin;";
} else {
  PathVal = "C:/Xilinx/SDK/2018.1/bin;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2018.1/bin;" + PathVal;
>>>>>>> origin/sandaru
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


// pre-commands:
ISETouchFile( "init_design", "begin" );
ISEStep( "vivado",
<<<<<<< HEAD
<<<<<<< HEAD
         "-log Instruction_Decoder.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source Instruction_Decoder.tcl -notrace" );
=======
         "-log Register_Bank.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source Register_Bank.tcl -notrace" );
>>>>>>> origin/sandeni
=======
         "-log Programm_Rom.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source Programm_Rom.tcl -notrace" );
>>>>>>> origin/sandaru





function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
