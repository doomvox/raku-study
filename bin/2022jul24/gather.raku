#!/usr/bin/env perl6
# 
# gather.raku            24 Jul 2022 

use v6;

my %h = gather { take "foo" => 1; take "bar" => 2};


# rob ransbottom is interested in an issue with gather

my @monsters = < ankou araxxor borrokar damis delrith elvarg kalrag yuri >; ## www.runehq.com

for @monsters -> $m {
    say "monster: $m";
};


my @a =
    gather
     { 
         for @monsters -> $m {
           take $m if $m.chars > 6;
         }
     };

say @a; # [araxxor borrokar delrith]

