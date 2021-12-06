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

for (8, 76) -> $n {
    say $n.WHAT; # (Int)
}

say "---";
for $(8, 76) -> $n {
    say $n.WHAT; # (List)
    say $n; # (8 76)
    for $n.values -> $a {
        say $a.WHAT;  # (Int)
        say $a;       # 8       76
    }
}

my $thing = $(3, 2);
say $thing.WHAT;
say $thing;
