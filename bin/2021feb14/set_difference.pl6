#!/usr/bin/env perl6
# 
# set_difference.pl6            15 Feb 2021 

## Playing with minor syntax variations in set differences,
## making sure they all work as I expect

use v6;
use Test;

say "--0--";

my @all = < godzilla blob grendel wormface mothera ghidora gammera golem rhodan >;
my @japanese = < godzilla mothera ghidora gammera rhodan >;
my @expected = < blob grendel wormface golem >.sort;
my $expected_set = set @expected;

{ 
    my $s_all = set @all;
    say $s_all;  # Set(blob gammera ghidora godzilla golem grendel mothera rhodan wormface)
    my $s_j = set @japanese;
    say $s_j;    # Set(gammera ghidora godzilla mothera rhodan)
    my $diff = $s_all (-) $s_j;
    say $diff;   # Set(blob golem grendel wormface)
    is-deeply( $diff, $expected_set,
               "Testing set difference; convert arrays via function first." );
    # ok 1 - Testing set difference; convert arrays via function first.

    # This is an array of pairs, not what I want
    # my @diff = $diff.Array;  # $[:grendel, :wormface, :golem, :blob]
    # Array, sorted to have a defined order for is-deeply comparison
    my @diff = $diff.keys.sort;  
    is-deeply( @diff, @expected, 
               "Testing set difference; convert arrays via function first, convert to array after." );
    # ok 2 - Testing set difference; convert arrays via function first, convert to array after.
}

{
    # This one fails, apparently the first "set" acts on everything to the right
    my $result = set @all  (-) set @japanese ;
#    say $result;       #  Set(Set(blob golem grendel wormface))
#    say $result.WHAT;  # (Set)
}

{
    my $result = set(@all) (-) set(@japanese) ;
#    say $result;       # Set(blob golem grendel wormface)
    is-deeply( $result, $expected_set,
               "Testing set difference: array to set via function *with parens after* on same line");
    # ok 3 - Testing set difference: array to set via function *with parens* on same line
}

{
    my $result = @all.Set (-) @japanese.Set;
    # say $result;
    is-deeply( $result, $expected_set,
               "Testing set difference: explicit array to set via method call on same line");
    # ok 4 - Testing set difference: explicit array to set via method call on same line
}

 {
     my $result = (set @all)  (-)  (set @japanese);
     # say $result; # Set(blob golem grendel wormface)
     is-deeply( $result, $expected_set,
               "Testing set difference: array to set via function with parens around, all on same line");
     # ok 5 - Testing set difference: array to set via function with parens around, all on same line

 }

{
    # simplest method works, (-) operator does implicit conversion to sets
    my $result = @all (-) @japanese;
    # say $result; # Set(blob golem grendel wormface)
    is-deeply( $result, $expected_set,
               "Testing set difference: implicit conversion of array to set by set operator");
    # ok 6 - Testing set difference: implicit conversion of array to set by set operator

}



{
    my $result = @all.Bag (-) @japanese.Bag;
    say $result; # Bag(blob golem grendel wormface)
    my $expected_bag = $expected_set.Bag;
    is-deeply( $result, $expected_bag,
               "Testing set difference on bags");

}
