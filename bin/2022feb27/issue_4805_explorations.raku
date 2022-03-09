#!/usr/bin/env perl6
# 
# issue_4805_explorations.raku            01 Mar 2022 

use v6;


{
   my $a1 = 1, 2, 3;  # line 9
   # Useless use of constant integer 3 in sink context (lines 9, 9)
   # Useless use of constant integer 2 in sink context (lines 9, 9)
   my $a2 = {a=>1}, {b=>2}, {c=>3};
   # No warnings
   say $a1;  # 1           the first item, "1", not the list "1, 2, 3"
   say $a2;  # {a => 1}    again, just the first item

   my $a3 = ( {a=>1}, {b=>2}, {c=>3} );
   say $a3;       ## ({a => 1} {b => 2} {c => 3})     a list of pairs
   say $a3.WHAT;  ## (List)
}

1
{a => 1}
({a => 1} {b => 2} {c => 3})
(List)
