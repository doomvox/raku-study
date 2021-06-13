#!/usr/bin/env perl6
# 
# tree_merge.raku            13 Jun 2021 

use v6;

{
    my @a = 2, 4, 6;
    my @b = 1, 2, 3;
    say @a Z- @b; # (1 2 3)
    }

# Working towards doing something like Data::Math in Raku.
# I'm wondering if you can zip a .deepmap
{
   my ( %gross, %costs );
   %gross = ( 2015 => { 1 => { de => 177.00,
                               fr => 191.25, },
                        2 => { de => 74.00,
                               fr => 555.50, },
                      },
            );
   %costs = ( 2015 => { 1 => { de => 100.00,
                               fr => 91.25, },
                        2 => { de => 37.00,
                               fr => 555.49, },
                      },
            );

#    my $result = %gross Z- %costs;
#    say $result;

#    # Potential difficulties:
#    #    Useless use of Z- in sink context
#    # Cannot resolve caller Numeric(Pair:D: ); none of these signatures match:

#    my $result = %gross Z{.deepmap{ $^a - $^b}} %costs;


}
