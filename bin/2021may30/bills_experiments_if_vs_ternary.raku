#!/usr/bin/env perl6
# 
# bills_experiments_if_vs_ternary.raku            30 May 2021 

use v6;

## yary on basics of if:
if (1) {'a'} else {'nope'}
# a
if (0) {'a'} else {'nope'}
# nope 

my $str = if (1) {'a'} else {'nope'};
say $str;
# Word 'if' interpreted as a listop; please use 'do if' to introduce the statement control word




my $str = do if (1) {'a'} else {'nope'};


# exit;

## Bill questions

# # Starting with a series of Daniel Sockwell posts on IRC... 
# say (1 ?? do {my $a = 0; $a+1} !! 'false');
# # 1 
# # This is what I tried with if_else: 
# my $d = 0; ( if $d {my $a = 0; ($a+1).Bool} else {my $a = 0; ($a).Bool}).say;
# ## False 

# > my $d = 0; ( $d ?? {my $a = 0; ($a+1).Bool} !! {my $a = 0; ($a).Bool}).say
# -> ;; $_? is raw = OUTER::<$_> { #`(Block|140328649538984) ... } 
# > my $d = 1; ( $d ?? {my $a = 0; ($a+1).Bool} !! {my $a = 0; ($a).Bool}).say
# -> ;; $_? is raw = OUTER::<$_> { #`(Block|140328649539920) ... } 
# > my $d = 0; ( $d ?? do {my $a = 0; ($a+1).Bool} !! do {my $a = 0; ($a).Bool}).say
# False 

# say
#  (1 ?? do
#   { my $a = 0;
#     $a+1
#    } !! 'false');
