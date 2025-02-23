#!/usr/bin/env raku
# 
# iteration_to_end_all.raku            23 Feb 2025 

use v6;

{
    my $it = (1,2).iterator;
    $it.pull-one for ^2;
    say $it.pull-one =:= IterationEnd; # OUTPUT: «True␤»

    my $something = $it.pull-one // 'something';
    say $something;  #  IterationEnd

    $something = $it.pull-one || 'something';
    say $something;  #  IterationEnd
}

{
    say "".comb ~~ Empty;
    # OUTPUT: «True␤»
}

say "===";
{
    my $empty_thing = "".comb;
    say "empty_thing: $empty_thing";  # empty_thing: 
    say $empty_thing =:= Empty;  ## False
    say $empty_thing ~~ Empty;   ## True
    say $empty_thing.WHAT;       ## (Seq)
    my $something = $empty_thing // 'something';   ## Despite being empty, the empty thing is defined...
    say $something;  # ()
}
say "=== slip";
{
    my $empty_thing = "".Slip;
    say "empty_thing: $empty_thing";  # empty_thing: 
    say $empty_thing =:= Empty;  ## False
    say $empty_thing ~~ Empty;   ## True
    say $empty_thing.WHAT;       ## (Seq)
    my $something = $empty_thing // 'something';   ## Despite being empty, the empty thing is defined...
    say $something;  # ()
}
say "===";
{
    my $i = Nil;
    say $i;         # (Any)
    say $i =:= Nil; # False
    say $i ~~ Nil;  # False
}
