# Agentic DFT Flow

## Overview

This repository explores the intersection of Agentic AI and Semiconductor Design-for-Testability (DFT), leveraging multi-agent systems to revolutionize EDA workflows. Drawing from expertise in Electronics and Communication Engineering, embedded systems, and VLSI design, this project addresses critical research gaps in DFT automation through intelligent, adaptive agents.

## Background

As a student with hands-on experience in RISC-V processors and IoT systems, this research serves as an advanced portfolio centerpiece, bridging traditional semiconductor engineering with cutting-edge AI paradigms. The project focuses on developing autonomous agents that can interpret design constraints, plan test strategies, and execute DFT insertions with minimal human intervention.

## Repository Structure

```
Agentic-DFT-Flow/
├── .gitignore
├── README.md
├── requirements.txt
│
├── rtl/                        # Hardware descriptions
│   ├── dynamic_lfsr.v          # Agent-controlled pattern generator
│   ├── agentic_misr.v          # Agent-monitored response analyzer
│   └── target_cut/             # The actual circuit being tested
│
├── sim/                        # Verification and Simulation
│   ├── tb_agentic_bist.sv      # SystemVerilog testbench
│   └── waveforms/              # Saved .vcd or .fst GTKWave configs
│
├── agents/                     # The Python-based AI Cognitive Stack
│   ├── thermal_agent.py        # Monitors multiphysics limits
│   ├── bist_orchestrator.py    # Analyzes MISR and updates LFSR seeds
│   └── prompts/                # System instructions for the LLM
│
├── adapters/                   # The Action Layer [cite: 101]
│   ├── openroad_adapter.py     # Executes OpenROAD Tcl scripts [cite: 156]
│   └── yosys_adapter.py        # Executes Yosys synthesis [cite: 167]
│
├── scripts/                    # Legacy EDA execution files
│   ├── synth.tcl               # Standard Yosys synthesis script
│   └── sta.tcl                 # Static Timing Analysis script
│
└── docs/                       # Research and Documentation
    ├── Agentic_AI_in_DFT.pdf   # The original research paper
    └── Architecture.md         # Explaining the Multi-Agent setup
```

## Key Research Gaps Addressed

### Gap 2: Optimal Test Point Insertion (TPI)
- **Expertise**: VLSI & Netlist Analysis
- **Approach**: Graph Neural Networks (GNNs) for predicting testability bottlenecks and automating TPI

### Gap 4: Zero-Hallucination Scripting
- **Expertise**: Formal Verification
- **Approach**: Neuro-Symbolic architectures ensuring DFT scripts pass Logic Equivalence Checking

### Gap 7: Self-Healing Built-In Self-Test (BIST)
- **Expertise**: Embedded Systems & IoT
- **Approach**: TinyML agents on FPGA testbeds for adaptive BIST pattern mutation

## Cognitive Stack Architecture

### Perception Layer
Modules for interpreting waveforms, netlists, and design constraints from legacy EDA formats.

### Cognition Layer
Large Language Models (LLMs) for deterministic planning under physical and timing constraints, ensuring PPA optimization.

### Action Layer
Adapters executing commands in open-source toolchains like OpenROAD and SymbiYosys, avoiding proprietary vendor dependencies.

## Tooling & Dependencies

- **Open-Source Focus**: Leverages OpenROAD and SymbiYosys for cost-effective development during academic research
- **AI Frameworks**: PyTorch/TensorFlow for GNN implementations
- **Verification**: Formal tools for equivalence checking
- **Hardware**: FPGA platforms for TinyML agent deployment

## 🚀 Quickstart: Running the Multi-Agent Simulation Locally

This repository is designed to be easily reproducible. You can simulate both the hardware verification (Verilog/SystemVerilog) and the software orchestration (Python Multi-Agent System) locally.

### Prerequisites
Ensure you have the following open-source tools installed on your system:
* **Python 3.10+** (For the AI Cognitive Stack)
* **Icarus Verilog (`iverilog`)** (For RTL simulation)
* **GTKWave** (For waveform visualization)
* **Yosys** (For logic synthesis and area overhead validation)

### Step 1: Environment Setup
First, clone the repository and install the required Python dependencies for the AI agents:

```bash
git clone https://github.com/aashishniranjanb/Agentic-DFT-Flow.git
cd Agentic-DFT-Flow
python -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate
pip install -r requirements.txt
```

### Step 2: Hardware Compilation & Baseline Simulation
Before launching the AI, you can verify the baseline hardware functionality of the Dynamic Agentic BIST architecture. Use the included Makefile to compile the Verilog and run the SystemVerilog testbench:

```bash
make simulate
```

Note: This will output agentic_bist_sim.vcd. You can view the exact signal changes (such as the Agent updating the LFSR seed to isolate a fault) by running `make wave`.

### Step 3: Launching the AI Orchestrator
To see the transition to Level 3 Agentic EDA in action, run the main Python orchestration script. This initializes the ATPG Orchestrator, the Action Agent, and the Neuro-Symbolic Verification Agent.

```bash
python agents/bist_orchestrator.py
```

Watch the terminal as the agents ingest the simulated multiphysics telemetry, negotiate thermal throttling parameters, and autonomously adapt the BIST hardware.

### Step 4: Logic Synthesis & Area Validation
In Design for Test (DFT), keeping the physical area overhead below 5% is critical. Run the automated synthesis script to generate a statistical gate-count report using Yosys:

```bash
make synthesize
```

## Getting Started

1. Clone the repository
2. Install dependencies (requirements.txt forthcoming)
3. Review documentation in `/docs`
4. Explore evaluation benchmarks in `/sim`

## Contributing

This project welcomes contributions from semiconductor engineers, AI researchers, and DFT specialists. Please see individual folder READMEs for specific contribution guidelines.

## License

[To be determined - Academic research license]

## Contact

[Aashish Niranjan B] - [Contact information]

---

*This research is part of ongoing academic work in Agentic EDA, aiming to democratize advanced DFT methodologies through intelligent automation.*