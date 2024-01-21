#!/usr/bin/env raku
# 
# bruce_gray.raku            21 Jan 2024 

use v6;


my %h;
%h<a> = 42;
# ...
my ($k, $v) = "a", 43;
die if %h{$k}:exists and %h{$k} != $v;
%h{$k} = $v;
