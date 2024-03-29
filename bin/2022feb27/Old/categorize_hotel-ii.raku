#!/usr/bin/env perl6
# 
# categorize_hotel-ii.raku            25 Feb 2022 

use v6;
use Text::CSV;

## really, re-learning basics of aofh processing


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
    last if $++>3;
}

my $huh = @aoh.categorize( { $_{'city'} } );
## Note maybe I don't like dd so much:
## dd $huh;
##   Hash[Any,Any] $huh = $(my Any %{Any} = "1" => $[{:city("1"), :employees("36"), "flr.area" => "1822.99", "hotel.ID" => "1", "year.EC" => "831.12"},  ...
## Q: why is city and employees a colon-pair, but the others use fat arrows?
## A: the dot in the names, I think.

say "---";

my %by_city = @aoh.categorize( { $_{'city'} } );

say %by_city.keys;                          # (1 2)
say %by_city.values.[0].[0].{'employees'};  # 36

for %by_city.kv -> $cid, $data {  ## But $data behaves differently than @data
# for %by_city.kv -> $cid, @data {
    say "-->";
    say "cid: $cid";
    say $data.[0].[0].{'employees'};  
    say $data.WHAT;
    say $data.elems;
#     say @data.[0].[0].{'employees'};  
#     say @data.WHAT;
#     say @data.elems;
    my $sum = 0;
## Note, *this* doesn't work here, the entire data set ends up in $r, doesn't treat $data as array
    for $data -> $r {
## This works:
#    for $data.values -> $r {
#    for @data.values -> $r {
        say "row data type: ", $r.^name;
        # dd $r; ## array of hashes?
        # $[{:city("1"), :employees("36"), "flr.area" => "1822.99", "hotel.ID" => "1", "year.EC" => "831.12"}, ...
        my $v = $r.[0].{'year.EC'};  # note the .[0], pulls out just one hash
        say "v: $v";
        $sum += $v;
    }
#    say "city: ", $cid, ' sum: ', $sum, ' ave: ', $sum/@data.elems ;
    say "city: ", $cid, ' sum: ', $sum, ' ave: ', $sum/$data.elems ;
}



# ===
# Author:  doom@kzsu.stanford.edu

