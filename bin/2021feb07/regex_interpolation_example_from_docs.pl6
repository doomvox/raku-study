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
    say "---";
    my $string   = 'Is this a regex or a string. ';
    my $regex    = /\w+/;
    say $string.match: / $regex /;                        #  ｢Is｣
}

## cut and pasting the above one line at a time into the repl, it blows up:

# To exit type 'exit' or '^D'
# > my $string   = 'Is this a regex or a string. ';
# Is this a regex or a string. 
# > my $regex    = /\w+/;
# /\w+/
# > say $string.match: / $regex /;                        #  ｢Is｣
# Regex object coerced to string (please use .gist or .raku to do that)
#   in any metachar at /home/doom/End/Sys/Perl6/rakudo-star-2020.05-rc1/src/rakudo-2020.05.1/install/share/nqp/lib/NQPP6QRegex.moarvm line 1
#   in any termseq at /home/doom/End/Sys/Perl6/rakudo-star-2020.05-rc1/src/rakudo-2020.05.1/install/share/nqp/lib/NQPP6QRegex.moarvm line 1
#   in any quote:sym</ /> at /home/doom/End/Sys/Perl6/rakudo-star-2020.05-rc1/src/rakudo-2020.05.1/install/share/perl6/lib/Perl6/Grammar.moarvm line 1
#   in any quote at /home/doom/End/Sys/Perl6/rakudo-star-2020.05-rc1/src/rakudo-2020.05.1/install/share/perl6/lib/Perl6/Grammar.moarvm line 1
#   in any value:sym<quote> at /home/doom/End/Sys/Perl6/rakudo-star-2020.05-rc1/src/rakudo-2020.05.1/install/share/perl6/lib/Perl6/Grammar.moarvm line 1
#   in any value at /home/doom/End/Sys/Perl6/rakudo-star-2020.05-rc1/src/rakudo-2020.05.1/install/share/perl6/lib/Perl6/Grammar.moarvm line 1
#   in any term:sym<value> at /home/doom/End/Sys/Perl6/rakudo-star-2020.05-rc1/src/rakudo-2020.05.1/install/share/perl6/lib/Perl6/Grammar.moarvm line 1
#   in any term at /home/doom/End/Sys/Perl6/rakudo-star-2020.05-rc1/src/rakudo-2020.05.1/install/share/perl6/lib/Perl6/Grammar.moarvm line 1

# ｢｣

## I'm using a slightly old raku:

# raku --version
# This is Rakudo version 2020.05.1 built on MoarVM version 2020.05
# implementing Raku 6.d.

## Bruce Gray reports that pasting the three lines together as a block works.
## I don't see this, all three pasted blow up also (emacs sub shell, if that matters...)


{
    say "===";
    my $string   = 'Is this a regex or a string: 123\w+False$pattern1 ?'; 
    my $pattern1 = 'string';
    my $pattern3 = 'gnirts';
    my $pattern4 = '$pattern1';
    my $bool     = True;
    my sub f1    { return Q[$pattern1] };
    
    say $string.match: / $pattern3.flip /;                #  Nil
    say $string.match: / "$pattern3.flip()" /;            #  ｢string｣
    say $string.match: / $($pattern3.flip) /;             #  ｢string｣
    say $string.match: / $([~] $pattern3.comb.reverse) /; #  ｢string｣
    say $string.match: / $(!$bool) /;                     #  ｢False｣
    
    say $string.match: / $pattern4 /;                     # ｢$pattern1｣
    say $string.match: / $(f1) /;                         # ｢$pattern1｣

    say "~~~";

    say ([~] $pattern3.comb.reverse);  # string
    say $pattern3.comb;                # (g n i r t s)

    .say for $pattern3.comb;
    # g
    # n
    # i
    # r
    # t
    # s

    say [~] $pattern3.comb;  # gnirts
}


