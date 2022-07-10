#!/usr/bin/env perl6
# 
# string_together_last_two_into_one.raku            29 Jun 2022 

use v6;

## An example used in the slides for the Bruce Gray tutorial at tprc
## Works.  Does it do what you expect?
{
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.push( @disney.pop ~ @disney.pop );

 say @disney; # [Ariel Belle Cinderella EeyoreDumbo]
}

## Note: it doesn't just glue together the last two into one, it flips the order

## Q: what if you don't want the order of the last two flipped?
{
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.push( do { my $b = @disney.pop; my $a = @disney.pop; $a ~ $b } );
 say @disney; # [Ariel Belle Cinderella DumboEeyore]
}

## Side-issue:
## This works:
# @disney.push( do { my $b = @disney.pop; my $a = @disney.pop; $a ~ $b } );
## This doesn't:
# @disney.push( { my $b = @disney.pop; my $a = @disney.pop; $a ~ $b } );
## Neither does this:
# @disney.push( { my $b = @disney.pop; my $a = @disney.pop; return $a ~ $b } );

{
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.push(  @disney.splice(*-2, 1) ~ @disney.pop );

 say @disney; # [Ariel Belle Cinderella DumboEeyore]
}


{
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.rotate(2);
 @disney.push({ @disney.shift(2).join });
 say @disney;
 # [Ariel Belle Cinderella Dumbo Eeyore -> ;; $_? is raw = OUTER::<$_> { #`(Block|94082339312424) ... }]
}

# ===
# Author:  doom@kzsu.stanford.edu

