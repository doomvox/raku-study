#!/usr/bin/env raku
# 
# toddandmargo_sort.raku            10 Mar 2024 

use v6;


<afoo12 afoo2>.sort(*.split(/\d+/, :kv).map({ (try .Numeric) // $_}).List);

