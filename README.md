DECODER:
Description of the Circuit Implemented:
    The decoder is a combinational logic circuit that takes a 20-bit input and generates an output vector. Each output bit corresponds to a unique combination of the input bits. The code uses bitwise left shift (<<) to set the appropriate bit in the output vector based on the input value.

Description of the Testing Strategy:
    The testbench provided verifies the functionality of the decoder by applying different input values and observing the corresponding output bits. The testbench displays the input value along with the output vector, allowing for verification of the decoder's correctness based on the expected output for each input value.

Personal Observations:
    During testing, I initially encountered issues with incorrect output values and extre. After reviewing the  code, I realized that the select signal was not being properly initialized in some test cases. Through decoding, I was able to resolve the issue and obtain correct simulation results.

ADDER:
Description of the Circuit Implemented:
    The adder module implements a 20-bit adder with carry input and output. It adds two 20-bit input numbers (a and b) along with a carry-in signal and produces a 20-bit sum output (sum) along with a carry-out signal.

Description of the Testing Strategy:
    The testing strategy involves testing various input combinations to validate the correct addition operation, including testing both carry-in and carry-out scenarios.

Personal Observations:
    With this module, I struggled with gettin gthe carry-in and carry-out signals to work properly. To get this to output the correct numbers, I brainstormed on paper and ended up using a temporary value to store the result before assigning it to the actual output.

SHIFTLEFT:
Description of the Circuit Implemented:
    The shiftleft module is implemented to perform a left shift operation on a 20-bit input data (data_in) based on a 5-bit shift amount (shift_amount). The result of the shift operation is stored in the output (data_out) register.

Description of the Testing Strategy:
    The testing strategy involves verifying the correctness of the left shift operation performed by the shiftleft module. This includes testing different shift amounts and input data values to ensure that the output is shifted left by the specified number of positions.

Personal Observations:
    While developing the testbench for the shiftleft module, I encountered challenges in getting the output in the right format. I kept getting x's where my output was supposed to be because I wasn't waiting for 10 time units by doing #10.

AND:
Description of the Circuit Implemented:
    The and module is implemented to perform a bitwise AND operation between two 20-bit input vectors (a and b). The result of the AND operation is stored in the output register (y).

Description of the Testing Strategy:
    The testing strategy involves verifying the correctness of the AND operation performed by the and_gate module. This includes testing different input combinations to ensure that the output reflects the AND result between corresponding bits of a and b.

Personal Observations:
    During the development of the testbench for the and_gate module, I encountered challenges in getting the expected results without using an unsupported for loop. I was able to overcome this challenge and obtain reliable simulation results by performing the bitwise AND operation bit by bit.# URCPU-JJA
