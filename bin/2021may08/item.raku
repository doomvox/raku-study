#!/usr/bin/env perl6
# 
# item.raku            08 May 2022 

use v6;

## https://docs.raku.org/routine/item

# Forces given object to be evaluated in item context and returns the value of it.

say [1,2,3]; # [1 2 3]
say item([1,2,3]).raku;              # $[1, 2, 3]

say item( %( apple => 10 ) ).raku;   # ${:apple(10)}
say item("abc").raku;                # "abc"

# You can also use $ as item contextualizer.

say $[1,2,3].raku;                   # $[1, 2, 3]
say $("abc").raku;                   # "abc"


# https://docs.raku.org/type/Any#index-entry-$_(item_contextualizer)

Since Raku intentionally confuses items and single-element lists, most methods in Any are also present on class List, and coerce to List or a list-like type.
