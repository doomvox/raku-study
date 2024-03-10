#!/usr/bin/env raku
# 
# toddandmargo_sort.raku            10 Mar 2024 

use v6;

## strings with text prefix and numeric suffix, where the numeric is sorted numerically


<afoo12 afoo2>.sort(*.split(/\d+/, :kv).map({ (try .Numeric) // $_}).List);

