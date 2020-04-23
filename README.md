# FPGA-neural-networks
This repository showcases the ability to create threashold gates in Verilog, simulating NAND, OR, and XOR gates. There are no
logic gates used in the syntax itself, the gate outputs come from derived mathematical threshold functions.

Files labelled gateName.v are the threashold gate modules themselves.
Files labelled tb_gateName.v are test bench files for defining binary inputs and outputs (1's and 0's).

This study proves that scaling up the threashold gates to accept entire vectors from neural networks would allow
a chip to be built that contained an entire machine learning network, minus the backpropagation.
The network would be trained elsewhere, then downloaded to the chip.
