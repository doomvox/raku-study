#!/usr/bin/env raku
# 
# nodemap.raku            13 Jul 2025 

use v6;


{ what => "is", this => "thing" }.nodemap( *.flip ).say;
 #  {this => gniht, what => si}

# { what => "is", this => "thing" }.map( *.flip ).say;
## No such method 'flip' for invocant of type 'Pair'.  Did you mean any of
## these: 'Slip', 'flat', 'skip'?

{ what => "is", this => "thing" }.map( *.Slip.flip ).say;
# (gniht	siht si	tahw)

{ what => "is", this => "thing" }.map( *.kv.flip ).say;
# (gniht siht si tahw)

{ what => "is", this => "thing" }.map( *.values.flip ).say;
# (si gniht)

## 'Tis true it feels awkward to get the nodemap behavior with a simple map
##  Keep the keys unchanged, but munge each value...


{ what => "is", this => "thing" }.deepmap( *.flip ).say;
