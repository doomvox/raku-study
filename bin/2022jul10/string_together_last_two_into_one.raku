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


{ # william michels
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.rotate(2);
 @disney.push( @disney.splice(*-2, 2).join );
 say @disney;  # [Ariel Belle Cinderella DumboEeyore]
}

{ # bruce gray
 say "===";    
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.push( do { my $a = @disney.pop; say "1: $a"; $a } R~ do { my $a = @disney.pop; say "2: $a"; $a } );
 # 2: Eeyore
 # 1: Dumbo
 say @disney;  # [Ariel Belle Cinderella EeyoreDumbo]  #
 say "===";    
}

{ # sans R
 say "===";    
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.push( do { my $a = @disney.pop; say "1: $a"; $a } ~ do { my $a = @disney.pop; say "2: $a"; $a } );
 # 1: Eeyore
 # 2: Dumbo
 say @disney;  # [Ariel Belle Cinderella EeyoreDumbo]  #
 say "===";    
}

{  say "~~~";    
   my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
   my @new = [R~] @disney.pop, @disney.pop;
   @disney.push( @new );
   say @disney;
   say "~~~";    
}

{ # rob 
  my @a = < a b c d e > ; (@a[* -2], @a[*-1]) = @a[*-1], @a[*-2];  
  @a.push( @a.pop ~ @a.pop );
  say @a.raku;  #  ["a", "b", "c", "de"]
}

{ # rob + bg
#   my @a = < a b c d e > ; (@a[* -2], @a[*-1]) = @a[*-1], @a[*-2];  
#   @a.push( @a.pop ~ @a.pop );
#   say @a.raku;  #  ["a", "b", "c", "de"]

#   my $x = 42; my $y = 99; ($x, $y) .= reverse; say (:$x, :$y).raku;
#  (:x(99), :y(42)) 
}


# ===
# Author:  doom@kzsu.stanford.edu

