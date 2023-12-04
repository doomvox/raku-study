#!/usr/bin/env raku
# 
# mark_a_question_match_warning.raku            03 Dec 2023 

use v6;

say so "I used Photoshop"   ~~ m:i/   photoshop /;

say "===";

say so "I used Photoshop"   ~~ m:i/   photo shop /;   # this warns
say so "I used Photoshop"   ~~ m:i/   photo  shop /;  # this *doesn't* warn

say "===";

say so "I used Photoshop"   ~~ m:i:s/   photo shop /;


say so "I used Photoshop"   ~~ m:i/   photo ' ' shop /;

say so "I used Photoshop"   ~~ m:i/   photo \s shop /;





# Q: how do you turn off warnings (technically: "worries") you don't want?
# A: we're not sure.

# A "worry" is a compile-time "warning"

