#!/usr/bin/env raku
# 
# array_to_list.raku            21 Dec 2025 

use v6;

# https://raku-advent.blog/2025/12/17/day-17-an-issue-with-evaluation/#respond

# "The :view named argument to the .List method is an implementation
# detail that provides an optimized way to change an Array into an
# immutable List." 

## The code in question:
# method warnings() {
#     @!warnings ?? @!warnings.splice.List(:view) !! BEGIN ()
# } 

# Q: what does :view do for you?  Gets you an immutable list?
#    But then, how can you get a non-immutable list out of a .List call? (lists are always immutable)

my @nothing  = < nada nope bupkes >;

my @out1 = @nothing.List;
my @out2 = @nothing.List(:view);

say @out1;  # [nada nope bupkes]
say @out2;  # [nada nope bupkes]

dd @out1;   # Array @out1 = ["nada", "nope", "bupkes"]
dd @out2;   # Array @out2 = ["nada", "nope", "bupkes"]


## I remain puzzled by what :view could be doing for you,
## but I gather it's a detail we're not supposed to really get.
