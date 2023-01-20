package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.IRVisitor;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Type.PointerType;
import Middleend.llvmir.Type.StructType;
import Middleend.llvmir.Value;

import java.util.ArrayList;

public class GetElementPtrInst extends BaseInst{

    DerivedType get_element_type(Value pointer, ArrayList<Value> indexes) {
        int cnt = indexes.size();
        IRBaseType ret_type = pointer.get_type();
        for (int i = 0; i < cnt; ++i) {
            ret_type = ((PointerType) ret_type).get_pointed_type();
        }
        return (DerivedType) ret_type;
    }

    public GetElementPtrInst(Value pointer, ArrayList<Value> indexes, DerivedType type, BasicBlock _belong) {
        super(type, "get_element_ptr_inst", _belong);
        add_operand(pointer);
        pointer.add_user(this);
        indexes.forEach(i -> {
            add_operand(i);
            i.add_user(this);
        });
    }

    public GetElementPtrInst(Value pointer, ArrayList<Value> indexes, DerivedType type, String _name, BasicBlock _belong) {
        super(type, _name, _belong);
        add_operand(pointer);
        indexes.forEach(i -> {
            add_operand(i);
            i.add_user(this);
        });
    }

    // for asm
    public int get_prefix_size(int number) {
        int ret = 0;
        Value pointer = get_operand(0);
        StructType struct = (StructType) ((PointerType) pointer.get_type()).get_pointed_type();
        for (int i = 0; i < number; ++i) {
            ret += struct.get_type(i).size();
        }
        return ret;
    }

    @Override
    public String output() {
        Value pointer = get_operand(0);
        String ans = "getelementptr inbounds " + ((PointerType) pointer.get_type()).get_pointed_type().toString() + ", ";
        ans += pointer.get_type().toString() + " " + pointer.get_name();
        for (int i = 1; i < get_operands_size(); ++i) {
            ans += ", ";
            ans += get_operand(i).get_tyme();
        }
        return ans;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

}
