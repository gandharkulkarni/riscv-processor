# RISC-V Processor Implementation in Digital

## Introduction
This repository hosts the implementation of a single-cycle RISC-V processor designed in Digital, an educational tool for designing and simulating digital logic circuits. The processor is capable of running a subset of RISC-V assembly programs, including those developed in earlier projects. Additionally, it features a modified NTLang capable of generating assembly code for direct execution on the processor.

## Getting Started

### Prerequisites
- Digital Logic Simulator: To view and interact with `.dig` files, download and install Digital from here.
https://github.com/hneemann/Digital

### Installation
1. Clone this repository to your local machine.
2. Install Digital using the link provided above.
3. Open the `.dig` files with Digital to view the processor design and simulations.

## Processor Design
The processor follows a single-cycle microarchitecture and includes the following components:
- **Program Counter (PC)**: A 64-bit register with enable and clear inputs.
- **Instruction Memory**: ROM components storing machine code programs with program selection capability.
- **Register File**: Supports reading two registers simultaneously.
- **Arithmetic Logic Unit (ALU)**: Performs data processing tasks such as addition, subtraction, multiplication, and shifting.
- **Branch Control Unit (BCU)**: Manages conditional branch computation and PC updates.
- **Data Memory**: Utilizes Digital's RAM component for stack memory, supporting `ld` and `sd` instructions.
- **Control Unit**: Decodes machine code instructions and generates control signals.
- **Data Path and Control Path**: Connects sub-circuits and multiplexers, facilitating data flow.

## Running Simulations
To simulate the processor with a specific program:
1. Open the processor `.dig` file in Digital.
2. Load the corresponding `.hex` file into the instruction memory.
3. Run the simulation and observe the outputs for registers A0 to A3.

## NTLang Code Generation
For generating assembly code that can run on the processor:
1. Use the modified NTLang to compile expressions into `.hex` files.
2. Manually load the `.hex` files into the instruction memory of the processor in Digital.

## Testing
The processor is tested using unit tests and complete program tests. Custom programs for testing should include an assembly language main and an end marker (`unimp`) without `.global` directives.

## Acknowledgments
A special thank you to **Professor Greg Benson** for his guidance and expertise throughout the development of this project.
