package Tools.Error;
import Tools.Position;

abstract public class BaseError extends RuntimeException {
    private Position pos;
    private String msg;

    public BaseError(Position _pos, String _msg) {
        pos = _pos;
        msg = _msg;
    }

    public String get_msg() {
        return msg + ": " + pos.get_position();
    }
}