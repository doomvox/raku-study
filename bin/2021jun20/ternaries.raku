#!/usr/bin/env perl6
# 
# ternaries.raku            14 Jun 2021 

use v6;

# Backing up to take a look at raku ternaries again.

# My take (prejudice?) on ternaries, by the way, is that they have
# readability problems compared to if/else constructs, and should
# be used sparingly, e.g. when the return from the ternary is the
# goal.

# https://perlmaven.com/the-ternary-operator-in-perl
# Gabor Szabor has a good perl ternary example:
# 
#  my $smaller = $x < $y ? $x : $y;

say_smaller( 3, 4 );  # 3
say_smaller( 7, 4 );  # 4

sub say_smaller( $x, $y ) {
  my $smaller = $x < $y ?? $x !! $y;
  say $smaller;
}

# In older perl code (back before the defined-or construct "//") we
# would often do this:



