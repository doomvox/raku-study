#!/usr/bin/env perl6
# 
# round_to_nearest_100.raku            11 Jul 2021 

use v6;

my $a = 179.37;

say $a.^methods;

say $a.round; # 179

my $A = $a / 10;
my $b = $A.round * 10;
say $b; # 180

my $n = 382.99;
my $r = ($n / 10).round * 10;
say $r; # 380

## Note: would not be surprised if .round has this feature built-in.


  # There's supposed to be an argument to round I could use to simplify this:
  #          my $r = ($n / 10).round * 10;
  #          my $r = $n.round(.1);  


{

# https://raku.finanalyst.org/type/Real.html#method_round

#   method round(Real:D: $scale = 1)

# Rounds the number to scale $scale. If $scale is 1, rounds to an
# integer. If scale is 0.1, rounds to one digit after the radix
# point (period or comma), etc.

# https://docs.raku.org/routine/round

# (Real) method round

# method round(Real:D: $scale = 1)

# Rounds the number to scale $scale. If $scale is 1, rounds to an
# integer. If scale is 0.1, rounds to one digit after the radix
# point (period or comma), etc.


    my $n  = 123.45;
    my $r1  = $n.round( 10 );  ## This works 

    say $r1;

    my $r2 = ($n / 10).round * 10;
    say $r2; # 120

    # This doesn't compile:
    # my $r3  = $n.round( $scale = 10 );    # Variable '$scale' is not declared
    # say "3:",  $r3;

    # This doesn't compile, either:
    # my $r3  = $n.round( scale = 10 );   # Preceding context expects a term, but found infix = instead.
    # say $r3;

    # Oh, you'd need to do this:
    my $scale;
    my $r3  = $n.round( $scale = 10 );    
    say "3: $r3";  # 3: 120

    my $r3c  = $n.round( my $scale = 10 );    
    say "3c: $r3c";  # 3: 120



    my $r4  = $n.round( scale => 10 );  ## This doesn't work
    say $r4;  # 123, not 120

    # my $r5  = round( $n, scale => 10 );   # Unexpected named argument 'scale' passed
    # say $r5;

    my $r6  = round( $n,  10 );   # This works
    say $r6;  # 120

    ## TODO report documentation bug
    
}


{
    my $n = 17;
    my $r = round( $n, 3 );
    say $r;  ## 18

    my $r2 = round( $n, 2.7159 );
    say $r2; # 16.2954

    my $r3 = round( $n, 𝑒 );
    say $r3;  # 16.30969097075427

    }



# Bruce Gray:
# raku -e 'say 1.3649349.round(0.01)'
# 1.36
# raku -e 'say 1.3649349.round(0.01).nude'
# (34 25) 




=begin pod

The documentation for the round method has an unintentionally confusing usage shown.

I've got roughly three complaints about it, mostly small things that seem suboptimal
but that's a lot for a tiny amount of documentation:

  https://docs.raku.org/routine/round

     method round(Real:D: $scale = 1)

   Rounds the number to scale $scale. If $scale is 1, rounds to an
   integer. If scale is 0.1, rounds to one digit after the radix
   point (period or comma), etc.


   I originally misread that, thinking it was saying to do something like this:

     my $rounded  = $number.round( scale => 10 );    

   If you took it literally, and tried to do just this:

     my $rounded  = $number.round( $scale = 10 );    

   It fails to compile with a "Variable '$scale' is not declared" message.

   You could do this:
  
     my $scale;
     my $rounded  = $number.round( $scale = 10 );    

   Or this:

     my $rounded  = $number.round( my $scale = 10 );    

   But (1) I don't think I ever would and (2) the entire point is
   just a distraction because what you'd probably want to do is
   just something like this:

     my $rounded  = $number.round( 10 );   
     my $rounded  = round( $number,  10 );   

   And further: those two lines of code examples are much clearer
   than this signature-style:

     method round(Real:D: $scale = 1)
   
   Understanding that "Real:D" can mean some numeric variable isn't rocket-science,
   but it's really better to use code examples that are as close to actual code 
   as possible.

 Still another point: to my ear, the term "scale" isn't right at
 all.  I would call this rounding off to a *place*, maybe rounding 
 of to the "nearest __", maybe imposing granularity, or snapping to a grid...

 I think "scaling" implies multiplying by a factor to magnify or shrink, 
 not to round off.

   granularity
   grain 

   precision
   accuracy
  
=end pod


# ===
# Author:  doom@kzsu.stanford.edu

