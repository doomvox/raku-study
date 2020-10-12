#!/usr/bin/env perl6
# 
# the_dreaded_leland_number_golf_castrophe.pl6            11 Oct 2020 


use v6;

# Related to this:
#  https://www.nntp.perl.org/group/perl.perl6.users/2020/10/msg9278.html

# bruce gray example:
# 
# say 2..4 X[&({$^a**$^b+$b**$a})] 2..4;

say 2..4 X[&({$^a**$^b+$b**$a})] 2..4;
# (8 17 32 17 54 145 32 145 512)

# my reformatting for readability:
say 2..4 X[&( { $^a ** $^b + $b ** $a } )] 2..4;
(8 17 32 17 54 145 32 145 512)

# Note:
# a space *after* the X[ confuses things:  "Missing infix inside []"
#    say 2..4 X[ &( { $^a ** $^b + $b ** $a } ) ] 2..4;


# Anyway, what struck me there was that after $^a you can get the value with just: $a.
# That makes the code tighter, but it looks pretty weird the first time you see it,
# and I don't think I've ever seen it before.

