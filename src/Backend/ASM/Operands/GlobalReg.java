package Backend.ASM.Operands;

public class GlobalReg extends Register{
    String context;

    public GlobalReg(String _identifier) {
        super(_identifier);
    }

    public GlobalReg(String _identifier, String ctx) {
        super(_identifier);
        context = ctx;
    }
}
