# export PATH="/usr/local/opt/bin:$PATH"
llc test.ll -o true.s -march=riscv32 -mattr=+m -O0
llc built_in.ll -o built_in.s -march=riscv32 -mattr=+m -O0
ravel --input-file=test.in --output-file=test.out test.s built_in.s