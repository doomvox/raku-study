#!/bin/sh -x 

## 1A and 2A work:
# 1A.  If you're using `-pe` command line flags, you use `s///` and combine statements with `;` semicolon:
echo '----'
echo '1A:'
echo 'roses are red' | raku -pe 's/roses/lilacs/;  s/red/blue/'
# lilacs are blue

# 2A.  Conversely, if you're using `-ne` command line flags, you use `S///` and combine statements with `andthen`:
echo '----'
echo '2A:'
echo 'roses are red' | raku -ne 'S/roses/lilacs/ andthen S/red/blue/.put'
# lilacs are blue

## 1B and 2B don't work
# 1B.  Using `-pe` with `s///` but `andthen` instead of `;` is apparently a mistake--you don't get what you expect:
echo '----'
echo '1B:'
echo 'roses are red' | raku -pe 's/roses/lilacs/ andthen s/red/blue/'
# lilacs are red

# 2B.  Again, using `-ne` with `S///` but `;` instead of `andthen` is apparently a mistake--you don't get what you expect:
echo '----'
echo '2B:'
echo 'roses are red' | raku -ne 'S/roses/lilacs/;  S/red/blue/.put'
# roses are blue


## G6
# G6
echo '----'
echo 'G6:'
echo 'roses are red' | raku -pe '$_ = s/roses/lilacs/ andthen s/red/blue/'
# ｢roses｣
echo 'roses are red' | raku -pe '$_ = (s/roses/lilacs/ andthen s/red/blue/)'
# (Mu)
# echo 'roses are red' | raku -pe '.= s/roses/lilacs/'

echo "really?" | raku -pe'.=ux;'
