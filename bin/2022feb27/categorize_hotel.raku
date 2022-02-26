#!/usr/bin/env perl6
# 
# categorize_hotel.raku            25 Feb 2022 

use v6;
use Text::CSV;

# Hotel Energy Consumption for Hotels in Lagos and Singapore
#  http://users.stat.ufl.edu/~winner/data/nigeria_singapore_hotel.csv

my $df = "/home/doom/End/Cave/RakuStudy/Ore/nigeria_singapore_hotel.csv";
# city    (1=Lagos, 2=Singapore)
# hotel.ID   (within city)
# year.EC    (annual energy consumption, MWh)
# flr.area   (square meters)
# employees

my %city_name = ( 1 => 'Lagos', 2 => 'Singapore' );

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

# for %by_city.kv -> $cid, @data { ## works, but I want to sort on keys
  for %by_city.keys.sort -> $cid {
#   my @data = %by_city{$cid}; ## doesn't work, again getting *just one row*
    my @data = %by_city{$cid}.values; ## This works, but *WTF* already
    say "-->";
    say "cid: $cid";
    say @data.[0].[0].{'employees'};  
    say @data.WHAT;
    say @data.elems;
    my $sum = 0;
    for @data -> $r {
        my $v = $r.[0].{'year.EC'};
        say "v: $v";
        $sum += $v;
    }
#    say "city: ", $cid, ' sum: ', $sum, ' ave: ', $sum/@data.elems ;
    say $cid, " city: ", %city_name{$cid}, ' sum: ', $sum, ' ave: ', $sum/@data.elems ;
}

## TODO better to save results and sort when output

# ===
# Author:  doom@kzsu.stanford.edu

