#!/usr/bin/env raku
# 
# spurts_come_in_love.raku            07 Sep 2025 

use v6;

my $fh = "/home/doom/tmp/Untitled_test_spurt".IO;
"/home/doom/tmp/Untitled_input".IO.slurp.subst("Hello","Hi") andthen spurt($fh, $_, createonly => True); 
## Failed to open file /home/doom/tmp/Untitled_test_spurt: File exists

"/home/doom/tmp/Untitled36".IO.slurp.subst("Hello","Hi") andthen spurt($fh, $_, createonly => True); 

my $fh = "Untitled_test_spurt".IO; "Untitled4".IO.slurp.subst("Hello","Hi") andthen spurt($fh, $_, createonly => True); 

my $fh = "Untitled4_bak".IO; "Untitled4".IO.slurp.subst(:global, "Hello ","Hi ") andthen spurt($fh, $_, :createonly);
