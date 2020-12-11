#!/usr/bin/env perl6
# 
# hashes_vs_arrays.pl6            06 Dec 2020 


use v6;

## commafication conundrum

my @nothing  = < nada nope bupkes >;
my @monsters = < godzilla mothera ghidora gammera golem rhodan >;

{
    my @new = @nothing, @monsters;
    say @new;
    # [[nada nope bupkes] [godzilla mothera ghidora gammera golem rhodan]]

    say @new[0]; # [nada nope bupkes]

    use Test;
    is-deeply( @nothing, @new[0], "nothingness has been preserved" );
    # ok 1 - nothingness has been preserved
}

{
    my @new = | @nothing, | @monsters;
    say @new;  # [nada nope bupkes godzilla mothera ghidora gammera golem rhodan]
    say @new[0]; # nada
}


{
    my %a = 'a' => 1, 'b' => 2, 'c' => 3;
    my %b = 'alpha' => 1, 'beta' => 2, 'gamma' => 3;
    my %new = 'a' => %a, 'b' => %b;
    say %new;
    # {a => {a => 1, b => 2, c => 3}, b => {alpha => 1, beta => 2, gamma => 3}}
}

{   ## double-checking that adding parens for readability is okay:
    my %a = ( 'a' => 1, 'b' => 2, 'c' => 3 );
    my %b = ( 'alpha' => 1, 'beta' => 2, 'gamma' => 3 );
    my %new = ( 'a' => %a, 'b' => %b );
    my $expected = {a => {a => 1, b => 2, c => 3}, b => {alpha => 1, beta => 2, gamma => 3}};
    say %new;
    # {a => {a => 1, b => 2, c => 3}, b => {alpha => 1, beta => 2, gamma => 3}}
    use Test;
    is-deeply( %new, $expected, "Testing whether adding parens changes behavior in hash definitions" );
    # ok 2 - Testing whether adding parens changes behavior in hash definitions
    ## so you can use parens around your pairs with impunity

    my %expected = {a => {a => 1, b => 2, c => 3}, b => {alpha => 1, beta => 2, gamma => 3}};
    is-deeply( %new, %expected, "Testing whether %hash and \$hash are different" );
    ## this is a case where raku doesn't care so much about % and $ (that still seems funny)
}


{
    ## a useful way to create a hash of hashes keyed by the names of original component hashes
    my %latin = 'a' => 1, 'b' => 2, 'c' => 3;
    my %greek = 'alpha' => 1, 'beta' => 2, 'gamma' => 3;
    my %new = :%latin, :%greek; 
    say %new;
    # {greek => {alpha => 1, beta => 2, gamma => 3}, latin => {a => 1, b => 2, c => 3}}
}

{ # bruce gray argues commas behave consistently for hashes/arrays (in some ways)
    my %latin = 'a' => 1, 'b' => 2, 'c' => 3;
    my %greek = 'alpha' => 1, 'beta' => 2, 'gamma' => 3;

    my %new = :%latin, :%greek; 
    say %new;
    # {greek => {alpha => 1, beta => 2, gamma => 3}, latin => {a => 1, b => 2, c => 3}}

    my %h1 = a=>1, b=>2;
    my %h2 = x=>3, y=>4;
    my %j = %h1, %h2;
    .say for %j;
      # x => 3
      # b => 2
      # y => 4
      # a => 1

    ## when assigning to an array, two hashes stay seperate:
    my @k = %h1, %h2;
    say @k; # [{a => 1, b => 2} {x => 3, y => 4}]
    say @k[0]; # {a => 1, b => 2}
    say @k[1]; # {x => 3, y => 4}

    .say for @k;
      # {a => 1, b => 2}
      # {x => 3, y => 4}
    .say for %h1, %h2;
      # {a => 1, b => 2}
      # {x => 3, y => 4}
    my $l = (%h1, %h2);
    .say for $l.list;
      # {a => 1, b => 2}
      # {x => 3, y => 4}
}
