#!/usr/bin/env perl6
# 
# regex_interpolation_example_from_docs.pl6            07 Feb 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }

# Question on list:
#   https://www.nntp.perl.org/group/perl.perl6.users/2021/02/msg9691.html

# https://docs.raku.org/language/regexes#Regex_interpolation

{
    my $string   = 'Is this a regex or a string: 123\w+False$pattern1 ?';
    my $pattern1 = 'string';
    my $pattern2 = '\w+';
    my $number   = 123;
    my $regex    = /\w+/;
    
    say $string.match: / 'string' /;                      #  ｢string｣
    say $string.match: / $pattern1 /;                     #  ｢string｣
    say $string.match: / $pattern2 /;                     #  ｢\w+｣
    say $string.match: / $regex /;                        #  ｢Is｣
    say $string.match: / $number /;                       #  ｢123｣
}

{
    my $string   = 'Is this a regex or a string. ';
    my $regex    = /\w+/;
    say $string.match: / $regex /;                        #  ｢Is｣
}
