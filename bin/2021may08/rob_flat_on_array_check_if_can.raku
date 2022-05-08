#!/usr/bin/env perl6
# 
# rob_flat_on_array_check_if_can.raku            08 May 2022 

use v6;

{
    my @dyad = <a b>, <c d>;
    say @dyad.can('flat');
    # (flat flat flat)    ## ?
}

{
    my @dyad = <a b>, <c d>; # [(a b) (c d)]
    @dyad = @dyad.flat[*;*];
    say @dyad;
    # [a b c d]
}

{
    my @dyad = <a b>, <c d>; # [(a b) (c d)]
    @dyad = @dyad.[*;*];
    say @dyad;
    # [a b c d]
}

{
    say "===";
    my @dyad = <a b>, <c d>; # [(a b) (c d)]
    @dyad = @dyad».List.flat; # OUTPUT: «(1 2 3 4 5 6 7)␤» 
    say @dyad;
    # [a b c d]
}

{
    say "===";
    my @dyad = <a b>, <c d>;
    # [(a b) (c d)]
    @dyad = @dyad.flat;
    say @dyad;
    # [(a b) (c d)]

}
{
    my @dyad = <a b>, <c d>;
#    @dyad .= flat[*;*];
    # Unable to parse expression in bracketed infix; couldn't find final ']' (corresponding starter was at line 12)
}

{
    my @dyad = <a b>, <c d>;
#    @dyad.=[*;*];  # Cannot use .= on a non-identifier method call
    say @dyad; # [(a b) (c d)]
}

{
    my @dyad = <a b>, <c d>;
    @dyad.=flat; 
    say @dyad;  # [(a b) (c d)]
}



## many side issues:
## why doesn't "flat" method work with ".="?

