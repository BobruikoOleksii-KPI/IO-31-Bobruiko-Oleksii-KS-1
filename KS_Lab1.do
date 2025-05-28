vlib work
vcom KS_Lab1.vho

vsim work.KS_Lab1

add wave sim:/KS_Lab1/x1_ddnf
add wave sim:/KS_Lab1/x2_ddnf
add wave sim:/KS_Lab1/x3_ddnf
add wave sim:/KS_Lab1/f4_ddnf

add wave sim:/KS_Lab1/x1_dknf
add wave sim:/KS_Lab1/x2_dknf
add wave sim:/KS_Lab1/x3_dknf
add wave sim:/KS_Lab1/f4_dknf

force x3_dknf 0
force x2_dknf 0
force x1_dknf 0
force x3_ddnf 0
force x2_ddnf 0
force x1_ddnf 0
run 10ns

force x1_dknf 1
force x1_ddnf 1
run 10ns

force x2_dknf 1
force x1_dknf 0
force x2_ddnf 1
force x1_ddnf 0
run 10ns

force x1_dknf 1
force x1_ddnf 1
run 10ns

force x3_dknf 1
force x2_dknf 0
force x1_dknf 0
force x3_ddnf 1
force x2_ddnf 0
force x1_ddnf 0
run 10ns

force x1_dknf 1
force x1_ddnf 1
run 10ns

force x2_dknf 1
force x1_dknf 0
force x2_ddnf 1
force x1_ddnf 0
run 10ns

force x1_dknf 1
force x1_ddnf 1
run 10ns

run 20ns