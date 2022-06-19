#!/usr/bin/env perl6
# 
# picking_out_lines_by_date.raku            19 Jun 2022 

use v6;


# https://unix.stackexchange.com/questions/706744/write-a-regular-expression-whose-output-will-only-be-rows-in-a-range-01-03-2021/706773#706773

# I have a file that got dates from 01/01/2020 to 04/04/2021 I want to get only the dates between 01/03/2020 to 01/03/2021 by using egrep. I tried to do

# raku -ne 'my $ts = .subst(/ ^ (\d**2) \/ (\d**2) \/ (\d**4) /, {"$2-$1-$0"}).Date; say $ts if Date.new("2020-03-01") < $ts < Date.new

# ("2021-03-01");' 

# raku -ne '.say if Date.new("2020-03-01") < S/ ^ (\d**2) \/ (\d**2) \/ (\d**4) /{"$2-$1-$0"}/.Date < Date.new("2021-03-01");' file

# 13/03/2020






