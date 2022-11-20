package Frontend.Tools.Error;
import Frontend.Tools.Position;

public class InternalError extends BaseError {
    public InternalError(Position _pos, String _msg) {
        super(_pos, "Semantic Error: " + _msg);
    }
}