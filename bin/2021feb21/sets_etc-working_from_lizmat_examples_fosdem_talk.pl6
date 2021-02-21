#!/usr/bin/env perl6
# 
# sets_etc-working_from_lizmat_examples_fosdem_talk.pl6            17 Feb 2021 

use v6;


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
    my $m = mix ( a => 1.5,
                  b => 5,
                  c => 12,
                  d => 05
                );
    say $m.roll(24);
    

    }





say "---";
{
    my $s1 = set 2, 4, 6;
    my $s2 = set 6, 8, 10;
    
    say $s2 (-) $s1;


    }
