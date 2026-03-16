# Agentic DFT Flow

## Overview

This repository explores the intersection of Agentic AI and Semiconductor Design-for-Testability (DFT), leveraging multi-agent systems to revolutionize EDA workflows. Drawing from expertise in Electronics and Communication Engineering, embedded systems, and VLSI design, this project addresses critical research gaps in DFT automation through intelligent, adaptive agents.

## Background

As a student with hands-on experience in RISC-V processors and IoT systems, this research serves as an advanced portfolio centerpiece, bridging traditional semiconductor engineering with cutting-edge AI paradigms. The project focuses on developing autonomous agents that can interpret design constraints, plan test strategies, and execute DFT insertions with minimal human intervention.

## Repository Structure

```
/documentation    # Research reports, documentation, and core research gap summaries
/models          # Domain-specific fine-tuning scripts for models like ChipLlama or VeriGen
/datasets        # Scripts and links for processing DFT datasets (VeriDFT, ForgeEDA, EDA Corpus)
/orchestrator    # Action layer adapters for interfacing with EDA tools (OpenROAD, Yosys)
/evaluations     # Benchmarks using ITC'99 and VerilogEval for fault coverage and PPA metrics
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

## Getting Started

1. Clone the repository
2. Install dependencies (requirements.txt forthcoming)
3. Review documentation in `/documentation`
4. Explore evaluation benchmarks in `/evaluations`

## Contributing

This project welcomes contributions from semiconductor engineers, AI researchers, and DFT specialists. Please see individual folder READMEs for specific contribution guidelines.

## License

[To be determined - Academic research license]

## Contact

[Aashish Niranjan B] - [Contact information]

---

*This research is part of ongoing academic work in Agentic EDA, aiming to democratize advanced DFT methodologies through intelligent automation.*