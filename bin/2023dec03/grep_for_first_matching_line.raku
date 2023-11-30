#!/usr/bin/env raku
# 
# grep_for_first_matching_line.raku            29 Nov 2023 

use v6;

## An old line in my notes that looks sub-optimal:




## untested example:
my $first_match = $file.IO.open.readlines.map{ .lc }.grep({ m/$target_pattern/ });

