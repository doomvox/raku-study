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

## bruce gray:
# raku -e 'my $a = {.say}; my $b = -> { .say }; say .arity for $a,$b; $a.(5); $b.(6);'
# 0
# 0
# 5
# Too many positionals passed; expected 0 arguments but got 1
#   in block <unit> at -e line 1
# So, arity of $a is 1, but is reported as 0. Bug, IMHO.

say "===";

{
    sub a( $a is raw ) { say $a }
    a(1);
}
{
    sub a( $a is copy ) { say $a }    
    a(2);
}
{
    sub a( $a ) { say $a }    
    a(3);
}
{
#    sub a( $a is rw ) { say $a }    
#    a(4);

# Parameter '$a' expects a writable container (variable) as an argument,
# but got '4' (Int) as a value without a container.

}   

{
    my $n = 5;
    sub a( $a is rw ) { say $a }    
    a($n); # 5

}
