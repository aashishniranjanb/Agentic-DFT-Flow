# Makefile for Agentic-DFT-Flow

# --- Tools ---
IV = iverilog
VVP = vvp
WAVE = gtkwave
YOSYS = yosys

# --- Directories & Files ---
RTL_DIR = rtl
SIM_DIR = sim
SCRIPT_DIR = scripts

RTL_FILES = $(RTL_DIR)/dynamic_lfsr.v $(RTL_DIR)/agentic_misr.v
TB_FILE = $(SIM_DIR)/tb_agentic_bist.sv

SIM_BIN = $(SIM_DIR)/bist_sim.vvp
WAVE_FILE = agentic_bist_sim.vcd

# --- Make Targets ---
.PHONY: all simulate wave synthesize clean

all: simulate

simulate:
	@echo "========== Compiling SystemVerilog Testbench =========="
	$(IV) -g2012 -o $(SIM_BIN) $(RTL_FILES) $(TB_FILE)
	@echo "========== Running Simulation =========="
	$(VVP) $(SIM_BIN)

wave:
	@echo "========== Opening GTKWave =========="
	$(WAVE) $(WAVE_FILE) &

synthesize:
	@echo "========== Running Yosys Logic Synthesis =========="
	cd $(SCRIPT_DIR) && $(YOSYS) -c synth.tcl

clean:
	@echo "========== Cleaning Up Simulation & Synthesis Files =========="
	rm -f $(SIM_BIN) $(WAVE_FILE) $(SIM_DIR)/*.vcd $(SIM_DIR)/*.v