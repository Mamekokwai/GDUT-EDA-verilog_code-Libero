# Created by Microsemi Libero Software 11.9.1.0
# Sat Dec 30 16:23:33 2023

# (OPEN DESIGN)

open_design "HC153.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "HC153_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\Administrator\Desktop\74HC153\HC153\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
