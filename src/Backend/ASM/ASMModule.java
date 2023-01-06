package Backend.ASM;

import Backend.ASM.Operands.GlobalReg;

import java.util.ArrayList;

public class ASMModule {
    public ArrayList<ASMFunction> functions = new ArrayList<>();
    public ArrayList<GlobalReg> global_vars = new ArrayList<>();
    public ArrayList<GlobalReg> const_strings = new ArrayList<>();

    @Override
    public String toString() {
        return null;
    }
}
