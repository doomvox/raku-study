#!/usr/bin/env raku
# 
# sigiless.raku            05 Jan 2025 

use v6;

# my \degrees = pi / 180;
# my \θ       = 15 * degrees;


sub hm {
    say "Hm....";
}

hm;

## Hm....


my \hm = 'human';
say hm; # human

say hm();
# Hm....
# True

## \hm = 'undaunted';  # Cannot modify an immutable Capture (\("human"))

hm := 'bound!';
# Cannot bind to 'hm' because it is a term and terms cannot be rebound

say hm;


