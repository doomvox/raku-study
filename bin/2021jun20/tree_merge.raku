#!/usr/bin/env perl6
# 
# tree_merge.raku            13 Jun 2021 

use v6;

# Working towards doing something like Data::Math in Raku.
# I'm wondering if you can zip a .deepmap
{
   my ( %gross, %costs );
   %gross = ( 2015 => { 01 => { de => 177.00,
                                fr => 191.25, },
                        02 => { de => 74.00,
                                fr => 555.50, },
                      },
            );
   %costs = ( 2015 => { 01 => { de => 100.00,
                                fr => 91.25, },
                        02 => { de => 37.00,
                                fr => 555.49, },
                      },
            );

   my $result = %gross Z- %costs;
   say $result;


}
