#!/usr/bin/env raku
# 
# toddandmargo_sort.raku            10 Mar 2024 

use v6;

## strings with text prefix and numeric suffix, where the numeric is sorted numerically
## most likely: sort on the text prefix, then sort in numeric order within prefix

## Lizmat's solution:
say <afoo12 afoo2>.sort(*.split(/\d+/, :kv).map({ (try .Numeric) // $_}).List);
# (afoo2 afoo12)

@list = <abc123 abc0 abc3>;

@list .= sort: +*.match: / \d+ /;
