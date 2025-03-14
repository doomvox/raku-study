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
    my $empty_thing = "".comb.Slip;
    say "empty_thing: $empty_thing";  # empty_thing: 
    say $empty_thing =:= Empty;  ## False
    say $empty_thing ~~ Empty;   ## True
    say $empty_thing.WHAT;       ## (Slip)
    my $something = $empty_thing // 'something';   ## Despite being empty, the empty thing is defined...
    say $something;  # 'something'
}
say "===";
{
    my $i = Nil;
    say $i;         # (Any)
    say $i =:= Nil; # False
    say $i ~~ Nil;  # False
}

## Marton issue with Nil and Failure:
##   https://github.com/Raku/problem-solving/issues/342

say "=== slip";
{
    my $empty_thing = "".comb.Slip;
    say "empty_thing: $empty_thing";  # empty_thing: 
    say $empty_thing =:= Empty;  ## False
    say $empty_thing ~~ Empty;   ## True
    say $empty_thing.WHAT;       ## (Slip)
    my $something = $empty_thing // 'something';   ## Despite being empty, the empty thing is defined...
    say $something;  # 'something'

    ## How about the triple equals?
    say $empty_thing === Empty;  ## False
}

## 
## //   defined or


## Bruce Gray examples:

# raku -e 'my @a; my @b = <X Y>; my @c = @a // @b; say @c;'
# []

# raku -e 'my @a; my @b = <X Y>; my @c = @a || @b; say @c;'
# [X Y]

# "Bool checks to false"

## Rob point:
##  Scalar.^parents: :all  # ((Any) (Mu))


## Marton objects to behivor of any @var, %var
##   concept of missing doesn't apply to them 

say "===";
{
    # Marton says this "will work": Empty slips act like a missing value
    my Slip:D $thingie = Empty;
    say $thingie;
    my $something = $thingie // 'hey';
    say $something;  # hey
 
    say $thingie =:= Empty;  # False   (because there's a container)
    say $thingie ~~ Empty;   # True

    # decontainerize with empty index lookup
    say $thingie[] =:= Empty;  # True

    say $thingie === Empty;    # True
}

# arrayish, smartmatch more or less a "structural comparison"

## I want a "smart empty match"


## https://github.com/rakudo/rakudo/blob/1505faae1651223e742e4359afc34f8fa5681745/src/core.c/Slip.rakumod#L6 this is actually very simple
