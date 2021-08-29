#!/usr/bin/env perl6
# 
# interpolation_games.raku            29 Aug 2021 

use v6;

# https://stackoverflow.com/questions/68885852/brace-delimiters-with-qq-dont-interpolate-code-in-raku

my $str1 = qq{ and now we will add { 2 + 2 } };
say $str1;
#  and now we will add { 2 + 2 } 

my $str2 = qq :c { and now we will add { 2 + 2 } };
say $str2;
#  and now we will add { 2 + 2 } 

# https://docs.raku.org/language/quoting#index-entry-quote_qq-quote_%22_%22-Interpolation:_qq
## :c 	:closure 	Interpolate {...} expressions

my $str3 = q :c { and now we will add { 2 + 2 } };
say $str3;
#  and now we will add { 2 + 2 } 

my $str4 = Q :c { and now we will add { 2 + 2 } };
say $str4;
#  and now we will add { 2 + 2 } 


my $str0 = qq{ and now we will add { say 2 + 2 } };
say $str0;
#  and now we will add { say 2 + 2 } 

## Bruce Gray:
# raku -e 'say Q:c[abc {2+2}]'  # # abc 4 

my $str5 = Q:c[ and now we will add { 2 + 2 } ];
say $str5;
#  and now we will add 4 


my $str6 = Q:qq[ and now we will add { 2 + 2 } ];
say $str6;
#  and now we will add 4 

## So, the :qq adverb behaves differently than qq   ??

my $str7 = Q :c [ and now we will add { 2 + 2 } ];
say $str7;





# ===
# Author:  doom@kzsu.stanford.edu


