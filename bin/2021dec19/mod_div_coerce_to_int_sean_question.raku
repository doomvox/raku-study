#!/usr/bin/env perl6
# 
# mod_div_coerce_to_int_sean_question.raku            19 Dec 2021 

use v6;
# Try to make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

# https://www.nntp.perl.org/group/perl.perl6.users/2021/12/msg10343.html

# While coding today, I was a little surprised to discover that the div
# operator doesn't coerce its arguments to integers.  So for example, the
# expressions 25 div '5' and pi div 5 raise errors.  I checked the Operators
# doc page and saw that, sure enough, div (and mod, I found) accept only
# actual Ints.  Of all numeric operators at the multiplicative and additive
# levels of precedence, they're alone in that respect.

# Is there a particular reason these two operators are so restrictive?


my $a = 3;
my $b = '4';
my $n = $a * $b;

dd $n;
# Int $n = 12
# clearly coerces string to Int silently as perl-people would expect.

my $result = 25 div 5;
dd $result;
# Int $result = 5

# my $nope = 25 div '5';
# dd $nope;

# ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021dec19/mod_div_coerce_to_int_sean_question.raku
# Calling infix:<div>(Int, Str) will never work with any of these multi signatures:


my $pi_div_5 = pi div 5;
dd $pi_div_5;



