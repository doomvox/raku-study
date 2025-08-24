#!/usr/bin/env raku
# 
# discontinuous_integer_ranges.raku            24 Aug 2025 

use v6;

## https://github.com/Raku/problem-solving/issues/407


## jubilatious1 likes Rlang's "c()":

#     > c( 0 : 9, 1 : 10, 2 : 11 )
#      [1]  0 1 2 3 4 5 6 7 8 9 1 2 3 4 5 6 7 8 9 10 2 3 4 5 6 7 8 9
#           10 11

## pmichaud translates:

# > say flat (0...9),(1...10),(2...11);
# (0 1 2 3 4 5 6 7 8 9 1 2 3 4 5 6 7 8 9 10 2 3 4 5 6 7 8 9 10 11)

## Rlang:
#     > c( 11 : 2, 10 : 1, 9 : 0 )
#      [1] 11 10 9 8 7 6 5 4 3 2 10 9 8 7 6 5 4 3 2 1 9 8 7 6 5 4 3 2
#          1 0

# In raku:

# > say flat (11...2),(10...1),(9...0);
# (11 10 9 8 7 6 5 4 3 2 10 9 8 7 6 5 4 3 2 1 9 8 7 6 5 4 3 2 1 0)

# Seems pretty straightforward to me, actually. The pattern even works
# even for smart sequences:

# > say flat (1,2,4...64),(1,3,9...243);
# (1 2 4 8 16 32 64 1 3 9 27 81 243)

# If writing "flat" and parens is "just too much typing", one can
# undoubtedly create a local c() function equivalent that provides the
# flattening and whatever else is wanted. I don't think this specific
# use case is yet well enough understood or explored ...


sub c (@r) {
    say @r;
    my @out;
    while ( my $r = @r.pop ) {
        push @out, flat $r;
    }
    return | @out;
}


say c( 1..3 );
