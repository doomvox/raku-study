#!/usr/bin/env raku
# 
# matching_against_booleans.raku            08 Jun 2025 

use v6;

my $b1 = True;
my $b2 = False;

if $b1 {
    say "Of course, true is true";  # Of course, true is true
}

if $b1 ~~ True {
    say "hm?";  # hm?
}
## warning:
##     Smartmatch against True always matches; if you mean to test the topic for truthiness, use :so or *.so or ?* instead

if $b1 ~~ False {
    say "Failure right?";  
} else {
    say "Yes, we fail reliably";   # Yes, we fail reliably
}

if $b1.so ~~ True {
    say "yah?"; # yah?
}

if $b1.so {
    say "is this at last okay?"; # is this at last okay?
}

say "===";

{
    my @check_results = ( True, False, False, True, Nil );
    say @check_results.grep( * ); 
    # (True False False True (Any))

    say @check_results.grep( * ~~ True ); 
    # (True False False True (Any))
    ##     Smartmatch against True always matches; if you mean to test the topic for truthiness, use :so or *.so or ?* instead

    my @check_results = ( True, False, False, True, Nil );
##     say @check_results.grep( *.so ~~ True ); 
##     ## Cannot use Bool as Matcher with '.grep'.  Did you mean to use $_ inside a block?
}


{
    say "===";
    my @results = ( 33, 23, 13, 12, 11 );
    say @results.grep( * );   # (33 23 13 12 11)

##    say @results.grep( *.Int ~~ 13 );   
##    ## Cannot use Bool as Matcher with '.grep'.  Did you mean to use $_ inside a block?

   say @results.grep( { $_.Int ~~ 13 } );   # (13)
}

{
    say "===";
    my @a = <1 2 3>;
    say @a.grep( 2 ~~ *.Int );  
    # Contrary to the docs (traps) we get the same error, the above *doesn't* work (it used to?)
    # Cannot use Bool as Matcher with '.grep'.  Did you mean to use $_ inside a block?

    # Marton's point is that the LH vs RH side issue isn't it.
    #          but sometimes that can matter, e.g. with types

    # older versions smartmatch didn't always return a boolean value?

    # smartmatch is not commutative (?)
}


