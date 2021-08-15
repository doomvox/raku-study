#!/usr/bin/env perl6
# 
# classic_arrays.raku            15 Aug 2021 

use v6;

## In which I review using arrays/lists/etc with object classes
## and try to pin down whatever it is that keeps tripping up my
## perl-damaged brain.

say "===";
{ my @nothing  = < nada nope bupkes >;
  say @nothing;         # [nada nope bupkes]
  say @nothing[2];      # bupkes

  my @sweet = @nothing;
  say @sweet;           # [nada nope bupkes]   (( wait, that worked? ))

  my @zero = < zero zip zed >;
  my @nihilism = @nothing, @zero;
  say @nihilism;        # [[nada nope bupkes] [zero zip zed]]

  my @all_nothing = flat @nothing, @zero;
  say @all_nothing; # [nada nope bupkes zero zip zed]

  my @all_nothing_too = | @nothing, | @zero;
  say @all_nothing_too; # [nada nope bupkes zero zip zed]

  my @up = set @nothing;
  dd @up;               # Array @up = [Set.new("bupkes","nada","nope")]

  my Set $upper = @nothing;

}








# ====
#  sheet of cheats



# ===
# Author:  doom@kzsu.stanford.edu


