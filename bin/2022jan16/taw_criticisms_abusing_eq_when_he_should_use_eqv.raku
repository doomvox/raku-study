#!/usr/bin/env perl6
# 
# taw_criticisms_abusing_eq_when_he_should_use_eqv.raku            16 Jan 2022 
   
# taw:
# https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf
# https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n

use v6;

# Looks like it works...
say [1, 2] eq [1, 2];
# True

say [1,2].Str;
# 1 2

# Raku sorts the key order (unlike Ruby) so they match
say {b=>2, a=>1} eq {a=>1, b=>2};
# True

say {b=>2, a=>1}.Str;
# a	1
# b	2

use Test;
is-deeply( {b=>2, a=>1}, {a=>1, b=>2} );
# ok 1 - 

my %h1 = {b=>2, a=>1};
my %h2 = {a=>1, b=>2};

say %h1 eqv %h2;
# True

{
    say "===";
    my %fried1 = ( {one=>'1', two=>'2'}, {alpha=>'a', beta=>'b', extra => { something => 'or_other', whatever => 'nada' }} );
    my %fried2 = ( {one=>'1', two=>'2'}, {alpha=>'A', beta=>'B', extra => { something => 'Or_other', whatever => 'nada' }} );
    say %fried1 eqv %fried2;
    # False
}

{
    say "===";
    my %fried1 = ( {one=>'1', two=>'2'}, {alpha=>'a', beta=>'b', extra => { something => 'or_other', whatever => 'nada' }} );
    my %fried2 = ( {one=>'1', two=>'2'}, {alpha=>'a', beta=>'b', extra => { something => 'or_other', whatever => 'nada' }} );
    say %fried1 eqv %fried2;
    # True
}


{
    my %h1 = {b=>2, a=>1};
    my %h2 = {a=>1, b=>2};

    say %h1 X %h2;
    # ((b => 2 a => 1) (b => 2 b => 2) (a => 1 a => 1) (a => 1 b => 2))
}

{
    say "===";
    my %h1 = {b=>2, a=>1};
    my %h2 = {a=>1, b=>2};

    say %h1.list X %h2.list;
    # ((a => 1 b => 2) (a => 1 a => 1) (b => 2 b => 2) (b => 2 a => 1))
    say %h1.List X %h2.List;
    # ((a => 1 b => 2) (a => 1 a => 1) (b => 2 b => 2) (b => 2 a => 1))
    ## order is undefined, can vary, e.g. 
    # ((b => 2 b => 2) (b => 2 a => 1) (a => 1 b => 2) (a => 1 a => 1))

    say %h1.list.sort X %h2.list.sort;
    # ((a => 1 a => 1) (a => 1 b => 2) (b => 2 a => 1) (b => 2 b => 2))}
    ##  sort imposes this ordering


{
    say "~~~";
    my @a1 = b=>2, a=>1;
    my @a2 = a=>1, b=>2;

    say @a1 X @a2;
    # ((b => 2 a => 1) (b => 2 b => 2) (a => 1 a => 1) (a => 1 b => 2))
}
