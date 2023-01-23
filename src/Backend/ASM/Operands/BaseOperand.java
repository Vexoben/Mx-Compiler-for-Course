package Backend.ASM.Operands;

import java.util.HashMap;

public class BaseOperand {
    public String identifier;

    public BaseOperand(String _identifier) {
        if (this instanceof VirtualReg) {
            identifier = rename_identifier(_identifier);
        } else {
            identifier = _identifier;
        }
    }

    static HashMap<String, Integer> map = new HashMap<>();
    static String rename_identifier(String identifier) {
        if (map.get(identifier) == null) {
            map.put(identifier, 1);
            return identifier;
        } else {
            int cnt = map.get(identifier);
            map.put(identifier, ++cnt);
            return identifier + cnt;
        }
    }

    @Override
    public String toString() {
        return identifier;
    }
}
