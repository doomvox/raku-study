#!/usr/bin/env perl6
# 
# arrays_with_sigils_and_without.raku            25 Sep 2022 

use v6;

## Bruce gray:

{
    my @a = 1,2,3;
    my @b = <a b c>;
    (@a, @b) .= reverse;
    .say for @a, @b;
    # (\Array_94107183402072 = [[] Array_94107183402072])
}

# Rob suggests $@ but...
# {
#     ($@a, $@b) .= reverse;
#     .say for @a, @b;

# # Cannot assign to a readonly variable or a value
# #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022sep25/arrays_with_sigils_and_without.raku line 18

# }
