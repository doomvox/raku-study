#!/home/doom/End/Cave/Raku/bin/raku_gh

# Subject that came up in discussion of weekly challenge on July 12:
# 
# ***** TODO  (|@a, |@b) vs [|](@a, @b) bs. (@a, @b)>>|


## bruce's approach involved taking a square matrix and a [Z] inversion of it, then slipping the two out, 
## i think so they can be merged together.


my @a = (1, 2, 3),
        (4, 5, 6),
        (7, 8, 9);

say @a; # [(1 2 3) (4 5 6) (7 8 9)]


say [Z] @a; # ((1 4 7) (2 5 8) (3 6 9))


my @wrong = (@a, [Z] @a);
say @wrong; # [[(1 2 3) (4 5 6) (7 8 9)] ((1 4 7) (2 5 8) (3 6 9))]

my @merged = (| @a, | [Z] @a);
say @merged;
