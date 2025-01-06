#!/usr/bin/env raku
# 
# third_max.raku            05 Jan 2025 

use v6;

## An old weekly challenge problem was the "third maximum"
## doing it with the triangle operator

{ say [\max] ();  # ()
  }

{ say [max] ();  # -Inf
  }

say "===";

{
    my @n = 9, 3, 137, 23, 13, 27, 64;
    say @n;
    say '---';
    say [\max] @n;
       ##  [9 3 137 23 13 27 64]
    say '---';
    say [\min] @n;
       ##  

    say ([\max] @n)[2];  # 137, wrong answer
    }

{
    my @n = 9, 3, 137, 23, 13, 27, 64;
    say ( @n.sort )[2];  # 13
}
