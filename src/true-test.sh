llc test.ll -o true.s -march=riscv32 -mattr=+m
llc built_in.ll -o built_in.s -march=riscv32 -mattr=+m
ravel --input-file=test.in --output-file=test.out test.s built_in.s
