#!/usr/bin/env raku
# 
# trial_runs_dir.raku            26 Nov 2023 

use v6;

say "current working directory: ", $*CWD.Str;

say dir()>>.WHAT; # (Seq)

say dir().map({say $_.Str});

# two space name.txt
# no_space.txt
# (True True)

## So, dir() returns a sequence, and you've got to do something to pull the elements out of it.

say dir().List;
