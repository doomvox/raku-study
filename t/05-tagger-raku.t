#!/usr/bin/env perl6
# 
# 05-tagger-raku.t            15 Jun 2022 

use v6;


my $dat_loc = $*PROGRAM.parent.add('dat');

my $tree = "$dat_loc/tree1";

## if tree1 exists, cut it

my $tar = "$dat_loc/tree1_original.tar.gz";

chdir( $tree );

# ====
#  sheet of cheats

# external commands without shell:
# my $arg = 'Hello';
# my $captured = run('echo', $arg, :out).out.slurp;
# my $captured = run(«echo "$arg"», :out).out.slurp;


# using shell:
# my $arg = 'Hello';
# my $captured = shell("echo $arg", :out).out.slurp;
# my $captured = qqx{echo $arg};


## Try to make errors into warnings
#   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# ===
# Author:  doom@kzsu.stanford.edu

