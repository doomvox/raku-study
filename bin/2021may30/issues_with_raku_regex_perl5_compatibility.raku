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
    $f.say if $f ~~ m:P5/\/(?^x:[A-Z_]+?)(?:\.|$)/;  
}

