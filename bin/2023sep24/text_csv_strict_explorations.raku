#!/usr/bin/env raku
# 
# text_csv_strict_explorations.raku            24 Sep 2023 

use v6;
#use Slang::Tuxic;
use Text::CSV;

# https://github.com/Tux/CSV/issues/34
# https://unix.stackexchange.com/a/755782/227738

# Used all lines of the example data in the stackexchange post
# Removed the last element from line 4, which should warn under strict
# Removed dependency on Slang::Tuxic by removing 3 spaces in Tux code

my @a = csv(in => "/Users/admin/issue_34_trunc4.csv", sep => ";", :auto-diag, :strict, :diag-verbose) or die Text::CSV.error_diag;

@a = @a>>.map({ sprintf "%.2d", $_ });

csv(in => @a, out => $*OUT, sep => ";");
say $*VM;
