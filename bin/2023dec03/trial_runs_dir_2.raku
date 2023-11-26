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

# Note: there's a "default" test block that filters out "." and ".."
# Can you disable that somehow?  It's still in effect if you define your own "test".

{
    say "===";
    # Yes, this code example is in the docs ((doesn't make much sense to me, though)):
    for dir(test => *) -> $file {
        say $file;
    }

    # ".".IO
    # "..".IO
    # "a.txt".IO
    # "a.dat".IO
    # "b.txt".IO
    # "c.txt".IO
    # "d.txt".IO
    # "e.txt".IO
    # "Sub1".IO
    # "Sub2".IO
}

{
    say "===";
    # Yes, this code example is in the docs ((doesn't make much sense to me, though)):
    for dir(test => * ,  test => {/^a/} ) -> $file {
        say $file;
    }

    # "a.txt".IO
    # "a.dat".IO
}
