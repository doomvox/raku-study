#!/usr/bin/env perl6
# 
# trial-mkdir.raku            05 Jun 2022 

use v6;

my $HOME = %*ENV{'HOME'};   # Q: is there a "use Env" that imports these?

my $tmp = "$HOME/tmp";  # I always have one of these
say so $tmp.IO.d;       # True

# Hm, how do I change the current directory?
# https://docs.raku.org/routine/chdir

# chdir();



# my $dir = "head";

# $dir.IO.mkdir;


# ===
# Author:  doom@kzsu.stanford.edu

