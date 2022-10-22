package Tools.Error;
import Tools.Position;

public class RedefineError extends BaseError {
    public RedefineError(Position _pos, String _msg) {
        super(_pos, "Semantic Error: " + _msg);
    }
}