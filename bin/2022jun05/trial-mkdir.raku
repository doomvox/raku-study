#!/usr/bin/env perl6
# 
# trial-mkdir.raku            05 Jun 2022 

use v6;

my $HOME = %*ENV{'HOME'};   # Q: is there a "use Env" that imports these?

my $tmp = "$HOME/tmp";  # I always have one of these
say so $tmp.IO.d;       # True

# Hm, how do I change the current directory?
# https://docs.raku.org/routine/chdir
#
#    Contrary to the name, the .chdir method does not change any
#    directories, but merely concatenates the given $path to the
#    invocant and returns the resultant IO::Path.
#
#  Uh... WTF?
#  bg: read down further, the function form works

## This tells you ".", which is true but thoroughly uninteresting
say $*SPEC.curdir; # .

say $*CWD; # "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jun05".IO

# Ah: you can change directories by assigning to $*CWD?
$*CWD = $tmp.IO;
say $*CWD; # "/home/doom/tmp".IO

my $dir = "ticks";  # path relative to current directory
$dir.IO.mkdir;
say so $dir.IO.d; # True

## This has the system temporary directory?  Cool.
say $*TMPDIR; # "/tmp".IO




# ===
# Author:  doom@kzsu.stanford.edu

