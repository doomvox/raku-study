#!/usr/bin/env perl
# B0-intro-hash_subtraction.pl                                          June 9, 2021

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

{
  my (%gross, %costs, %net);

  %gross = ( de => 2345.37,
             es => 1238.99,
             us => 1.98,
            );
  %costs = ( de => 35.00,
             es => 259.11,
             us => 666.66,
           );

   %net = %gross - %costs;            ## DOESN'T WORK

}

## Clear what that line *should* do
## pop quiz: what does it actually do?

