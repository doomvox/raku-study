#!/usr/bin/env perl6
# 
# doubledeep.raku            20 Jun 2021 

## starting over with the doubledeep.raku idea.
## Also see:
## /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021jun20/doubledeep-explorations_1.raku

use v6;

{
    my $monsters = < godzilla mothera ghidora gammera golem rhodan >;
    my $levels   = { 'godzilla' => 9, 'mothera' => 7,  'ghidora' => 10 };


}


{
    my @a = ( { 'alpha' => 'ralpha',
                'beta'  => 'max',
                'gamma' => 'ra',
                },
              { 'alpha' => 1,
                'beta'  => 2,
                'gamma' => 3,
                },
              { 'alpha' => 101,
                'beta'  => 102,
                'gamma' => 103,
                } );
    say @a;
    # [{alpha => ralpha, beta => max, gamma => ra} {alpha => 1, beta => 2, gamma => 3} {alpha => 101, beta => 102, gamma => 103}]
    my $h = @a[1];
    say $h; # {alpha => 1, beta => 2, gamma => 3}


}

{
    my (%h1, %h2) = define_some_structures();

    ## ...



}




sub define_some_structures {
    my  %g1   = ( 2015 => {  1 => { de => 177.00,
                                    fr => 191.25, },
                             2 => { de => 74.00,
                                    fr => 555.50, },
                          },
                  2016 => { 1 => { de => 177.00,
                                   fr => 191.25, },
                            2 => { de => 74.00,
                                   fr => 555.50, },
                          },
                );

    my  %g2   = ( 2015 => [   { de => 177.00,
                                fr => 191.25, },
                              { de => 74.00,
                                fr => 555.50, },
                          ],
                  2016 => [  { de => 177.00,
                               fr => 191.25, },
                             { de => 74.00,
                               fr => 555.50, },
                          ],
                );
    return (%g1, %g2);
}
