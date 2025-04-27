#!/usr/bin/env raku
# 
# martons_complaint_about_colon_d_colon_u_etc.raku            27 Apr 2025 

use v6;

# https://github.com/doomvox/raku-study/discussions/20

my Int $x = 42;
dd $x;  # Int $x = 42
$x = Int;
say "okay?"; # okay?

my Int:D $y = 42;
dd $y;  # Int $y = 42
# $y = Int;
## Type check failed in assignment to $y; expected Int:D but got Int (Int) (perhaps Nil was assigned to a :D which had no default?)

$y = Int:D;
say "okay still?";

# $y = Int;
