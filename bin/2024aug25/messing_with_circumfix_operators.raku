#!/usr/bin/env raku
# 
# messing_with_circumfix_operators.raku            25 Aug 2024 

use v6;

{
    sub circumfix:<START END>(*@elems) {
        "start", @elems, "end"
    }
    
    say START 'a', 'b', 'c' END;        # (start [a b c] end)
}

# {
#         say START 'a', 'b', 'c' END;        # (start [a b c] end)
#         ## Two terms in a row
# }


{
    sub START {
        say "let us begin!"
    }
    START;  # let us begin!

    sub circumfix:<START END>(*@elems) {
        "start", @elems, "end"
    }
    
    say START 'a', 'b', 'c' END;        # (start [a b c] end)
}