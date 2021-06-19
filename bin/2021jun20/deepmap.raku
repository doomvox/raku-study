#!/usr/bin/env perl6
# 
# deepmap.raku            19 Jun 2021 

use v6;

my  %g1   = ( 2015 => {  1 => { de => 1166.00,
                                fr => 69.69, },
                         2 => { de => 76.23,
                                fr => 555.50, },
                      },
               2016 => { 1 => { de => 177.00,
                                fr => 191.25, },
                         2 => { de => 74.00,
                                fr => 555.50, },
                       },
            );



say %g1{2016};
say %g1{2016}{2};
say %g1{2016}{2}{'de'}; # 74

my %n1 = %g1.deepmap({ $_ * 2 });
say %n1{2016}{2}{'de'}; # 148

# interestingly, this works too (a fine example of raku consistency)
my %m1 = %g1.deepmap( * * 2 );  # 148

say %n1{2015};
say %n1{2016};
# {1 => {de => 2332, fr => 139.38}, 2 => {de => 152.46, fr => 1111}}
# {1 => {de => 354, fr => 382.5}, 2 => {de => 148, fr => 1111}}

