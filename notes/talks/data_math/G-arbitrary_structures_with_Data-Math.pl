#!/usr/bin/env perl
# G-arbitrary_structures_with_Data-Math.pl              doom@kzsu.stanford.edu
#                                                       June 09 2021

use feature ":5.10.0";
use warnings;
use strict;
$|=1;
use Data::Dumper;
use Data::Math;

{
   # HoH:  year -> month -> country -> value
   my ( %gross, %costs );
   %gross = ( 2015 => { 01 => { de => 77.00,
                                fr => 191.25, },
                        02 => { de => 39.00,
                                fr => 555.50, },
                        03 => { de => 725.00,
                                fr => 99.03, },
                        tax_rate => { de => 0.07,
                                      fr => 0.08, },
                      },
              2016 => { 01 => { de => 35.00,
                                fr => 191.01, },
                        02 => { de => 935.00,    # the check value for gross
                                fr => 16.39, },
                        03 => { de => 37.00, },
                        04 => { de => 39.00,
                                fr => 7.17, },
                        tax_rate => { de => 0.07,
                                      fr => 0.08, },
                      },
              source  => 'doomvox',
              comment => 'fictional numbers',
             );
   %costs = ( 2015 => { 01 => { de => 72.00,
                                fr => 72.27, },
                        02 => { de => 191.70,
                                fr => 81.18, },
                        03 => { de => 37.00,
                                fr => 191.91, },
                        tax_rate => { de => 0.07,
                                      fr => 0.08, },
                      },
              2016 => { 01 => { de => 31.00,
                                fr => 137.37, },
                        02 => { de => 35.00,      # the check value for costs
                                fr => 187.87, },
                        03 => { de => 39.00, },
                        04 => { de => 33.00,
                                fr => 1974.76, },
                        tax_rate => { de => 0.07,
                                      fr => 0.08, },
                      },
              source  => 'doomvox',
              comment => 'dummy numbers',
             );

   # my $dm = Data::Math->new();
   my $dm = Data::Math->new( skip_key_patterns => [ qr{ ^ tax_rate $ }x ] );

   my $net = $dm->calc( '-', \%gross, \%costs );

   say Dumper( $net );

   say $gross{2016}{02}{de};  # 935
   say $costs{2016}{02}{de};  # 35

   say $gross{2016}{02}{de} - $costs{2016}{02}{de};  # 900

   say $net->{2016}{02}{de}; # 900

   say "source: ",  $net->{source};   # doomvox
   say "comment: ", $net->{comment};  # fictional numbers|dummy numbers
 }

