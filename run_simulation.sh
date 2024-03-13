# Compile Verilog files
iverilog -o simulation.vvp xor.v xor_tb.v

# Run simulation
vvp simulation.vvp

# Generate VCD file
gtkwave -v simulation.vcd
