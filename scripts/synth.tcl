# scripts/synth.tcl
# Yosys Synthesis Script for Agentic BIST
yosys -import

# 1. Read the Agentic Verilog RTL designs
read_verilog ../rtl/dynamic_lfsr.v
read_verilog ../rtl/agentic_misr.v

# 2. Elaborate the design hierarchy 
# We are synthesizing the dynamic LFSR first to check its specific overhead
hierarchy -check -top dynamic_lfsr_prpg

# 3. High-level synthesis operations
proc; opt; fsm; opt; memory; opt

# 4. Map to internal cell library for generic gate sizing
techmap; opt

# 5. Map flip-flops and basic logic gates
dfflegalize -cell $_DFF_P_ 0
abc -g AND,NAND,OR,NOR,XOR,XNOR,DFF

# 6. Print synthesis statistics (Gate count, Area)
# Focus on this output to validate the <5% area overhead constraint
stat

# 7. Write out the synthesized structural netlist
write_verilog ../sim/synth_lfsr_netlist.v