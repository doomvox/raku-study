#!/usr/bin/env perl6
# 
# raku_hashes_compared_to_perl.raku            20 Nov 2022 

use v6;


my %response = ( success => 1,
                 stuff   => 'whateva',
                 );

say %response{'success'};
## 1

## say %response<success>;

say %response{ success() };
# ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022nov20/raku_hashes_compared_to_perl.raku
# Undeclared routine:
#     success used at line 16. Did you mean 'succeed'?
