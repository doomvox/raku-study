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

say dir().List; # ("two space name.txt".IO "no_space.txt".IO)

say dir().List>>.Str; # (two space name.txt no_space.txt)

# Also, the elements are IO objects.

say "===";
dir().List.map({ dd($_) });

# IO::Path.new("two space name.txt", :SPEC(IO::Spec::Unix), :CWD("/home/doom/tmp/TreeAlpha"))
# IO::Path.new("no_space.txt", :SPEC(IO::Spec::Unix), :CWD("/home/doom/tmp/TreeAlpha"))

say "===";
dir().List.map({ "'$_'" }).say;
# ('two space name.txt' 'no_space.txt')

say "===";
my @items = dir( test => {/^n/} );
for @items -> $item {
    say $item.Str;
}
# no_space.txt
