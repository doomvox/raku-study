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

# I'm going to be  matching upper-case file names, with or without a file extension
# So when things work we get this output:
#   /home/doom/tmp/files/SNARK_HUNT.html
#   /home/doom/tmp/files/STILL_WATERS

# matching upper-case file names, with or without a file extension (works)
for @files -> $f { 
    $f.say if $f ~~ m/\/<[A..Z_]>+?[\.|$]/;  # 
}

say "---";
# doing the same with a perl5-style regex (works, with extra capture)
for @files -> $f { 
    $f.say if $f ~~ m:P5/\/[A-Z_]+?(\.|$)/;  
}

say "---";
# doing the same with a perl5-style regex (avoiding extra capture)
for @files -> $f { 
    $f.say if $f ~~ m:P5/\/[A-Z_]+?(?:\.|$)/;  
}
## Hm... that works too-- could've sworn I've seen that flop


say "---";
# doing the same with a perl5-style regex (avoiding extra capture)
for @files -> $f { 
    $f.say if $f ~~ m:P5/\/(?^x:[A-Z_]+?)(?:\.|$)/;   ## This doesn't work
#    $f.say if $f ~~ m:P5/\/([A-Z_]+?)(?:\.|$)/;      ## but this does
}

# This perl5 construct isn't supported? "(?^x: ... )"
#  embedded pattern-match modifiers 
#  turned on with ^, turned off with -


say "---";

printf "%20s", "Trying raku style: ";
if "this" ~~ m/ ^ <[a..z]> / { say "good"; } else { say "ng"; }

printf "%20s", "Trying P5 without (?^x: ";
if "this" ~~ m:P5/^[a-z]/ { say "good"; } else { say "ng"; }

printf "%20s", "Trying P5 with (?^x: ";
if "this" ~~ m:P5/(?^x: ^ [a-z] )/ { say "good"; } else { say "ng"; }

printf "%20s", "Trying P5 with (?^i: ";
if "this" ~~ m:P5/(?^i: ^ [a-z] )/ { say "good"; } else { say "ng"; }


# Trying raku style: good
# Trying P5 without (?^x: good
# Trying P5 with (?^x: ng
# Trying P5 with (?^i: ng
