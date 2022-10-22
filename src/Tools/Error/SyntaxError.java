package Tools.Error;
import Tools.Position;

public class SyntaxError extends BaseError {
    public SyntaxError(Position _pos, String _msg) {
        super(_pos, "SyntaxError: " + _msg);
    }
}