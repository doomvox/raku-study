#!/usr/bin/env perl6
# 
# werewolf_numbers-01-bruce_gray_solution.raku            27 Mar 2022 

use v6;

# uses next fullmoon to seed process
my Date $fm .= new: 2022, 1, 17;
say $fm; # 2022-01-17    

# prime dates in american format
my @p = grep *.Str.split("-")[1,2,0].join.is-prime, Date.today .. *;


my @ww = @p.grep: { my $z = ($_ - $fm) % 29.53; $z < 1 or $z > 28.53 };

say @ww.head(5);
# (2023-02-05 2023-09-30 2023-12-27 2027-01-22 2027-04-20)
# https://www.moongiant.com/phase/04/20/2027/
