#!/usr/bin/env perl6
# 
# sets_etc-vot_lizmat_2020.pl6            14 Feb 2021 

## QuantHash? 
# Set
# Bag
# Mix
# SetHash
# BagHash
# MixHash

use v6;

{
say '--0--';
my $s = set 2, 4, 6;

say $s;      # Set(2 4 6)

say $s{2};   # True
say $s{'2'}; # False

say $s.values; # (True True True)    better than 1 1 1
say $s.keys;   # (2 4 6)

my $b = bag < a b c a a b >;
say $b; # Bag(a(3) b(2) c)
say "Bag values: ", $b.values;  # (2 3 1)
## a Bag is much like a Mix, except the values are integers

say '--1--';
$b does Introspector;
.say for $b.menu.split("\n").grep({/Bag/});
# say $b.menu.grep({/<<Set>>/});

my $m = mix < a b c a a b >;
say $m;
say $m<a>;
say $m<a>.WHAT;  # (Int)
say $m.values;

## Can't assign a value to a Mix, it's immutable.  Would need a MixHash:
## $m<c>=2.5; # Cannot modify an immutable Int (1)

{
    # Q: what *exactly* are the keys of a Mix? A: *any* numeric type
    my $mh = (
        a => 2,
        b => 3.51,
        c => pi
    ).MixHash;

    say $mh;  # MixHash(a(2) b(3.51) c(3.141592653589793))

    say $mh<c>;        # 3.141592653589793
    say $mh<c>.WHAT;   # (Num)

    say $mh<a>;  # 2
    say $mh<a>.WHAT;   # (Int)

    say $mh<b>;        #  3.51
    say $mh<b>.WHAT;   # (Rat)
}


{
    say "==X==";
    ## Doing a weighted random draw using a Mix: the method name
    ## is "roll" (there's no pick?).
    my $new_mix = ( godilla => 2.5,
                    mothera => 1.5,
                    blob    => 1,
                    gammera => 0.5 ).Mix;

    say $new_mix;
#    say $new_mix.pick;
# Mix(blob gammera(0.5) godilla(2.5) mothera(1.5))
# .pick is not supported on a Mix, maybe use .roll instead?
#   in block <unit> at /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021feb14/sets_etc-vot_lizmat_2020.pl6 line 157

    say $new_mix.roll;  # mothera
    say $new_mix.roll;  # mothera
    say $new_mix.roll;  # gammera
    say $new_mix.roll;  # mothera

#    my @rolls;
    for ^1000 {
        say $new_mix.roll;
    }
}
