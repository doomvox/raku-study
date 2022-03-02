#!/usr/bin/env perl6
# 
# issue_4805_explorations.raku            01 Mar 2022 

use v6;


{
   my $a1 = 1, 2, 3;
   my $a2 = {a=>1}, {b=>2}, {c=>3};

   say $a1;
   say $a2;

   my $a3 = ( {a=>1}, {b=>2}, {c=>3} );
   say $a3;
   say $a3.WHAT;
}
