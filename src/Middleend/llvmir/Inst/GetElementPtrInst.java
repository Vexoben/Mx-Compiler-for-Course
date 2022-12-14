package Middleend.llvmir.Inst;

import Middleend.llvmir.BasicBlock;
import Middleend.llvmir.IRVisitor;
import Middleend.llvmir.Type.ArrayType;
import Middleend.llvmir.Type.DerivedType;
import Middleend.llvmir.Type.IRBaseType;
import Middleend.llvmir.Type.PointerType;
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
        ((PointerType) pointer.get_type()).get_pointed_type();
        indexes.forEach(i -> add_operand(i));
    }

    public GetElementPtrInst(Value pointer, ArrayList<Value> indexes, DerivedType type, String _name, BasicBlock _belong) {
        super(type, _name, _belong);
        add_operand(pointer);
        ((PointerType) pointer.get_type()).get_pointed_type();
        indexes.forEach(i -> add_operand(i));
    }


    @Override
    public String output() {
        Value pointer = get_operand(0);
        String ans = "getelementptr inbounds " + ((PointerType) pointer.get_type()).get_pointed_type().toString() + ", ";
        ans += ((PointerType) pointer.get_type()).toString() + " " + pointer.get_name();
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
