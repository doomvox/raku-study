#!/usr/bin/env raku
# 
# bl_of_eof.raku            18 May 2025 

use v6;

my $case1 = q:to/EOS1/;
Dummy text followed by blank lines

EOS1

my $case2 = 
  'Dummy text followed by no blank lines';

{
    say "case1: ", $case2 ~~ /^(.*?) [\n\n|$]/;
    say "case2: ", $case2 ~~ /^(.*?) [\n\n|$]/;
}
{
    say "===";
    my $pat1 = '^(.*?) [\n\n|$]';
    say "case1: ", $case1 ~~ /<$pat1>/;
    say "case2: ", $case2 ~~ /<$pat1>/;

# case1: ｢Dummy text followed by blank lines
#
# ｣
# case2: ｢Dummy text followed by no blank lines｣

}
