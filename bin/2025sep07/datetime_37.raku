#!/usr/bin/env raku
# 
# datetime_37.raku            07 Sep 2025 

use v6;

## https://www.nntp.perl.org/group/perl.perl6.users/2025/08/msg11493.html

# raku -e 'my $inst = now; put DateTime.new($inst).local, "\t", DateTime.new($inst.Int).local;'
# 2025-08-28T07:31:01.681240-04:00 2025-08-28T07:31:38-04:00

my $inst = now;
say
DateTime.new($inst).local, "\n",
DateTime.new($inst.Int).local, "\n"
