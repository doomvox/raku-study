#!/usr/bin/env perl6
# 
# categorize_more.raku            21 Feb 2022 

use v6;
use Text::CSV;

my $df = "/home/doom/tmp/mtcars.csv";
# "","mpg","cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb"
# "Mazda RX4",21,6,160,110,3.9,2.62,16.46,0,1,4,4
# "Mazda RX4 Wag",21,6,160,110,3.9,2.875,17.02,0,1,4,4
# ...

 my @aoh = csv(in => $df,
               headers => "auto"); # as array of hashes

#  for @aoh -> %h {
#      say %h;
#  }
# # { => Mazda RX4, am => 1, carb => 4, cyl => 6, disp => 160, drat => 3.9, gear => 4, hp => 110, mpg => 21, qsec => 16.46, vs => 0, wt => 2.62}
# # { => Mazda RX4 Wag, am => 1, carb => 4, cyl => 6, disp => 160, drat => 3.9, gear => 4, hp => 110, mpg => 21, qsec => 17.02, vs => 0, wt => 2.875}
# # { => Datsun 710, am => 1, carb => 1, cyl => 4, disp => 108, drat => 3.85, gear => 4, hp => 93, mpg => 22.8, qsec => 18.61, vs => 1, wt => 2.32}
# # ...

say @aoh.categorize( {$_->{cyl}>4} );
