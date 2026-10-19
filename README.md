# ⚡ LogicLab — Interactive Digital Logic Simulator

An interactive digital logic simulator that combines **Verilog HDL circuit design** with a responsive web-based interface. Explore seven fundamental logic gates, toggle binary inputs, observe live outputs, and understand truth tables.

## ✨ Features

- **Seven Logic Gates:** AND, OR, NOT, NAND, NOR, XOR, and XNOR.
- **Interactive Binary Switches:** Toggle inputs A and B between logic 0 and logic 1.
- **Live Output Visualization:** View gate outputs update instantly as inputs change.
- **Truth Table Explorer:** Display all four possible combinations of two binary inputs.
- **Output Indicators:** Identify HIGH and LOW logic states using visual indicators.
- **Verilog Testbench:** Verify gate outputs across all input combinations.
- **Waveform Simulation:** Inspect signal transitions using AMD Xilinx Vivado.
- **Responsive Interface:** Use the web interface on desktop or mobile browsers.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Verilog HDL | Digital logic circuit design |
| AMD Xilinx Vivado 2017.4 | RTL simulation and verification |
| HTML5 | Web interface structure |
| CSS3 | Responsive styling and visual design |
| JavaScript | Interactive switches and live Boolean logic |
| Git and GitHub | Version control and project hosting |

## 📁 Project Structure

```text
digital-logic-gate-simulator/
├── logic_gates.v
├── tb_logic_gates.v
├── index.html
└── README.md
```

- `logic_gates.v` — Verilog implementation of the seven logic gates.
- `tb_logic_gates.v` — Testbench for verifying the circuit outputs.
- `index.html` — Interactive browser-based logic simulator.
- `README.md` — Project documentation.

## 🚀 Getting Started

### 1. Run the Interactive Web Interface

No additional software installation is required to view the web interface.

1. Clone or download this repository.
2. Open the project folder.
3. Open `index.html` in your web browser.
4. Toggle switches A and B.
5. Observe the gate outputs and truth table update automatically.

### 2. Run the Verilog Simulation in Vivado

Requirements:
- AMD Xilinx Vivado 2017.4 or a compatible version.

Steps:

1. Open Vivado and create an RTL project.
2. Add `logic_gates.v` under Design Sources.
3. Add `tb_logic_gates.v` under Simulation Sources.
4. Set `tb_logic_gates` as the simulation top module.
5. Select **Run Simulation → Run Behavioral Simulation**.
6. Inspect the input and output waveforms.
7. Verify the testbench result in the Tcl Console.

Expected result:

```text
PASS: All gate checks passed.
```

The testbench checks seven outputs for each of four input combinations, giving 28 output checks.

## 📊 Truth Table

| A | B | AND | OR | NOT A | NAND | NOR | XOR | XNOR |
|---|---|---|---|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 1 | 1 | 1 | 0 | 1 |
| 0 | 1 | 0 | 1 | 1 | 1 | 0 | 1 | 0 |
| 1 | 0 | 0 | 1 | 0 | 1 | 0 | 1 | 0 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 | 1 |

## 📚 Concepts Demonstrated

- Boolean algebra and logic expressions
- Combinational digital circuits
- Verilog modules and continuous assignments
- Functional verification using a testbench
- Simulation waveform analysis
- Binary input combinations and truth tables
- Frontend development and interactive visualization

## 🔮 Future Improvements

- Add multiplexers, decoders, and encoders.
- Implement a 4-bit binary adder.
- Build a simple arithmetic logic unit (ALU).
- Add a drag-and-drop circuit builder.
- Connect the design to FPGA hardware switches and LEDs.

## 🌐 Live Demo

🚀 **[Click here to launch LogicLab](https://malavikaa18.github.io/digital-logic-gate-simulator/)**

Explore seven logic gates, toggle binary inputs, and view the truth table interactively.

## 👩‍💻 Author

**Malavika Pradeep**

Electronics and Communication Engineering Student

## 📄 License

This project is available for educational and learning purposes.
