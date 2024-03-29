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
## Bruce explains the $_ is localized, and the changed value evaporates before it's printed

# 2B.  Again, using `-ne` with `S///` but `;` instead of `andthen` is apparently a mistake--you don't get what you expect:
echo '----'
echo '2B:'
echo 'roses are red' | raku -ne 'S/roses/lilacs/;  S/red/blue/.put'
# roses are blue
# Fixed:
echo 'roses are red' | raku -ne 'S/roses/lilacs/;  S/red/blue/; $_.put'
# 
# roses are red


## G6
# G6
echo '----'
echo 'G6:'
echo 'roses are red' | raku -pe '$_ = s/roses/lilacs/ andthen s/red/blue/'
# ｢roses｣
echo 'roses are red' | raku -pe '$_ = (s/roses/lilacs/ andthen s/red/blue/)'

## William Michels has seen this work, and it does:
echo "really?" | raku -pe'.=uc;'
# REALLY?
# 
## Welcome to Rakudo™ v2023.02.

## Bruce argues this is *legal* and works
echo "really?" | raku -pe'$_ .= uc;'
# REALLY?

# (Mu)
# echo 'roses are red' | raku -pe '.= s/roses/lilacs/'
# Preceding context expects a term, but found infix .= instead.

# echo 'roses are red' | raku -pe '.=~ s/roses/lilacs/'
# Preceding context expects a term, but found infix .= instead.

# echo 'roses are red' | raku -pe '.=~~ s/roses/lilacs/'
# Preceding context expects a term, but found infix .= instead.

# echo 'roses are red' | raku -pe '.=~~ S/roses/lilacs/'
# Preceding context expects a term, but found infix .= instead.

echo 'roses are red' | raku -pe '$_ ~~ s/roses/lilacs/'
# lilacs are red

# echo 'roses are red' | raku -pe '$_ .= s/roses/lilacs/'
# Missing required term after infix

# echo 'roses are red' | raku -pe '$_ .= S/roses/lilacs/'
# Missing required term after infix



## Bruce Gray suggests the alternate:
echo 'roses are red' | raku -ne '.put if s/roses/lilacs/ && s/red/blue/'

## Making the point that -n is for when you want to choose which lines to print
## -p is only useful if you know you want all lines printed.

