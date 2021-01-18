#!/usr/bin/env perl6
# 
# substitution_using_a_callback.pl6            17 Jan 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }


my $str = "aaa bbb ccc ddd";

my $coderef =
   {  $0.uc; };

# $str ~~ s/(«\w+»)/ 123 /;
# $str ~~ s/(<<\w+>>)/{$coderef()}/;
# $str ~~ s/(<<\w+>>)/{ $coderef() }/;
my $ret = $str ~~ s/(<<\w+>>)/$coderef()/;
say $ret.WHAT; # (Match)
dd $ret;

# Match object from s///
#    $ret = Match.new(:orig("aaa bbb ccc ddd"),
#                     :from(0),
#                     :pos(3),
#                     :list((Match.new(:orig("aaa bbb ccc ddd"),
#                                      :from(0),
#                                      :pos(3)),)))

say ?$ret;  # True
say !!$ret; # True

say $str;

say $0;  #  ｢aaa｣
my $newstr = "hey: $coderef()";
say $newstr;  # hey: AAA  (so what's $0 anyway)


my $str2 = "alpha beta gamma delta";

my $ret2 = $str ~~ s:g/(<<\w+>>)/$coderef()/;

say $ret2 + 0;  # 4
say +$ret2;     # 4

