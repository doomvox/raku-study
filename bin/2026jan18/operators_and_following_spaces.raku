#!/usr/bin/env raku
# 
# operators_and_following_spaces.raku            18 Jan 2026 

use v6;

my @a = qw<alpha beta gamma>;
say @a;

my @b = qw <alpha beta gamma>;
say @b;

my @c = qw (alpha beta gamma);
say @c;

# my @d = qw(alpha beta gamma);
# say @d;

# # ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026jan18/operators_and_following_spaces.raku
# # Undeclared routines:
# #     alpha used at line 16
# #     beta used at line 16
# #     gamma used at line 16
# #     qw used at line 16
