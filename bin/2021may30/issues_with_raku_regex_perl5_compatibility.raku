#!/usr/bin/env perl6
# 
# issues_with_raku_regex_perl5_compatibility.raku            22 May 2021 

use v6;

my @files = (
    '/home/doom/tmp/files/some.txt',
    '/home/doom/tmp/files/SNARK_HUNT.html',
    '/home/doom/tmp/files/some_other_thing',
    '/home/doom/tmp/files/STILL_WATERS',
    '/home/doom/tmp/files/SomethingOrOther',
);

# matching upper-case file names, with or without a file extension.

$f.say if $f ~~ m/\/<[A..Z_]>+?(\.|$)/;  # 
