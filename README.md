🧠 32-bit RISC-V Processor on Spartan-6 FPGA
This project implements a custom 32-bit RISC-V processor on a Spartan-6 FPGA using Verilog HDL. The design includes a basic RISC-V instruction set, register file, ALU, control unit, and memory components. The processor is synthesized and deployed using Xilinx ISE.

🔧 Features
32-bit RISC-V instruction support (RV32I subset)

Fully functional:

ALU

Register file

Control unit

Instruction and data memory (Harvard architecture)

Synthesis-ready Verilog code

Simulated using ModelSim / Icarus Verilog

Deployed on Spartan-6 FPGA using Xilinx ISE

📁 Project Structure
alu.v – Arithmetic and logic unit

register_file.v – 32-bit register file

control_unit.v – Instruction decoding and control signal generation

memory.v – Instruction and data memory modules

riscv_core.v – Top-level RISC-V processor core

testbench.v – Testbench for simulation and verification

🚀 Getting Started
Requirements:
Xilinx ISE WebPACK (for Spartan-6)

ModelSim / Icarus Verilog (for simulation)

Spartan-6 FPGA Board (e.g., Nexys 3)

Steps:
Clone this repo

Simulate using your preferred Verilog simulator

Synthesize and generate bitstream using Xilinx ISE

Upload to your Spartan-6 board
