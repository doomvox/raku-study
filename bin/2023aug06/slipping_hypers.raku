#!/usr/bin/env raku
# 
# slipping_hypers.raku            06 Aug 2023 

use v6;

## A problem Marton brings up, slipping out of a <<...>> cares about preceeding whitespace, but nothing else like it does.

{
    my @monsters = < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com

    my $something = | @monsters;

    dd $something;
    ## Slip $something = $(slip("ankou", "araxxor", "borrokar", "damis", "delrith", "elvarg", "kalrag", "yuri"))
}

{
    my $something = | < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com
    dd $something;
    ## Slip $something = $(slip("ankou", "araxxor", "borrokar", "damis", "delrith", "elvarg", "kalrag", "yuri"))
}

{
    my $something = | << ankou araxxor borrokar damis delrith elvarg kalrag yuri >>; ## www.runehq.com
    dd $something;
    ## Slip $something = $(slip("ankou", "araxxor", "borrokar", "damis", "delrith", "elvarg", "kalrag", "yuri"))
}


# {
#     my $something = |<< ankou araxxor borrokar damis delrith elvarg kalrag yuri >>; ## www.runehq.com
#     dd $something;

#     # ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023aug06/slipping_hypers.raku
#     # Preceding context expects a term, but found infix > instead.
# }


{
    my @monsters = < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com

    my $something = |@monsters;

    dd $something;
    ## Slip $something = $(slip("ankou", "araxxor", "borrokar", "damis", "delrith", "elvarg", "kalrag", "yuri"))
}


{
    my $something = |< ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com
    dd $something;
}

## Side effect of "hyper operator" interpretation?



{
## A *different error* when you've got interpolation going on:

    my $some_item = 'damis';
    my $something = |<< ankou araxxor borrokar $some_item delrith elvarg kalrag yuri >>; ## www.runehq.com
    dd $something;
# ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023aug06/slipping_hypers.raku
# Two terms in a row
# at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023aug06/slipping_hypers.raku:61
# ------>  = |<< ankou araxxor borrokar $some_item⏏ delrith elvarg kalrag yuri >>; ## www.r


}
