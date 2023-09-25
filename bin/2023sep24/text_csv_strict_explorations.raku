#!/usr/bin/env raku
# 
# text_csv_strict_explorations.raku            24 Sep 2023 

## William Michels:
##   https://github.com/Tux/CSV/issues/34

use v6;
#use Slang::Tuxic;

## Pulled a new Text::CSV straight from github
##   git clone git@github.com:Tux/CSV.git
use lib "/home/doom/lib/raku/CSV/lib"; 

use Text::CSV;

# https://github.com/Tux/CSV/issues/34
# https://unix.stackexchange.com/a/755782/227738

# Used all lines of the example data in the stackexchange post
# Removed the last element from line 4, which should warn under strict
# Removed dependency on Slang::Tuxic by removing 3 spaces in Tux code

my $dat_loc = $*PROGRAM.parent.add('dat');
# my $file = "issue_34_truncated.csv";
my $file = "issue_34_bills_truncs.csv";
my $data_file = "$dat_loc/$file";

my @a = csv(in => "$data_file", sep => ";", :auto-diag, :strict, :diag-verbose) or die Text::CSV.error_diag;

@a = @a>>.map({ sprintf "%.2d", $_ });

csv(in => @a, out => $*OUT, sep => ";");
say $*VM;


# Works with old:
# ===> Found via /home/doom/Dust/Sys/Raku/rakudo-star-2023.02/share/perl6/core
# ===> Found via /home/doom/Dust/Sys/Raku/rakudo-star-2023.02/share/perl6/vendor
# ===> Found via /home/doom/Dust/Sys/Raku/rakudo-star-2023.02/share/perl6/site
# ===> Found via /home/doom/.raku
# Text::CSV:ver<0.010>:auth<github:Tux>



# Using fresh version of Text::CSV from github:

# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023sep24/text_csv_strict_explorations.raku
# ENF - Inconsistent number of fields : error 2014 @ record 4, field 9, position 22
# 1664;04;05;35;37;43
# 1663;21;23;32;40;49
# 1662;16;17;34;35;44
# moar (2023.02)
