#!/usr/bin/env raku

my $x = do for 0..3 {$_};
say $x; # (0 1 2 3)
say $x.WHAT;  #(List)

