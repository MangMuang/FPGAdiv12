add wave -position insertpoint  \
sim:/divider12/clk12M
add wave -position insertpoint  \
sim:/divider12/clk3M
add wave -position insertpoint -radix unsigned  \
sim:/divider12/qs3M
add wave -position insertpoint  \
sim:/divider12/clk1M
add wave -position insertpoint -radix unsigned  \
sim:/divider12/qs1M
add wave -position insertpoint  \
sim:/divider12/clk750k
add wave -position insertpoint -radix unsigned  \
sim:/divider12/qs750K
add wave -position insertpoint  \
sim:/divider12/clk500k
add wave -position insertpoint -radix unsigned  \
sim:/divider12/qs500K
add wave -position insertpoint  \
sim:/divider12/clk200k
add wave -position insertpoint -radix unsigned  \
sim:/divider12/qs200K
add wave -position insertpoint  \
sim:/divider12/clk100
add wave -position insertpoint -radix unsigned  \
sim:/divider12/qs100
add wave -position insertpoint  \
sim:/divider12/clk1
add wave -position insertpoint -radix unsigned  \
sim:/divider12/qs1
force -freeze sim:/divider12/clk12M 1 0, 0 {41650ps} -r {83.3ns}
run 1700ns