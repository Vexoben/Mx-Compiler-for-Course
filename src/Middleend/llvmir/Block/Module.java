package Middleend.llvmir.Block;

import Middleend.llvmir.Constant.Function;
import Middleend.llvmir.Constant.GlobalVariable;
import Middleend.llvmir.Constant.StringConst;
import Middleend.llvmir.Type.StructType;
import Middleend.llvmir.User;

import java.util.ArrayList;

public class Module extends User {
    ArrayList<GlobalVariable> variables;
    ArrayList<Function> functions;
    ArrayList<StringConst> stringConsts;
    ArrayList<StructType> structs;
}
