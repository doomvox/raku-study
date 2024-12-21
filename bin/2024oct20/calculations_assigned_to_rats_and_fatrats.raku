#!/usr/bin/env raku
# 
# calculations_assigned_to_rats_and_fatrats.raku            24 Nov 2024 

use v6;

# one past the limit for Rat demoninators
my $d = 2**64 + 1;

# Rat.new allows for toofat Rats that aren't FatRats
my $rat = Rat.new(1, $d);   ## doesn't throw an error, and gives you a Rat, not a Num
say $rat.^name, ': ', $rat, ' ';

# ## my Rat $v_r = 1/$d;  ## Type check failed in assignment to $v_r; expected Rat but got Num (5.421010862427522e-20)
# my FatRat $v_fr = 1/$d;
# my Num $v_n = 1/$d;

# ## say $v_r.^name,  ': ', $v_r,  ' ';
# say $v_fr.^name, ': ', $v_fr, ' ';
# say $v_n.^name,  ': ', $v_n,  ' ';


{ 
  my $rat = Rat.new(1, $d);   ## doesn't throw an error, and gives you a Rat, not a Num
  say $rat.^name, ': ', $rat, ' ';

  my $result = $rat *  1/2;
  dd( $result );
}
