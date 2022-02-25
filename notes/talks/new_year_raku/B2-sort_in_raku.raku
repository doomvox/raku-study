#!/usr/bin/env perl6
# 
# B2-sort_in_raku.raku            05 Jan 2022 

use v6;

my @monsters = < godzilla blob tingler garuda horta fenacrone wormface oogie-boogie kaido >;  # no more qw(), now it's <> 
my @orderly_monsters = sort {$^a cmp $^b}, @monsters;  ## two args and *definitely* need a comma, and note those hats: ^
say @orderly_monsters; ## no more need for a join 
# [blob fenacrone garuda godzilla horta kaido oogie-boogie tingler wormface]

my @orderly_monsters_too = @monsters.sort({$^a cmp $^b}); # method call form needs parens around block
say @orderly_monsters_too;

my @orderly_monsters_3 = @monsters.sort: {$^a cmp $^b} ;  # the colon short-cut, only for last call in chain
say @orderly_monsters_3;

# As with perl5 you can do things like this: 
my $comparator = {
    my $c = $^a cmp $^b;
    say "$c\t$a & $b";
    $c;
 };
my @orderly_monsters_4 = @monsters.sort( $comparator );
say @orderly_monsters_4;
# More	godzilla & blob
# More	tingler & garuda
# More	horta & fenacrone
# ...
# Less	godzilla & kaido
# Less	horta & kaido
# More	oogie-boogie & kaido
# [blob fenacrone garuda godzilla horta kaido oogie-boogie tingler wormface]

## unlike perl, with raku passing to $^a and $^b can work with a sub-call
say "---";
say $comparator("hey", "there");
# Less	hey & there
# Less



# ===
# Author:  doom@kzsu.stanford.edu

