#!/usr/bin/env raku
# 
# unixstackexchange_d_prob-bg.raku            16 Apr 2023 

use v6;

# raku -ne '
# .say and next if .contains: "DEG =";
# next if /«\d\.\d\d\d\-\d\d\d»/;
# say "     ", .words[0,4]».subst("D","E").join("    ");
# ' so_1.dat


for lines {
    .say and next if .contains: "DEG =";
    next if /«\d\.\d\d\d\-\d\d\d»/;
    say "     ", .words[0,4]».subst("D","E").join("    ");
}

