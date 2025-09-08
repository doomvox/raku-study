#!/usr/bin/env raku
# 
# spurts_come_in_love.raku            07 Sep 2025 

use v6;

my $fh = "Untitled_test_spurt".IO;
"Untitled4".IO.slurp.subst("Hello","Hi") andthen spurt($fh, $_, createonly => True); 


