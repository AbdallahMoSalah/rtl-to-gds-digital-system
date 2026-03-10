# RTL to GDS Digital System

This repository contains the implementation of a **configurable multi-clock digital system**, developed as the final project of the **Digital IC Design Diploma under the supervision of Eng. Ali El-Temsah**.

The project demonstrates the complete **ASIC design flow starting from RTL design up to GDS generation**.

---

# System Overview

The system receives commands through a **UART Receiver**, processes them internally using different functional blocks such as:

* Register File operations
* ALU processing

The processed data is then transmitted back using a **UART Transmitter**.

Since the system operates using **multiple clock domains**, an **Asynchronous FIFO** is used to safely transfer data between the domains and prevent data loss.

---

# System Architecture

Main system components:

* **UART RX** – receives serial commands
* **System Controller** – decodes commands and controls system operation
* **Register File** – stores system configuration and data
* **ALU** – performs arithmetic and logic operations
* **Asynchronous FIFO** – handles clock domain crossing
* **UART TX** – transmits processed data

Additional supporting modules:

* Clock Divider
* Clock Gating
* Reset Synchronizer
* Data Synchronizer
* Pulse Generator

---

# Implemented RTL Blocks

The RTL design includes the following modules:

* ALU
* Register File
* Asynchronous FIFO
* UART Receiver
* UART Transmitter
* Clock Divider
* Clock Gating
* Reset Synchronizer
* Data Synchronizer
* System Controller

All modules were implemented in **Verilog HDL** and verified using **self-checking testbenches**.

---

# ASIC Design Flow

The project follows a complete ASIC implementation flow:

1. RTL Design
2. Functional Verification
3. RTL Synthesis
4. Static Timing Analysis
5. Design For Test (DFT) insertion
6. Formal Verification
7. Physical Design
8. Clock Tree Synthesis
9. Placement
10. Routing
11. Signoff
12. GDS Generation
13. Post-Layout Verification

---

# Tools Used

* ModelSim / QuestaSim
* Synopsys Design Compiler
* Synopsys Formality
* ASIC Physical Design tools

---

# Repository Structure

```
repo
│
├── rtl
│   ├── ALU
│   ├── ASYC_FIFO
│   ├── UART_TOP
│   ├── SYS_CTRL
│   └── SYS_TOP.v
│
├── tb
│   ├── SYS_TOP_TB.v
│   └── ASYC_FIFO_TB.v
│
├── scripts
│   ├── run.do
│   └── wave.do
│
├── Synthesis
│
├── DFT
│
├── post-syn
│
├── post-dft
│
├── pnr
│
└── docs
```

---

# Simulation

To simulate the system using **ModelSim / QuestaSim**:

Compile:

```
vlog rtl/**/*.v
vlog tb/*.v
```

Run simulation:

```
vsim SYS_TOP_TB
run -all
```

---

# Key Design Concepts

This project demonstrates several important digital design concepts:

* Clock Domain Crossing (CDC)
* Asynchronous FIFO design
* Low Power techniques (Clock Gating)
* Static Timing Analysis
* Formal Verification
* Design For Test (DFT)
* Full ASIC implementation flow

---

# Author

Abdallah Mohamed Salah
Electronics Engineer
