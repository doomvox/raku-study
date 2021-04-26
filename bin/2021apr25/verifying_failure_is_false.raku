#!/usr/bin/env perl6
# 
# verifying_failure_is_false.raku            26 Apr 2021 

use v6;

say '333'.Numeric.WHAT;            # (Int)
say 'thureesies'.Numeric.WHAT;     # (Failure)

if '3'.Numeric { say 'true!' } else { say 'not.' }
if 'three'.Numeric { say 'true!' } else { say 'not.' }
