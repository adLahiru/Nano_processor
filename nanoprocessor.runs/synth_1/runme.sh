#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
<<<<<<< HEAD
<<<<<<< HEAD
  PATH=C:/Xilinx/SDK/2018.1/bin;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2018.1/bin
else
  PATH=C:/Xilinx/SDK/2018.1/bin;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2018.1/bin:$PATH
=======
  PATH=C:/Xilinx/SDK/2018.2/bin;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2018.2/bin
else
  PATH=C:/Xilinx/SDK/2018.2/bin;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2018.2/bin:$PATH
>>>>>>> origin/sandeni
=======
  PATH=C:/Xilinx/SDK/2018.1/bin;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2018.1/bin
else
  PATH=C:/Xilinx/SDK/2018.1/bin;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2018.1/bin:$PATH
>>>>>>> origin/sandaru
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

<<<<<<< HEAD
<<<<<<< HEAD
HD_PWD='E:/Nano_Prosessor/nanoprocessor.runs/synth_1'
=======
HD_PWD='C:/Nano_processor/nanoprocessor.runs/synth_1'
>>>>>>> origin/sandeni
=======
HD_PWD='D:/nano_processor/Nano_processor/nanoprocessor.runs/synth_1'
>>>>>>> origin/sandaru
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

<<<<<<< HEAD
<<<<<<< HEAD
EAStep vivado -log Instruction_Decoder.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source Instruction_Decoder.tcl
=======
EAStep vivado -log Register_Bank.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source Register_Bank.tcl
>>>>>>> origin/sandeni
=======
EAStep vivado -log Programm_Rom.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source Programm_Rom.tcl
>>>>>>> origin/sandaru
