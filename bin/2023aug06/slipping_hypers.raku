#!/usr/bin/env raku
# 
# slipping_hypers.raku            06 Aug 2023 

use v6;


{
    my @monsters = < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com

    my $something = | @monsters;

    dd $something;
    ## Slip $something = $(slip("ankou", "araxxor", "borrokar", "damis", "delrith", "elvarg", "kalrag", "yuri"))
}

{
    my @something = | < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com
    dd $something;
    ## Slip $something = $(slip("ankou", "araxxor", "borrokar", "damis", "delrith", "elvarg", "kalrag", "yuri"))
}
