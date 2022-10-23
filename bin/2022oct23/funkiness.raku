#!/usr/bin/env perl6
# 
# funkiness.raku            23 Oct 2022 

use v6;

sub hm {
  constant $++;
}
# Could not evaluate arguments
# ------>   use constant $++⏏;

sub hm {
  use constant $++;
}

