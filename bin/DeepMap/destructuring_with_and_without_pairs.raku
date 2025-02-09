#!/usr/bin/env raku
# 
# destructuring_with_and_without_pairs.raku            26 Jan 2025 

use v6;

## https://github.com/rakudo/rakudo/issues/5718

## This works:

for <a b c>.combinations(2) -> ($a,$b) {
    say "a: $a";
    say "b: $b";
}
# a: a
# b: b
# a: a
# b: c
# a: b
# b: c

for <a b c>.combinations(2) -> $thingie {
    say "thingie: $thingie", " ", $thingie.WHAT;
}
# thingie: a b (List)
# thingie: a c (List)
# thingie: b c (List)


## Another example of "pair destructuring" problem:
# say "===";
# for <a b c>.pairs -> ($a,$b) {
#     say "$a, $b"
# }
# # Too few positionals passed to '<anon>'; expected 2 arguments but got 0 in sub-signature
# #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/t/Deepmap/destructuring_with_and_without_pairs.raku line 31


say "===";
for <a b c>.pairs -> $a {
    say "$a", " ", $a.WHAT;
}
# 0	a (Pair)
# 1	b (Pair)
# 2	c (Pair)

say "===";

## This has problems:

# for <a b c>.pairs.combinations(2) -> ($a,$b) {
#     say "$a, $b"
# }

# # Too few positionals passed to '<anon>'; expected 2 arguments but got 0 in sub-signature
# #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/t/Deepmap/destructuring_with_and_without_pairs.raku line 32


## Marton's theory:
##   Destructuring uses same logic as signatures.
##   Pairs look like *named arguments*.



# for <a b c d e f>.pairs.combinations(2) -> ($a,$b,$c,$d) {
#      say "$a, $b, $c, $d"
# }

# ## Too few positionals passed to '<anon>'; expected 4 arguments but got 0 in sub-signature
