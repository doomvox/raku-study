#!/usr/bin/env perl6
# 
# set_difference.pl6            15 Feb 2021 

use v6;

say "--2--";

my @japanese = < godzilla mothera ghidora gammera rhodan >;
my @all = < godzilla blob grendel wormface mothera ghidora gammera golem rhodan >;

my $result = set @all  (-) set @japanese ;

my $sm1 = set @japanese;
say $sm1;  # Set(blob godzilla grendel wormface)
my $sm2 = set @all;
say $sm2;  # Set(gammera ghidora godzilla golem mothera rhodan)
my $diff = $sm1 (-) $sm2;
say $diff; # Set(blob grendel wormface)

{
 my $result = set(@all)  (-) set(@japanese) ;
 say $result;
}

{
    my $hm = @all.Set (-) @japanese.Set ;
    say $hm;
}

{
    my $sm1 = @japanese.Set;
    say $sm1;  # Set(blob godzilla grendel wormface)
}


 {
     my $ho = (set @all)  (-)  (set @japanese);
     say $ho;

 }


{
    my $ho = @all (-) @japanese;
    say $ho;


}



