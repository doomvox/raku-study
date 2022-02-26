#!/usr/bin/env perl6
# 
# categorize_hotel.raku            25 Feb 2022 

use v6;

# Hotel Energy Consumption for Hotels in Lagos and Singapore
#  http://users.stat.ufl.edu/~winner/data/nigeria_singapore_hotel.csv

my $df = "/home/doom/End/Cave/RakuStudy/Ore/nigeria_singapore_hotel.csv";
# city    (1=Lagos, 2=Singapore)
# hotel.ID   (within city)
# year.EC    (annual energy consumption, MWh)
# flr.area   (square meters)
# employees

# Read csv data as an array of hashes, field names from header
my @aoh = csv(in => $df, headers => "auto"); 
for @aoh -> %h {
    say %h;
}

say @aoh.categorize( {$_{'city'} == 1} );                            


# ===
# Author:  doom@kzsu.stanford.edu

