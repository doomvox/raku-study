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

# $*ARGFILES.lines[0..3].join("\n").say;
 # $*ARGFILES[0].lines.join("\n").say;


## On my system right now:
#   ls ~/tmp/a*
#   /home/doom/tmp/a.1  /home/doom/tmp/alphabet.txt  /home/doom/tmp/arcsound.txt

## Running like this gets you three files:
##  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022feb13/indexing_argfiles.raku ~/tmp/a*

say @*ARGS;  
# [/home/doom/tmp/a.1 /home/doom/tmp/alphabet.txt /home/doom/tmp/arcsound.txt]

say @*ARGS[1];
# /home/doom/tmp/alphabet.txt

say @*ARGS[1].IO.lines;         ## gets the contents of the second file
# (ABCDEFGHIJKLMNOPQRSTUVWXYZ)


# say $*ARGFILES;         # IO::Handle<IO::Special.new("<STDIN>")>(opened)
# say $*ARGFILES.^name;   # IO::Handle

# # @*ARGS
# # @*ARGS is an array of Str containing the arguments from the command line.

# say "count of files: ", @*ARGS.elems;  # count of files: 3
# my @lines = $*ARGFILES.lines;
# say "count of lines: ", @lines.elems;  # count of lines: 614



# # my @lines2.push( @*ARGS>>.IO.lines );
# # push(@lines2, );
# # say "count of lines2: ", @lines2.elems;  # count of lines: 614
# # # count of lines2: 1


say '===';

my $a = 15;
say $a[0];  # 15 
# say $a[1];  # Index out of range. Is: 1, should be in 0..0

my $b = <a b c d e>;
say $b[1]; # b


# my $something = "b"[0];
# say $something.^name;



