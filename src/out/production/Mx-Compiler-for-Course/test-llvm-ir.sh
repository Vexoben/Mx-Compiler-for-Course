llvm-link test.ll built_in.ll -o link.bc
llvm-dis link.bc
clang++ link.bc -o test
./test