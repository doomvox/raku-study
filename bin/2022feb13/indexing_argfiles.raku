#!/usr/bin/env perl6
# 
# indexing_argfiles.raku            13 Feb 2022 

use v6;

## William Michels
## https://github.com/rakudo/rakudo/issues/4767


# ~$ raku -e '$*ARGFILES[0].lines.join("\n").say;' file1.txt file2.txt
# A,info1,info2
# 234,info3,info4
# CD,info5,info6

# ~$ raku -e '$*ARGFILES[1].lines.join("\n").say;' file1.txt file2.txt
# 234,ccc,bb
# CD,aaa,dd

$*ARGFILES.lines[0..3].join("\n").say;
# $*ARGFILES[0].lines.join("\n").say;

$*ARGFILES.say;

say '===';

my $a = 15;
say $a[0];
