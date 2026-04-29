#!/usr/bin/env raku

## From an old stackoverflow question:
##  https://stackoverflow.com/questions/56067089/raku-sorting-hash-by-values-and-using-kv
## Accepted answer by Brad Gilbert



my @monsters = < basilisk minotaur behemoth leviathan ziz chimera manticore >;
my @level    = 7, 6, 4, 8, 5, 6, 5;
my %threat = @monsters Z=> @level;
say %threat;
# {basilisk => 7, behemoth => 4, chimera => 6, leviathan => 8, manticore => 5, minotaur => 6, ziz => 5}

# WORKS: sorts hash on values, largest first
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


## I find it mildly disappointing that I can't just do something like 
##
##   for %threat.sort(*.value).reverse.kv -> $monster, $level {
##
## That puts a sequence index into $monster, and $level gets a pair
## that still needs to be split (?)

for %threat.sort(*.value).reverse.kv -> $monster, $level {
    say $monster, '  ', '|', $level, '|';
}

# 0  |leviathan => 8|
# 1  |basilisk => 7|
# 2  |minotaur => 6|
# 3  |chimera => 6|
# 4  |manticore => 5|
# 5  |ziz => 5|
# 6  |behemoth => 4|


## The stackoverflow answer plays with *.invert a lot in order to (somehow) get
## tie-breaking using the name in the key-- a nice touch, it has me looking up "invert"...

## The documentation is precise but not at all clear because of the need to cover multiple cases 
## ("If the .value of the invocant is NOT an Iterable, ..."):
## 
##   https://docs.raku.org/routine/invert


say "===";

# Again:
# WORKS: sorts hash on values, largest first
for %threat.sort(*.value).reverse -> $p {
    # say $p.WHAT; # (Pair)
    say $p.value, "\t", $p.key;
}

# 8	leviathan
# 7	basilisk
# 6	chimera
# 6	minotaur
# 5	ziz
# 5	manticore
# 4	behemoth

say "---";

for %threat.sort(*.invert).reverse -> $p {
    # say $p.WHAT; # (Pair)
    say $p.value, "\t", $p.key;
}

# 8	leviathan
# 7	basilisk
# 6	minotaur   ## result differs here, tie-breaker is a reverse sort on name
# 6	chimera
# 5	ziz
# 5	manticore
# 4	behemoth

say "---";

## swapping in .antipair for .invert gives you the same effect:
for %threat.sort(*.antipair).reverse -> $p {
    # say $p.WHAT; # (Pair)
    say $p.value, "\t", $p.key;
}

# 8	leviathan
# 7	basilisk
# 6	minotaur
# 6	chimera
# 5	ziz
# 5	manticore
# 4	behemoth

say "===";

## .invert does something like .antipair, but 
## slightly different, so both exist. (Great.)

{
    my $p = key => 6;
    say $p; # key => 6
    say $p.invert;   # (6 => key)
    say $p.antipair; # 6 => key

    say $p.invert.WHAT;   # (Seq)
    say $p.antipair.WHAT; # (Pair)

    ## So, in the loop examples above, is there single argument rule magic?


    my @stuff    =  %threat.sort(*.antipair).reverse;
    my @stuffier =  %threat.sort(*.invert).reverse;

    say @stuff;     
    say @stuffier;
# [leviathan => 8 basilisk => 7 minotaur => 6 chimera => 6 ziz => 5 manticore => 5 behemoth => 4]
# [leviathan => 8 basilisk => 7 minotaur => 6 chimera => 6 ziz => 5 manticore => 5 behemoth => 4]

    dd @stuff;     
    dd @stuffier;
# [:leviathan(8), :basilisk(7), :minotaur(6), :chimera(6), :ziz(5), :manticore(5), :behemoth(4)]
# [:leviathan(8), :basilisk(7), :minotaur(6), :chimera(6), :ziz(5), :manticore(5), :behemoth(4)]


}


### The code examples clipped from Brad Gilbert's answer
### are a pain to read because they keep wandering around 
### evidently making explicit various *other* features of
### the language than addressing the question.
### they also look stale, e.g. using ".perl" instead of ".raku"

## He's demoing colon pairs to do key-values, and they still
## strike me as poor on readability.



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
