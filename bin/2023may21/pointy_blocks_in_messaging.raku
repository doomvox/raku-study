#!/usr/bin/env raku
# 
# pointy_blocks_in_messaging.raku            21 May 2023 

use v6;

{
    my $code = { .say };
    say $code;
    ## -> ;; $_? is raw = OUTER::<$_> { #`(Block|5619496970288) ... }

    ## hm, double semi-colons?
    # https://stackoverflow.com/questions/75710748/why-use-double-semicolon-in-raku-function-signature

}
{
    my $code = -> { .say};
    say $code;
    ## ->  { #`(Block|4213498768920) ... }

}

