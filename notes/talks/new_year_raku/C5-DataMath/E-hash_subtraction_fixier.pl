#!/usr/bin/env perl
# B7-hash_subtraction_fixier.pl                  doom@kzsu.stanford.edu
#                                                Jun 08, 2021
use feature ":5.10.0";
use warnings;
use strict;
use Data::Dumper;
use List::MoreUtils qw( uniq );

{
  my (%gross, %costs, %net);

  %gross = ( de => 2345.37,
             es => 1238.99,
             us => 1.98,
             ## no 'fr': I call this a "hole"
            );
  %costs = ( de => 35.00,
             es => 259.11,
             us => 666.66,
             fr => 101.01,
           );

  my @keys = uniq keys( %gross ), keys( %costs );
  for my $country ( @keys ) {
    no warnings 'uninitialized';
    $net{ $country } = $gross{ $country } - $costs{ $country };
  }

  say Dumper( \%net );
  #    $VAR1 = {
  #           'fr' => '-101.01',
  #           'de' => '2310.37',
  #           'es' => '979.88',
  #           'us' => '-664.68'
  #         };

  ## Much better, though it warns if you don't suppress it:
  ##   Use of uninitialized value in subtraction

  ## More and more I appreciate:
  ##   no warnings 'unitialized';

}


