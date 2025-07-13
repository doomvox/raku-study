#!/usr/bin/env raku
# 
# nodemap.raku            13 Jul 2025 

use v6;


{ what => "is", this => "thing" }.nodemap( *.flip ).say;
 #  {this => gniht, what => si}

{ what => "is", this => "thing" }.map( *.flip ).say;
# No such method 'flip' for invocant of type 'Pair'.  Did you mean any of
# these: 'Slip', 'flat', 'skip'?

