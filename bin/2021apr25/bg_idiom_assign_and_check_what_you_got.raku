#!/usr/bin/env perl6
# 
# bg_idiom_assign_and_check_what_you_got.raku            25 Apr 2021 

use v6;

my @a = <A B C>, <D E F>, 42;
for @a -> @z {
    say $++, ": ", @z.WHAT;
} 

# (List)
# (List)
# Type check failed in binding to parameter '@z'; expected Positional but got Int (42)
# in block <unit> at -e line 1 






# ## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume-force-just-do-it-stop-bugging-me-keep-going-you-idjit } }
