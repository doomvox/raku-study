#!/usr/bin/env perl6
# 
# array_access_basics.pl6            22 Nov 2020 


use v6;

my @monsters = < godzilla mothera blob tingler garuda >;

## perl5 style indexing from the end with a negative number is gone:
# say @monsters[-1];
# ===SORRY!=== Error while compiling
# Unsupported use of a negative -1 subscript to index from the end; in Raku please use a function such as *-1

## The indicated *-1 from works with raku:
say @monsters[*-1];
# garuda

## Here the * is like an .elems call:
my $count = @monsters.elems;
say "elems: ", $count; # elems: 5
say "---";
# so these three forms are equivalent:
say @monsters[*-3];
# blob
say @monsters[$count-3];
# blob
my $i = $count-3;
say "i: $i"; # i: 2
say @monsters[2];
# blob
say "---";
# This then steps backwards through the array:
for (1 .. $count) -> $i {
    say "-" x $i;
    say @monsters[*-$i];
}
# -
# garuda
# --
# tingler
# ---
# blob
# ----
# mothera
# -----
# godzilla

say "===";
while ( @monsters ) { # Bill: a place where implicit .elems is useful (I think)
    say @monsters.pop;
}
# garuda
# tingler
# blob
# mothera
# godzilla

@monsters = < godzilla mothera blob tingler garuda >;

say "===";
# Note you can do the while loop like so:
say @monsters.pop while @monsters;
# (Just to remind you Larry Wall is in charge.)

say "===WMNMNMW===>";
## the abcs of arrays...
# 
# Goal: print ABC:

# ~$ raku -e 'my @a = "A".."E"; say @a[*-3]'
# C 
# ~$ raku -e 'my @a = "A".."E"; say @a .. @a[*-3]'
# 5.."C" 
# ~$ raku -e 'my @a = "A".."E"; say @a[] .. @a[*-3]'
# 5.."C" 

my @a = "A".."E";

say @a[ 0 .. *-3 ];  # (A B C)

say @a[ 0 .. 2 ];    # (A B C)

say @a.head(3);     # (A B C)

say @a.head(3).tail(2);     # (B C)
say @a.head(3).skip(1);     # (B C)

say "===";
