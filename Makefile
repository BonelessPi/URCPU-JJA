TESTBENCH=testbench_or

all:
	iverilog -o $(TESTBENCH).vvp $(TESTBENCH).v
	vvp $(TESTBENCH).vvp $(TESTBENCH).vcd
	gtkwave $(TESTBENCH).vcd

clean:
	rm -f *.vcd *.vvp