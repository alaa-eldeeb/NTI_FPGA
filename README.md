# NTI FPGA — Verilog Training Exercises

A collection of Verilog exercises developed during NTI FPGA training. The repository contains small RTL designs and simulation testbenches covering foundational digital-design concepts.

## Topics represented

- Gray-code conversion
- Seven-segment display logic
- Clock division
- Up/down counters
- Basic sequential logic and testbench practice

## Example exercises

| Design | Description |
|---|---|
| `gray2bin_gate.v` | Parameterized combinational Gray-to-binary conversion |
| `gray2hex.v` | Gray-code conversion exercise |
| `se7_seg.v` | Seven-segment display logic |
| `clk_div_v2.v` | Clock-divider exercise |
| `up_down_counter_low.v` | Up/down counter exercise |

Related `*_tb.v` files provide simulation testbenches for selected modules. Some exercises are organized in session folders.

## Working with the files

Open the Verilog source and corresponding testbench in a simulator such as ModelSim/QuestaSim or another Verilog simulator. Select the relevant testbench as the simulation top-level module, compile its dependencies, and inspect the waveform or console output.

The repository is a training collection rather than a single integrated FPGA project; individual exercises may require their own simulation setup.

## Tools

- Verilog HDL
- ModelSim / QuestaSim (training workflow)
- FPGA design concepts

---

*Learning notes and practical RTL exercises from NTI FPGA training.*
