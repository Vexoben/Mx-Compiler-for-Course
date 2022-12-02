package Middleend.llvmir.Block;

import Middleend.llvmir.Constant.Function;
import Middleend.llvmir.Constant.GlobalVariable;
import Middleend.llvmir.Constant.StringConst;
import Middleend.llvmir.Type.StructType;
import Middleend.llvmir.Type.VoidType;
import Middleend.llvmir.User;

import java.util.ArrayList;

public class Module extends User {
    ArrayList<GlobalVariable> variables = new ArrayList<>();
    ArrayList<Function> functions = new ArrayList<>();
    ArrayList<StringConst> stringConsts = new ArrayList<>();
    ArrayList<StructType> structs = new ArrayList<>();

    public Module() {
        super(new VoidType(), "Module");
    }
}
