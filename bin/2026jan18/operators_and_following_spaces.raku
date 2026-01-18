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

my @d = qw(alpha beta gamma);
say @d;
