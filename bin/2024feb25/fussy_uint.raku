#!/usr/bin/env raku
# 
# fussy_uint.raku            25 Feb 2024 

use v6;

## ToddAndMargo was surprised this doesn't error out
##   my uint16 $x = -1;

subset NonNegativeInt of Int where * >= 0;
