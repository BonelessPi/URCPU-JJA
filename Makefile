TESTBENCH=or_gate_tb

all:
	iverilog -o $(TESTBENCH).vvp testbench/$(TESTBENCH).v
	vvp $(TESTBENCH).vvp $(TESTBENCH).vcd
	gtkwave $(TESTBENCH).vcd

clean:
	rm -f *.vcd *.vvp