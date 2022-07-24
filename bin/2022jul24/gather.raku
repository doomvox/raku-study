#!/usr/bin/env perl6
# 
# gather.raku            24 Jul 2022 

use v6;

# rob ransbottom is interested in an issue with gather

my @monsters = < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com

my @a =
    gather 
    for @monsters -> $m {
       take $m if $m.chars > 6;
    };
