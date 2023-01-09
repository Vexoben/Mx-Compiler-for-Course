package Middleend.llvmir;

import Middleend.llvmir.Inst.*;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Type.IRFuncType;
import Middleend.llvmir.Type.VoidType;

import java.util.ArrayList;

public class IRFunction extends User {

    ArrayList<BasicBlock> blocks = new ArrayList<>();
    ArrayList<String> args_name = new ArrayList<>();

    public BasicBlock entry_block, exit_block;

    public boolean is_member_function, is_constructor;
    public AllocaInst this_alloca;


    public IRFunction(String _name, IRFuncType _type) {
        super(_type, _name);
        entry_block = new BasicBlock(_name + "entry", this);
        exit_block = new BasicBlock(_name + "exit", this);
        blocks.remove(blocks.size() - 1);
        entry_block.link(exit_block);
    }

    public void add_block(BasicBlock block) {
        blocks.add(block);
    }

    public ArrayList<BasicBlock> get_blocks() {
        return blocks;
    }

    public void add_args_name(String arg_name) {
        args_name.add(arg_name);
    }

    public IRBaseType get_ret_type() {
        return ((IRFuncType) type).get_ret_type();
    }

    public ArrayList<DerivedType> get_args_types() {
        return ((IRFuncType) type).get_args_types();
    }

    public ArrayList<String> get_args_name() {
        return args_name;
    }

    // to printer
    String print_args() {
        String ans = "(";
        for (int i = 0; i < args_name.size(); ++i) {
            if (i > 0) ans += ", ";
            ans += get_args_types().get(i).toString() + " "  + args_name.get(i);
        }
        ans += ")";
        return ans;
    }

    String print_inst(BaseInst inst) {
        if (inst instanceof StoreInst ||
                (inst instanceof FuncCallInst && ((FuncCallInst)inst).get_func().get_ret_type().match(new VoidType())) ||
                (inst instanceof BrInst) || (inst instanceof RetInst)) {
            return "  " + inst.output() + "\n";
        } else return "  " + inst.get_name() + " = " + inst.output() + "\n";
    }

    String print_block(BasicBlock block) {
        if (block.get_inst().size() == 0) return "";
        String ans = block.get_label().toString() + ":\n";
        for (BaseInst inst: block.get_inst()) {
            ans += print_inst(inst);
        }
        return ans;
    }

    public String declare() {
        String ans = "";
        ans += "define dso_local " + get_ret_type().toString() + " " + name + print_args() + " #0 {\n";
        for (BasicBlock block : blocks) {
            ans += print_block(block);
        }
        ans += "}\n";
        return ans;
    }
}
