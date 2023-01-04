package Middleend.llvmir.Type;

import Frontend.Tools.Error.IRError;
import Frontend.Tools.Position;
import Frontend.Tools.Registry.VarRegistry;
import Frontend.Tools.Type.BaseType;
import Frontend.Tools.Type.VarType;

import java.util.ArrayList;
import java.util.HashMap;

public class StructType extends DerivedType{

    String name;
    ArrayList<VarRegistry> vars = new ArrayList<>();
    ArrayList<DerivedType> types = new ArrayList<>();
    HashMap<String, Integer> var_index = new HashMap<>();

    public StructType(String _name) {
        name = _name;
        types = new ArrayList<>();
    }

    public StructType(String _name, ArrayList<VarRegistry> _vars, HashMap<String, StructType> class_table) {
        name = _name;
        vars = _vars;
        vars.forEach(i -> {
            var_index.put(i.name, vars.size());
            types.add(translate_vartype(i.var_type, class_table));
        });
    }

    public void add_var(VarRegistry var, HashMap<String, StructType> class_table) {
        var_index.put(var.name, vars.size());
        vars.add(var);
        types.add(translate_vartype(var.var_type, class_table));
    }

    public String get_name() {
        return name;
    }

    public DerivedType get_type(int index) {
        return types.get(index);
    }

    public int get_var_index(String var_name) {
        return var_index.get(var_name);
    }

    @Override
    public boolean match(IRBaseType type) {
        if (!(type instanceof StructType)) return false;
        if (!name.equals(((StructType) type).name)) return false;
        if (types.size() != ((StructType) type).types.size()) return false;
        int length = types.size();
        for (int i = 0; i < length; ++i) {
            if (!types.get(i).match(((StructType) type).types.get(i))) return false;
        }
        return true;
    }

    @Override
    public int size() {
        int tot_size = 0;
        for (int i = 0; i < types.size(); ++i) {
            tot_size += types.get(i).size();
        }
        return tot_size;
    }

    @Override
    public String toString() {
        return "%struct." + name;
    }

    public String declare() {
        String ans = "%struct." + name + " = type {";
        for (int i = 0; i < types.size(); ++i) {
            ans += ' ' + types.get(i).toString() + (i + 1 == types.size() ? ' ' : ',');
        }
        return ans + "}\n";
    }

    DerivedType translate_vartype(VarType type, HashMap<String, StructType> class_table) {
        DerivedType basetype = null;
        if (type.built_in_type == BaseType.BuiltinType.INT) basetype = new IntType();
        else if (type.built_in_type == BaseType.BuiltinType.BOOL) basetype = new BoolType();
        else if (type.built_in_type == BaseType.BuiltinType.STRING) basetype = new PointerType(new IntType(8));
        else if (type.built_in_type == BaseType.BuiltinType.CLASS) {
            basetype = new PointerType(class_table.get(type.typename));
//            basetype = class_table.get(type.typename);
        } else throw new IRError(new Position(0, 0), "struct_type.java;translate_vartype");
        DerivedType realtype = basetype;
        for (int k = 0; k < type.dimension; ++k) {
            realtype = new PointerType(realtype);
        }
        return realtype;
    }
}
