package Middleend.llvmir.ValueAndUser;

import Middleend.llvmir.ValueAndUser.Value;

public class Label extends Value {

    public Label(String _label) {
        super(null, _label);
    }

    @Override
    public String toString() {
        return get_name();
    }
}
