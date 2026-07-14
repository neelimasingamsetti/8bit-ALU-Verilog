# 8-Bit ALU Implementation using Verilog HDL and Xilinx Vivado

## Project Overview

This project implements an 8-Bit Arithmetic Logic Unit (ALU) using Verilog HDL.
The ALU performs arithmetic and logical operations based on the select input.
The design was simulated and verified using Xilinx Vivado.

---

## Objectives

- Design an 8-bit ALU using Verilog HDL
- Perform arithmetic operations
- Perform logical operations
- Generate status flags
- Verify functionality using a testbench
- Analyze simulation waveforms

---

## Inputs and Outputs

### Inputs

| Signal | Width | Description |
|----------|----------|----------|
| a | 8-bit | First Operand |
| b | 8-bit | Second Operand |
| s | 3-bit | Operation Select |

### Outputs

| Signal | Width | Description |
|----------|----------|----------|
| y | 8-bit | ALU Result |
| carry | 1-bit | Carry Flag |
| zero | 1-bit | Zero Flag |

---

## Operations Performed

| Select (s) | Operation |
|------------|------------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | XOR |
| 100 | NOT A |
| 101 | OR |
| 110 | Left Shift |
| 111 | Right Shift |

---

## Status Flags

### Carry Flag

The carry flag becomes HIGH when an arithmetic operation produces a carry-out bit.

Example:

255 + 1 = 256

The extra bit is stored in the carry flag.

### Zero Flag

The zero flag becomes HIGH when the output result is equal to zero.

Example:

5 XOR 5 = 0

In this case the zero flag becomes HIGH.

---

## Design Methodology

1. Defined ALU inputs and outputs.
2. Implemented all operations using a case statement.
3. Added carry flag logic.
4. Added zero flag logic.
5. Created a Verilog testbench.
6. Applied different test vectors.
7. Simulated the design in Vivado.
8. Verified output waveforms.

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Windows Operating System

---

## Simulation Result

The following waveform shows the successful execution of all ALU operations.

![Waveform](Output_Waveform.png)

---

## Files Included

| File Name | Description |
|------------|------------|
| alu_8.v | ALU Design Code |
| alu_8tb.v | Testbench |
| Output_Waveform.png | Simulation Result |
| README.md | Project Documentation |

---

## Applications

- Microprocessors
- CPUs
- Embedded Systems
- Digital Signal Processing
- FPGA-Based Systems

---

## Future Improvements

- Add Overflow Flag
- Add Sign Flag
- Increase ALU Width to 16-bit and 32-bit
- Implement Multiplication and Division Operations
- Create SystemVerilog Verification Environment

---

## Author

Neelima Singamsetti

B.Tech – Electronics Engineering (VLSI Design and Technology)

SRK Institute of Technology

Andhra Pradesh, India
