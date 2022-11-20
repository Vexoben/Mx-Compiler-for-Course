package Frontend.Tools;

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.TerminalNode;

public class Position {
    private int row, column;

    public Position(int _row, int _column) {
        row = _row; column = _column;
    }

    public Position(Token token) {
        row = token.getLine();
        column = token.getCharPositionInLine();
    }

    public Position(TerminalNode terminal) {
        this(terminal.getSymbol());
    }

    public Position(ParserRuleContext ctx) {
        this(ctx.getStart());
    }

    public int row() {
        return row;
    }

    public int column() {
        return column;
    }

    public String get_position() {
        return row + "," + column;
    }
}