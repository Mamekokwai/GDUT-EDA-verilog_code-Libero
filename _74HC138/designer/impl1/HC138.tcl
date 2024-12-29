# Created by Microsemi Libero Software 11.9.1.0
# Sat Dec 30 15:20:47 2023

# (OPEN DESIGN)

open_design "HC138.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "HC138_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\74HC138\HC138\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/HC138.edn} -merge_physical "no" -merge_timing "yes"
compile
report -type "status" {HC138_compile_report.txt}
report -type "pin" -listby "name" {HC138_report_pin_byname.txt}
report -type "pin" -listby "number" {HC138_report_pin_bynumber.txt}

save_design
