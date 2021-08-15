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
  my @all_nothing = @nothing, @zero;
  say @all_nothing;        # [[nada nope bupkes] [zero zip zed]]

  my @nihilism = flat @nothing, @zero;
  say @nihilism; # [nada nope bupkes zero zip zed]

  my @nihilism_too = | @nothing, | @zero;
  say @nihilism_too; # [nada nope bupkes zero zip zed]

  my $empty_set = Set.new();
  dd $empty_set;  # Set $empty_set = Set.new()

  # my $null_regex = rx//;  # Null regex not allowed

  my @r = rx/^ $/, rx/^0+$/, rx/^\s/;
  dd @r;
  # Array @r = [rx/^ $/, rx/^0+$/, rx/^\s/]

  my $dull_item = "  ";
  say so if $dull_item ~~ any( @r );

  say "===";
  { # side trip into arrays and sets
      my @up = set @nothing;
      dd @up;               # Array @up = [Set.new("bupkes","nada","nope")]

      # my Set $upper = @nothing;
      # Type check failed in assignment to $upper; expected Set but got Array (["nada", "nope", "bu...)

      # my Set $upper = flat @nothing;
      # Type check failed in assignment to $upper; expected Set but got Seq (("nada", "nope", "bu...)

      my $upper = @nothing.Set;
      dd $upper;            # Set $upper = Set.new("bupkes","nope","nada")

      my $over = Set.new( @nothing );
      dd $over;
      # Set $over = Set.new("nope","bupkes","nada")

      ## Q: might this idiom be adviseable?
      ##    if you know you want assignment to succeed, and also want strong typing later.
      my Set $irish = @nihilism.Set;
      dd $irish;
      # Set $irish = Set.new("zed","zip","bupkes","nada","zero","nope")

      my @leftover = $irish (-) $over;
      dd @leftover;
      # Array @leftover = [Set.new("zip","zero","zed")]

      my $lefter = $irish (-) $over;
      dd $lefter;
      # Set $lefter = Set.new("zed","zero","zip")

      say "---";
      my @monsters  = < godzilla mothera rhodan wolfman dracula tingler >;
      my @us        = < tingler wolfman dracula wormface horta blob >;
      my @japanese  = < godzilla mothera rhodan >;
      my @other_furriners = < grendel golem garuda >;

      my @our_founders = @monsters (-) @japanese;
      dd @our_founders;
      # Array @our_founders = [Set.new("tingler","wolfman","dracula")]
      # Note: that's an array with one element, a set

      my @m = values @monsters (-) @japanese;
      dd @m;
      # Array @m = [Bool::True, Bool::True, Bool::True]

      my @n = keys @monsters (-) @japanese;
      dd @n;
      # Array @n = ["dracula", "tingler", "wolfman"]

  }
}






# ===
# Author:  doom@kzsu.stanford.edu


