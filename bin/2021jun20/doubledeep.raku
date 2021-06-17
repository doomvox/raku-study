#!/usr/bin/env perl6
# 
# doubledeep.raku            16 Jun 2021 

use v6;

{
    my      %h1 = ( alpha => 1, beta => 2 );
    my      $h2 = { alpha => 1, beta => 2 };
    my Hash $h3 = { alpha => 1, beta => 2 };

    say join " ", %h1.^name, $h2.^name, $h3.^name; # Hash Hash Hash
    say %h1.^mro;  # ((Hash) (Map) (Cool) (Any) (Mu))
#    say %h1.^mro.grep('Positional');
#    say %h1.can('Positional');

    say %h1.can('keys');

    }


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
