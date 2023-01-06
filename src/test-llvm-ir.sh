llvm-link test.ll built_in.ll -o link.bc
llvm-dis link.bc
# clang -S -fobjc-arc link.bc -o link.s -march=riscv32
clang++ link.bc -o test
./test