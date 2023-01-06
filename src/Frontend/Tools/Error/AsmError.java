package Frontend.Tools.Error;
import Frontend.Tools.Position;

public class AsmError extends BaseError {
    public AsmError(String _msg) {
        super(new Position(0, 0), "IRError: " + _msg);
    }
}