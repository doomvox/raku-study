#!/usr/bin/env perl6
# 
# trial-spy_via_ampersand.pl6            20 Sep 2020 

use v6;

my @monsters =
    << godzilla blob mothera mechazilla tingler garuda gammera  >>;

# dd @monsters;

say "result: ", @monsters.grep({ m/^g/ }).&spy.grep({ m/z/ }).map({ .uc });

sub spy {
    say "Spying on: ", callframe(1);
    dd   @_;
    return @_;
}    



