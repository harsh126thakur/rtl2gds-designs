# Used by any design that has no <top>.sdc of its own.
# The clock port must be called clk.
create_clock -name clk -period 2.0 [get_ports clk]
set_input_delay  0.1 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 0.1 -clock clk [all_outputs]
