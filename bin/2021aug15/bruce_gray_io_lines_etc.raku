#!/usr/bin/env perl6
# 
# bruce_gray_io_lines_etc.raku            15 Aug 2021 

use v6;


for "/home/doom/tmp/monsters.txt".IO.lines.grep({ !/^END/ or last }) {
    .say if /^g/;
}







