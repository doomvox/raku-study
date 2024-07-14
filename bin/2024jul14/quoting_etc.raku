#!/usr/bin/env raku
# 
# quoting_etc.raku            14 Jul 2024 

use v6;


'thing' => $thing

$hash{thing} = $thing;

%hash{'thing'} = $thing;
%hash<thing> = $thing;

my $word = <word>;
my @words = <one thing after another>;
my $one_string = 'one thing after another';

my @words = q:w"one thing after another";

my @words = <<one thing after another $thing>>;

my @words = «one thing after another $thing»;

