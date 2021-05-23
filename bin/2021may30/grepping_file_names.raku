#!/usr/bin/env perl6
# 
# grepping_file_names.raku            22 May 2021 

use v6;

my @file_io_objs = (
    "/home/doom/End/Stage/Mirthless/doomfiles/---------------.html".IO,
    "/home/doom/End/Stage/Mirthless/doomfiles/100_MILLENNIUM_MIND.html".IO,
    "/home/doom/End/Stage/Mirthless/doomfiles/12CEASARS.html".IO,
    "/home/doom/End/Stage/Mirthless/doomfiles/13CLOCKS.html".IO,
    "/home/doom/End/Thought/2013-me_babbling_about_skiffy_on_slashdot-now_noone_is_relaxed.txt".IO,
    "/home/doom/End/Thought/800_NIGHT".IO,
    "/home/doom/End/Thought/ABC_AFTERSCHOOL_PORN".IO,
    "/home/doom/End/Thought/ADDITIONS-THE_PAX_VOBISCUM_BITE".IO,
);

say @file_io_objs[3].WHAT;  # (Path)
say @file_io_objs[3].Str;   # doom/End/Stage/Mirthless/doomfiles/13CLOCKS.html

for @file_io_objs -> $f {
#    $f.say if $f ~~ /^\//; # any that begin with a slash 
    $f.say if $f ~~ /\.html$/;  # any that end with .html
}

## p5 regex
## (?^x: [0-9cA-Z_-]{3,} )
