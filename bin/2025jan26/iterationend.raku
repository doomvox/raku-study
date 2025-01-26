#!/usr/bin/env raku
# 
# iterationend.raku            25 Jan 2025 

use v6;

{
    # Q: can I create an IterationEnd intentionally?
    my $a = IterationEnd.new;
    say $a; # Mu.new
    dd $a;  # Mu $a = Mu.new

    ## Things like this make one nostalgic for the days of perl's 'undef'
}

{
    # Q: can I create an IterationEnd intentionally?
    my $a = IterationEnd;
    say $a; # IterationEnd
    dd $a;  # Mu $a = IterationEnd
    # A: so IterationEnd is a constant?  

    # How to identify one?    
#     if ($a ~~ IterationEnd) {
#         say "smart match found it";
#     }
## Died with X::Multi::NoMatch

    if ( slip $a  =:= IterationEnd) {
        say "slipping value out, checking object identity"; ## Okay
    }

    if (IterationEnd =:= IterationEnd) {
        say "reflexive oid check";        ## Yup matches itself
    }

    if ($a.raku eq 'IterationEnd') {
        say ".raku string match found it";  # WORKS
    }

  ## Q: what value would be saner than an IterationEnd?  Nil?

    if ( not( IterationEnd ) ) {
        say "IterationEnd evaluates as False"; # no, it doesn't
    }

}



