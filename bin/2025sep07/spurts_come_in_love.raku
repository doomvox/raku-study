#!/usr/bin/env raku
# 
# spurts_come_in_love.raku            07 Sep 2025 

use v6;

my $fh = "/home/doom/tmp/Untitled_test_spurt".IO;
"/home/doom/tmp/Untitled4".IO.slurp.subst("Hello","Hi") andthen spurt($fh, $_, createonly => True); 
## Failed to open file /home/doom/tmp/Untitled_test_spurt: File exists

"/home/doom/tmp/Untitled37".IO.slurp.subst("Hello","Hi") andthen spurt($fh, $_, createonly => True); 
