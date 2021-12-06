#!/usr/bin/env perl6
# 
# stacko_question_itemized_lists_as_arguments.raku            05 Dec 2021 

use v6;

## https://stackoverflow.com/questions/69372414/flattening-and-itemized-lists

# > .say for flat $(8, 76)
# 8
# 76

# > .say for flat ($(8, 76),)
# (8 76)

.say for flat $(8, 76);
# 8
# 76

.say for flat ($(8, 76),);
# (8 76)

say "---";

.say for $(8, 76);  
# (8 76)
.say for ($(8, 76),);
# (8 76)

say .raku for $(8, 76);  
# $(8, 76)
say .raku for ($(8, 76),);
# $(8, 76)

say "===";
# item docs:
say item([1,2,3]).raku;              
# $[1, 2, 3]
say item( %( apple => 10 ) ).raku;   
# ${:apple(10)}
say item("abc").raku;                
# "abc"


## You can also use $ as item contextualizer.
say $[1,2,3].raku;                   
# $[1, 2, 3]
say $("abc").raku;                   
# "abc"

say "===";
say (8, 76).WHAT;  # (List)
say $(8, 76).WHAT; # (List)

say item( 8, 76 ).WHAT; # (List)

say "***";
for 8, 76 -> $n {
    say $n.WHAT; # (Int)
}
say "---";
for (8, 76) -> $n {
    say $n.WHAT; # (Int)
}

say "---";
for $(8, 76) -> $n {  # "the single arg rule not 'strong enough' to flatten
    say $n.WHAT; # (List)
    say $n; # (8 76)
    for $n.values -> $a {
        say $a.WHAT;  # (Int)
        say $a;       # 8       76
    }
}

my $thing = $(3, 2);
say $thing.WHAT; # (List)
say $thing;
say $thing.raku;

my $thung = (3, 2);
say $thung.WHAT; # (List)

for $thing -> $n {
    say $n; # (3 2)
}

for $thung -> $n {
    say $n; # (3 2)
}

say "wm===wm";
## William Michels:
.say for flat $(8,76);
# 8
# 76

.say for $(8,76);
# (8 76)

.say for $(8,76).flat;
# 8
# 76

say "---";
for ((1,2),(7,9)) -> $a {
    say $a.WHAT; 
    say $a; 
    }

# (List)
# (1 2)
# (List)
# (7 9)


for ((1,2)) -> $a {
    say $a.WHAT; 
    say $a; 
    }
# (Int)
# 1
# (Int)
# 2

say "bg===bg"; 
say item([1,2,3]).raku;
# $[1, 2, 3]   # the dollar tells you it's an item that can trun into a list
say [1,2,3].raku;
# [1, 2, 3]
say .raku for [1,2,3];
# 1
# 2
# 3
say .raku for item([1,2,3]);
# $[1, 2, 3]
say .raku for $[1,2,3];
# $[1, 2, 3]
say .raku for [1,2,3];
# 1
# 2
# 3 

## ===
say "======";

## bg example using bill's .elems approach:

my @a;

@a = 1,2,3 ;
say @a.elems; # 3

@a = (1,2,3);
say @a.elems; # 3

@a = $(1,2,3);
say @a.elems; # 1

say "---";
my @b = ( $(1,2), $(7,8) );
say @b.elems;  # 2 

for @b -> $s {
    say $s;  
}
# (1 2)
# (7 8)
