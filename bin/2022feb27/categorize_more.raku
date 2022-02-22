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

 for @aoh -> %h {
     say %h;
 }
