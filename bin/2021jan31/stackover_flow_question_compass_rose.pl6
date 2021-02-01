#!/usr/bin/env perl6
# 
# stackover_flow_question_compass_rose.pl6            31 Jan 2021 

use v6;

## william michels solution:

my @cardinal = <a b c d>;
my @intercard = ((@cardinal Z @cardinal[1..*-1,0].flat)>>.join); #between cardinal
my @pre_half  = ((@cardinal Z @intercard)>>.join).flat;
my @post_half = (@intercard Z @cardinal[1..*-1,0].flat)>>.join;
my @half = ((@cardinal Z @intercard).flat Z ([Z] @pre_half, @post_half).flat).flat;
say @half;

@half .= map( *.trans("abcd" => "NESW") );
@half .= map( { S:g/ <((NE|ES|SW|WN)<same>(.))>$ /$1$0/} );
@half .= map( *.subst(:g, "ES","SE") );
@half .= map( *.subst(:g, "WN","NW") );
say @half;

