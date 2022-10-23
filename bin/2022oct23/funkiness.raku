#!/usr/bin/env perl6
# 
# funkiness.raku            23 Oct 2022 

use v6;

sub hm {
  constant $++;
  # Missing initializer on constant declaration
}


constant  1, * * $++ .. 3;


# sub hm {
#   use constant $++;
# }

