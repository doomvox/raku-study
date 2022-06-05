#!/usr/bin/env perl6
# 
# trial-mkdir.raku            05 Jun 2022 

use v6;

my $HOME = %*ENV{'HOME'};   # Q: is there a "use Env" that imports these?

my $tmp = "$HOME/tmp";  # I always have one of these
say so $tmp.IO.d;       # True

# Hm, how do I change the current directory?
# https://docs.raku.org/routine/chdir

#  Contrary to the name, the .chdir method does not change any
#  directories, but merely concatenates the given $path to the
#  invocant and returns the resultant IO::Path.

# WTF?


## Has the system temporary directory?  Cool.
say $*TMPDIR; # "/tmp".IO

## This tells you ".", which is true but thoroughly uninteresting
say $*SPEC.curdir; # .




# chdir();



# my $dir = "head";

# $dir.IO.mkdir;


# ===
# Author:  doom@kzsu.stanford.edu

