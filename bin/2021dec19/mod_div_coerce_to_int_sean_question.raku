#!/usr/bin/env perl6
# 
# mod_div_coerce_to_int_sean_question.raku            19 Dec 2021 

use v6;

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
