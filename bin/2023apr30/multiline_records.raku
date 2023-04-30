#!/usr/bin/env raku
# 
# multiline_records.raku            30 Apr 2023 

use v6;

## line-at-a-time
my $data_file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023apr30/data/addresses.txt";
.say for $data_file.IO.lines.grep: {
    $_
}
