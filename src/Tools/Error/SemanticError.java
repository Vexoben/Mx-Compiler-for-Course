package Tools.Error;
import Tools.Position;

public class SemanticError extends BaseError {
    public SemanticError(Position _pos, String _msg) {
        super(_pos, "Semantic Error: " + _msg);
    }
}