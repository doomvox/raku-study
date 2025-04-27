#!/usr/bin/env raku
# 
# martons_complaint_about_colon_d_colon_u_etc.raku            27 Apr 2025 

use v6;

# https://github.com/doomvox/raku-study/discussions/20

my Int $x = 42;
dd $x;  # Int $x = 42


my Int:D $y = 42;
dd $y;
# $y = Int;
