#!/usr/bin/env raku
# 
# laziness.raku            30 Jun 2024 

use v6;


(1 .. 100).is-lazy; # False 
(1 .. Inf).is-lazy; # True
