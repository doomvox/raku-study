#!/usr/bin/env perl6
# 
# trial-mkdir.raku            05 Jun 2022 

use v6;

my $HOME = %*ENV{'HOME'};

my $tmp = "$HOME/tmp";
say so $tmp.IO.d;

# chdir();

# my $dir = "head";

# $dir.IO.mkdir;


# ===
# Author:  doom@kzsu.stanford.edu

