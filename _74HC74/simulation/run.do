quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "D:/GDUT_EDA_Libero_verilog code/_74HC74"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/74HC74.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/stimulus/test74.v"

vsim -L proasic3 -L presynth  -t 1ps presynth.test74
add wave /test74/*
run 1000ns
