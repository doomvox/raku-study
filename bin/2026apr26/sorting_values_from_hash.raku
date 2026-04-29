#!/usr/bin/env raku

## From an old stackoverflow question:
##  https://stackoverflow.com/questions/56067089/raku-sorting-hash-by-values-and-using-kv
## Accepted answer by Brad Gilbert



my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
my @level    = 7, 6, 4, 8, 5, 6, 5;
my %threat = @monsters Z=> @level;
say %threat;
# {basilisk => 7, behemoth => 4, chimera => 6, leviathan => 8, manticore => 5, minotaur => 6, ziz => 5}

# Works: sorts hash on values, largest first
for %threat.sort(*.value).reverse -> $p {
    say $p.value, "\t", $p.key;
}

# 8	leviathan
# 7	basilisk
# 6	chimera
# 6	minotaur
# 5	ziz
# 5	manticore
# 4	behemoth

## I like that one well enough, it's readable, and more-or-less does the job

## The stackoverflow answer plays with *.invert a lot in order to (somehow) get
## tie-breaking using the name in the key-- a nice touch, it has me looking up "invert"...

## The documentation is precise but not at all clear because of the need to cover multiple cases 
## ("If the .value of the invocant is NOT an Iterable, ..."):
## 
##   https://docs.raku.org/routine/invert
## 
## Code examples use colon pairs to key key-values, and they still
## strike me as poor on readability.

## It does something like .antipair, but .antipair does something
## slightly different, so both exist. (Great.)





## I find it mildly disappointing that I can't just do something like 
##
##   for %threat.sort(*.value).reverse.kv -> $monster, $level {
##
## That puts a sequence index into $monster, and $level gets a pair
## that still needs to be split (?)

for %threat.sort(*.value).reverse.kv -> $monster, $level {
    say $monster, '  ', $level;
}

# 0  leviathan => 8
# 1  basilisk => 7
# 2  chimera => 6
# 3  minotaur => 6
# 4  ziz => 5
# 5  manticore => 5
# 6  behemoth => 4



# # Source - https://stackoverflow.com/a/56070395
# # Posted by Brad Gilbert
# # Retrieved 2026-04-28, License - CC BY-SA 4.0

# # default $_
# for %h.sort: *.invert {
#   say .key ~ ' => ' ~ .value
# }

# # extract as named attributes
# for %h.sort: *.invert -> (:$key, :$value) {
#   say "$key => $value"
# }

# # more explicit form of above
# for %h.sort: *.invert -> Pair $ (:key($key), :value($value)) {
#   say "$key => $value"
# }

# # Retrieved 2026-04-28, License - CC BY-SA 4.0
# 
# say %h.sort(*.invert).map(*.kv).perl;
# # (("c", 1).Seq, ("b", 2).Seq, ("a", 3).Seq).Seq
# say %h.sort(*.invert)».kv.perl;
# # (("c", 1).Seq, ("b", 2).Seq, ("a", 3).Seq).Seq

# # default $_
# for %h.sort(*.invert).map(*.kv) {
#   say .key ~ ' => ' ~ .value
# }

# # extract inner positional parameters
# for %h.sort(*.invert).map(*.kv) -> ($k,$v) {
#   say "$k => $v"
# }

# # `».kv` instead of `.map(*.kv)`
# for %h.sort(*.invert)».kv -> ($k,$v) {
#   say "$k => $v"
# }


# # Source - https://stackoverflow.com/a/56070395
# # Posted by Brad Gilbert
# # Retrieved 2026-04-28, License - CC BY-SA 4.0
# 
# say %h.sort(*.invert).map(*.kv).flat.perl;
# # ("c", 1, "b", 2, "a", 3).Seq
# say %h.sort(*.invert)».kv.flat.perl;
# # ("c", 1, "b", 2, "a", 3).Seq

# for %h.sort(*.invert).map(*.kv).flat -> $k, $v {
#   say "$k => $v"
# }

# for %h.sort(*.invert)».kv.flat -> $k, $v {
#   say "$k => $v"
# }
