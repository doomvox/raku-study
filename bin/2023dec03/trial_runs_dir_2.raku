#!/usr/bin/env raku
# 
# trial_runs_dir_2.raku            26 Nov 2023 

use v6;

# SYNOPSIS
#  cd /home/doom/tmp/TreeBeta
# 
#  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023dec03/trial_runs_dir.raku

# Contents of TreeBeta: multilevel tree, files with different extensions

say "current working directory: ", $*CWD.Str;

{
    my @items = dir( test => {/^a/} );   # (1) this "exhausts" the Seq  (2) test filters against *name*
    for @items -> $item {
        say $item.Str;
    }
    # a.txt
    # a.dat
}

{
    # you can have multiple test blocks, they act in series
    say "===";
    my @items = dir( test => { /^a/ }, test => { /\.dat$/ } );  
    for @items -> $item {
        say $item.Str;
    }
    # a.dat
}
