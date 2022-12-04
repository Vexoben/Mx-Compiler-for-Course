package Frontend.Tools.Error;
import Frontend.Tools.Position;

public class IRError extends BaseError {
    public IRError(Position _pos, String _msg) {
        super(_pos, "IRError: " + _msg);
    }
}