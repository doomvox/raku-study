#!/usr/bin/env raku
# 
# multipop.raku            13 Jul 2025 

use v6;

## Rob Ransbottom idea to add a numeric parameter to things like pop and shift:
# Syntax would be:
#   my @top_three = pop( @items, 3 );

# Q: what are the existing ways of doing it? 

# splice to do three shifts:
my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com
my @three = @monsters.splice(0, 3);
say @three;
## [goategon hargon esterk]
## gives us the first three, preserving the order

# splice to do an 

my @monsters = < goategon hargon esterk zoma hornbeat chopclown slabbit boneslave >; ## monster-db.com
