#!/usr/bin/env raku
# 
# range_of_strings.raku            24 Nov 2024 

use v6;

# playing with ranges:
# raku -e '.say for "⚀" .. "⚅" '

my $start = "abc";
my $end   = "e";

## .list and leading @ are equiv
{
    my $r = $start .. $end;
    .say for $r.list;
} # abc

{
    my $r = $start .. $end;
    say $r.WHAT;   # (Range)
    .say for @$r;  # abc
} 


{
    my $r = 'a' .. 'c';
    say $r.WHAT;   # (Range)
    .say for @$r;  # abc
} 

# a
# b
# c

{
    my $r = 'aa' .. 'cc';
    say $r.WHAT;   # (Range)
    .say for @$r;  # abc
} 
# aa
# ab
# ac
# ba
# bb
# bc
# ca
# cb
# cc

{
    my $r = 'a' .. 'cc';
    say $r.WHAT;   # (Range)
    .say for @$r;  # abc
} 
# a
# b
# c


# # bruce
# raku -e 'my $a = "ABC"; ++$a; say $a'
# ABD

# # billa
# raku -e 'my $a = "ABC"; $a.=succ; say $a'
# ABD
