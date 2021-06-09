#!/usr/bin/env perl
# F-hash_subtraction_via_Data-Math.pl                   doom@kzsu.stanford.edu
#                                                       June 08, 2021

use feature ":5.10.0";
use warnings;
use strict;
$|=1;
use Data::Dumper;
use Data::Math;

{
   my ( %gross, %costs );
   %gross = ( de => 2345.37,
              es => 1238.99,
              us => 1.98,
             );
   %costs = ( de => 35.00,
              es => 259.11,
              us => 666.66,
              fr => 101.01,
             );

   my $dm = Data::Math->new();
   my $net = $dm->calc( '-', \%gross, \%costs );

   say Dumper( $net );
   # $VAR1 = {
   #       'fr' => '-101.01',
   #       'de' => '2310.37',
   #       'us' => '-664.68',
   #       'es' => '979.88'
   #     };
 }

