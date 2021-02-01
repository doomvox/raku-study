#!/usr/bin/env perl6
# 
# stackover_flow_question_compass_rose.pl6            31 Jan 2021 

use v6;

## willima michels solution:

@half.=map(*.trans("abcd" => "NESW"));
@half.=map({ S:g/ <((NE|ES|SW|WN)<same>(.))>$ /$1$0/});
@half.=map(*.subst(:g, "ES","SE"));
@half.=map(*.subst(:g, "WN","NW"));
say @half;

