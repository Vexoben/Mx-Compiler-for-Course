package Middleend.llvmir.Type;

import java.util.ArrayList;

public class StructType extends DerivedType{

    String name;
    ArrayList<DerivedType> types;

    public StructType(String _name, ArrayList<DerivedType> _types) {
        name = _name;
        types = _types;
    }

    @Override
    public boolean match(BaseType type) {
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
        return null;
    }
}
