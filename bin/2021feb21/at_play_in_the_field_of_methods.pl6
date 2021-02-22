#!/usr/bin/env perl6
# 
# at_play_in_the_field_of_methods.pl6            21 Feb 2021 

use v6;

my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob >;
my $set = set @monsters;

say $set.^methods;
# (iterator of new-from-pairs default elems total grab grabpairs pick pickpairs roll keyof STORE Int Num Numeric Real Capture fmt Setty Baggy Mixy WHICH Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new new Method+{is-nodal}.new Method+{is-nodal}.new minpairs maxpairs Bool Method+{is-nodal}.new Method+{is-nodal}.new ACCEPTS Str gist raku Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new BUILDALL)

#  Method+{is-nodal}.new

say $set.keys;


say $set.^methods>>.gist;
say $set.^methods>>.name;
