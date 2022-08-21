#!/usr/bin/env perl6
# 
# match_basics_sigh.raku            21 Aug 2022 

use v6;

## Having some trouble with .match.
## Starting again with the examples in the docs:

say "properly".match('perl');                     # perl
say "properly".match(/p.../);                     # prop
say "1 2 3".match([1,2,3]);                       # 1 2 3
say "a1xa2".match(/a./, :continue(2));            # a2

say 'several words here'.match(/\w+/,:global);    # ｢several｣ ｢words｣ ｢here｣
say 'abcdef'.match(/.*/, :pos(2));                # cdef
say "foo[bar][baz]".match(/../, :1st);            # fo
say "foo[bar][baz]".match(/../, :2nd);            # o
say "foo[bar][baz]".match(/../, :3rd);            # ba
say "foo[bar][baz]".match(/../, :4th);            # r
say "foo[bar][baz]bada".match('ba', :x(2));       # ｢ba｣ ｢ba｣





say "===";

say 'abcdef'.match(/.*/, :pos(0));                # abcdef
say 'abcdef'.match(/.*/, :pos(1));                # bcdef


