#!/usr/bin/env raku
# 
# multiline_records.raku            30 Apr 2023 

use v6;

my $data_file = "./data/addresses.txt";
.say for $data_file.IO.lines.grep: {
    $_
}
