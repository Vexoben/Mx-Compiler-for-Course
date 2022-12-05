package Middleend.llvmir.Constant;

import Frontend.Tools.Registry.FuncRegistry;
import Frontend.Tools.Registry.VarRegistry;
import Frontend.Tools.Type.FuncType;
import Frontend.Tools.Type.VarType;
import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.Inst.BaseInst;
import Middleend.llvmir.Type.IRFuncType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class Function extends GlobalValue{

    ArrayList<BasicBlock> blocks = new ArrayList<>();
    ArrayList<String> args_name = new ArrayList<>();

    public BasicBlock entry_block, exit_block;
    public Value ret_value_ptr;

    public Function(String _name, IRFuncType _type) {
        super(_name, _type);
        entry_block = new BasicBlock(_name + "entry", this);
        exit_block = new BasicBlock(_name + "exit", this);
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

    public ArrayList<String> get_args_name() {
        return args_name;
    }

    /* public void add_para(Value value) {
        para.add(value);
    } */


    // to printer

    String print_args() {
        IRFuncType func_type = (IRFuncType) type;
        String ans = "(";
        for (int i = 0; i < args_name.size(); ++i) {
            if (i > 0) ans += ", ";
            ans += func_type.get_args_types().get(i).toString() + " "  + "%" + args_name.get(i);
        }
        ans += ")";
        return ans;
    }

    String print_inst(BaseInst inst) {
        return "  %" + inst.get_name() + " = " + inst.toString() + "\n";
    }

    String print_block(BasicBlock block) {
        String ans = block.get_label().toString() + ":\n";
        for (BaseInst inst: block.get_inst()) {
            ans += print_inst(inst);
        }
        return ans;
    }

    public String declare() {
        IRFuncType func_type = (IRFuncType) type;
        String ans = "";
        ans += "define dso_local " + func_type.get_ret_type().toString() + " @" + name + print_args() + " #0 {\n";
        for (BasicBlock block : blocks) {
            ans += print_block(block);
        }
        ans += "}\n";
        return ans;
    }
}
