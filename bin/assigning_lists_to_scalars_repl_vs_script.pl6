#!/usr/bin/env perl6
# 
# assigning_lists_to_scalars_repl_vs_script.pl6      04 Oct 2020 

## William Michels raised an issue about list assignment to scalars.
## When working in the repl, there's a simple mistake that's hard to debug
## with existing messaging:

use v6;

# > my $list1 = 4, 3, 2, 1;
# (4 3 2 1)
# > say $list1
# 4
# > my $list2 = 1, 2, 3, 4;
# (1 2 3 4)
# > say $list2
# 1
# > 

my $list1 = 4, 3, 2, 1;
say $list1.WHAT;
say $list1;

my $list2 = (4, 3, 2, 1);
say $list2.WHAT;
say $list2;


## this gives you a warning in script form (in the repl it doesn't):

# WARNINGS for /home/doom/End/Cave/Perl6/bin/bill_q7uestion_lists_ints.pl6:
# Useless use of constant integer 3 in sink context (lines 20, 20)
# Useless use of constant integer 1 in sink context (lines 20, 20)
# Useless use of constant integer 2 in sink context (lines 20, 20)
# (Int)
# 4
# (List)
# (4 3 2 1)

## The repl echos the value of the *rh*, not the lh.
## so it *looks* like it's telling you you succesfully 
## assigned a list to a scalar, though you only get the first item--
## without parens on the list.  With parens it works.
## 
# repl:
# > my $list1 = 4, 3, 2, 1;
# (4 3 2 1)                   ###  repl bug?  
# > say $list1.WHAT;
# (Int)
# > say $list1;
# 4


## repl:

# my @array1 = 4, 3, 2, 1;
# [4 3 2 1]
# > say @array1;
# [4 3 2 1]
# > say @array1.WHAT;
# (Array)
