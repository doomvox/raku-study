#!/usr/bin/env perl6
# 
# sets_etc-working_from_lizmat_examples_fosdem_talk.pl6            17 Feb 2021 

use v6;

## QuantHash
##   Set      Bag       Mix      SetHash  BagHash  MixHash
##    |        |          |
##   boolean  integer   rational

## lizmat fosdem 2021 
{
    .say for ("a" .. "z").roll(1000)
    .Bag
    .sort( - *.value  )
    .head(5)
    }
# Sample output (.roll examples are non-deterministic)
#   e => 47
#   n => 45
#   g => 44
#   h => 44
#   d => 43

{
    say "---";
    my $m = mix ( a => 1.5,
                  b => 5,
                  c => 12,
                  d => 0.5,
                );
    # my @p = $m.pick(24);
    #  .pick is not supported on a Mix, maybe use .roll instead?
    my @p = $m.roll(24);
    .say for @p
    .Bag
    .sort( - *.value  )
    .head(5);
    }

say "---";
{
    my $s1 = set 2, 4, 6;
    my $s2 = set 6, 8, 10;
    
    say $s2 (-) $s1;

    my $result = $s2 (-) $s1;
    say $result.keys;

    say "---";
    my $other =  (2, 4, 6) (-) (6, 8, 10);
    say $other;  # Set(2 4)

    say "---";
    my @monsters1 = < godzilla mothera ghidora gammera golem rhodan >;
    my @monsters2 = < godzilla mothera rhodan tingler wolfman dracula horta blob >;
    my @diff = @monsters2 (-) @monsters1;
    say @diff;
    #  [Set(blob dracula horta tingler wolfman)]
    say @diff[0];

    }
