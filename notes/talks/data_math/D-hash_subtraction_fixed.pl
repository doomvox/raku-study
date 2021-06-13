#!/usr/bin/env perl

# B5-hash_subtraction_fixed.pl                   doom@kzsu.stanford.edu
#                                                Jun 08, 2021

use feature ":5.10.0";
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

  for my $country ( keys %gross ) {
    $net{ $country } = $gross{ $country } - $costs{ $country };
  }

  say Dumper( \%net );
  # $VAR1 = {
  #           'us' => '-664.68',
  #           'de' => '2310.37',
  #           'es' => '979.88'
  #         };

  ## So that works fine... right?

}


