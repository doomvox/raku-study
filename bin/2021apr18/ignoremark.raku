#!/usr/bin/env perl6
# 
# ignoremark.raku            18 Apr 2021 

use v6;

say so 'a' ~~ rx/ä/;                # OUTPUT: «False» 
say so 'a' ~~ rx:ignoremark /ä/;    # OUTPUT: «True» 
say so 'ỡ' ~~ rx:ignoremark /o/;    # OUTPUT: «True> 

say so 'U' ~~ rx:ignoremark /Ü/;    
# True
say so 'u' ~~ rx:ignoremark /Ü/;    
# False
say so 'u' ~~ rx:ignoremark :i /Ü/;    
# True
say so 'aU' ~~ rx:ignoremark /äÜ/;    
# True


say "1:\t", $/ if "בראשית" ~~ m/ בְּרֵאשִׁית /;
say "2:\t", $/ if "בראשית" ~~ m:ignoremark/ בְּרֵאשִׁית /; #OUTPUT: ｢בראשית｣
say "3:\t", $/ if "בְּרֵאשִׁית" ~~ m/ בראשית /;
say "4:\t", $/ if "בְּרֵאשִׁית" ~~ m:ignoremark/ בראשית /; #OUTPUT: ｢בְּרֵאשִׁית｣ 
