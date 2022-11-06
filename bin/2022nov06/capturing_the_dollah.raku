#!/usr/bin/env perl6
# 
# capturing_the_dollah.raku            06 Nov 2022 

use v6;


my $r;
for 0..10 {
    say "loop index: ", $_;
    say "the dollah: ", ($r = \$)++;

    munge_things( $r );   
    }


sub munge_things ( $r is rw ) {
    $r = 23;  
}

# Potential difficulties:
#     To pass an array, hash or sub to a function in Raku, just pass it as is.
#     For other uses of Perl's ref operator consider binding with ::= instead.
#     Parenthesize as \(...) if you intended a capture of a single variable.
#     at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022nov06/capturing_the_dollah.raku:11
#     ------>     say "the dollah: ", ($r = \⏏$)++;
# loop index: 0
# No such method 'succ' for invocant of type 'Capture'.  Did you mean
# 'sum'?
#   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022nov06/capturing_the_dollah.raku line 11
