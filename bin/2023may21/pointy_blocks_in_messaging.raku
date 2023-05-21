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

    $code.("hey"); # hey

}
{
    my $code = -> { .say };
    say $code;
    ## ->  { #`(Block|4213498768920) ... }

    # $code.("hey"); # hey
    # # Too many positionals passed; expected 0 arguments but got 1

    $_ = 'ho';
    $code.(); # ho
}

{
    sub a( $a is raw ) {...}
}
{
    sub a( $a is copy ) {...}    
}
{
    sub a( $a ) {...}    
}
{
    sub a( $a is rw ) {...}    
}   
}
