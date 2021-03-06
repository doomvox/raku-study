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
# (horta dracula godzilla blob wolfman mothera tingler rhodan)

say $set.^methods>>.gist;
# (iterator of new-from-pairs default elems total grab grabpairs pick pickpairs roll keyof STORE Int Num Numeric Real Capture fmt Setty Baggy Mixy WHICH Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new new Method+{is-nodal}.new Method+{is-nodal}.new minpairs maxpairs Bool Method+{is-nodal}.new Method+{is-nodal}.new ACCEPTS Str gist raku Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new BUILDALL)

say $set.^methods>>.name;
# (iterator of new-from-pairs default elems total grab grabpairs pick pickpairs roll keyof STORE Int Num Numeric Real Capture fmt Setty Baggy Mixy WHICH kv values Set SetHash AT-KEY ASSIGN-KEY DELETE-KEY new keys antipairs minpairs maxpairs Bool hash Hash ACCEPTS Str gist raku EXISTS-KEY Bag BagHash Mix MixHash list pairs BUILDALL)

say $set.^method_names;
# (iterator of new-from-pairs default elems total grab grabpairs pick pickpairs roll RAW-HASH keyof SET-SELF STORE Int Num Numeric Real Capture fmt Setty Baggy Mixy WHICH kv values Set SetHash AT-KEY ASSIGN-KEY DELETE-KEY new keys antipairs minpairs maxpairs Bool hash Hash ACCEPTS Str gist raku EXISTS-KEY Bag BagHash Mix MixHash list pairs BUILDALL)

my $a = set $set.^methods>>.name;
my $b = set $set.^method_names;

say ($b (-) $a).keys.sort;  # (RAW-HASH SET-SELF)
say ($a (-) $b).keys.sort;  # ()

#  say $a.RAW-HASH.WHY;

#  say $a.SET-SELF.WHY;
# Too few positionals passed; expected 2 arguments but got 1

say $a.RAW-HASH;
# Rakudo::Internals::IterationSet.new

# say $a.SET-SELF;
# Too few positionals passed; expected 2 arguments but got 1

