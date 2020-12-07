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

#     use Test;
#     is-deeply( @nothing, @new[0], "nothingness has been preserved" );
#     # ok 1 - nothingness has been preserved
}


{
    my %a = 'a' => 1, 'b' => 2, 'c' => 3;
    my %b = 'alpha' => 1, 'beta' => 2, 'gamma' => 3;
    my %new = 'a' => %a, 'b' => %b;
    say %new;
    # {a => {a => 1, b => 2, c => 3}, b => {alpha => 1, beta => 2, gamma => 3}}
}

{
    ## a useful way to create a hash of hashes keyed by the names of original component hashes
    my %a = 'a' => 1, 'b' => 2, 'c' => 3;
    my %b = 'alpha' => 1, 'beta' => 2, 'gamma' => 3;
    my %new = :%a, :%b; 
    say %new;
}

{ # bruce gray argues commas behave consistently for hashes/arrays
    my %a = 'a' => 1, 'b' => 2, 'c' => 3;
    my %b = 'alpha' => 1, 'beta' => 2, 'gamma' => 3;

    my %new = :%a, :%b; 
    # say [:$a, :$funky].raku; 

    my %h1 = a=>1, b=>2;
    my %h2 = x=>3, y=>4;
    my %j = %h1, %h2;
    .say for %j;

    ## after "commafying" two hashes stay two seperate hashes when assigned to an array
    my @k = %h1, %h2;
    say @k; # [{a => 1, b => 2} {x => 3, y => 4}]
    say @k[0]; # {a => 1, b => 2}
    say @k[1]; # {x => 3, y => 4}

    .say for @k;
    .say for %h1, %h2;
    my $l = (%h1, %h2);
    .say for $l.list;

}
