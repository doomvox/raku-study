#!/usr/bin/env perl
# david_animals.pl                   doom@kzsu.stanford.edu
#                                    23 Aug 2026


## David Christensen

use strict;
use warnings;

use constant population  => 100;

use constant cow_cost  =>  10.00;
use constant pig_cost  =>   3.00;
use constant sheep_cost  =>   0.50;
use constant budget  => 100.00;

for (my $cows = 1; $cows <= budget/cow_cost - 1; $cows++) {
    my $max_pigs =
       (budget - $cows * cow_cost - sheep_cost)
        / pig_cost;
    for (my $pigs = 1; $pigs <= $max_pigs; $pigs++) {
 my $sheep =
     (budget - $cows * cow_cost - $pigs * pig_cost)
     / sheep_cost;
 my $animals = $cows + $pigs + $sheep;
 my $cost = $cows  * cow_cost
   + $pigs  * pig_cost
   + $sheep * sheep_cost;
 print join $",
     "cows $cows pigs $pigs sheep $sheep",
     "animals $animals cost $cost\n"
     if $animals == population && $cost == budget;
    }
}

