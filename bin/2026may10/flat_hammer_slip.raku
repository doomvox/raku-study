#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/flat_hammer_slip.raku

# From back in 2018 (?!):
#  /home/doom/End/Cave/RakuStudy/Notes/notes-basic_perl6_again

# The vertical bars ...  are the "slip" 
# operator, which kind-of sort-of do flattening.  (There's 
# a subtle difference between slip and flat that I forget).


{
    my @a = <aaa bbb ccc>;
    my @b = <111 222 333>;
    say @a;
    say @b;

# [aaa bbb ccc]
# [111 222 333]

.say for (@a, @b)
# [aaa bbb ccc]
# [111 222 333]
.say for (|@a, |@b)
# aaa
# bbb
# ccc
# 111
# 222
# 333


.say for (flat @a, @b)
# aaa
# bbb
# ccc
# 111
# 222
# 333



(flat @a, @b).sort
(111 222 333 444 aaa bbb ccc ddd)
> (flat @a, @b)
(aaa bbb ccc ddd 111 222 333 444)
> (flat @a, @b).grep({/2/})
(222)
