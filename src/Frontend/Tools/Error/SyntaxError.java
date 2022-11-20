package Frontend.Tools.Error;
import Frontend.Tools.Position;

public class SyntaxError extends BaseError {
    public SyntaxError(Position _pos, String _msg) {
        super(_pos, "SyntaxError: " + _msg);
    }
}