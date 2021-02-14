#!/usr/bin/env perl6
# 
# spy_via_ampersand.pl6            September 20, 2020 
#                                  February  14, 2021   

use v6;

my @monsters =  
  << godzilla blob mothera mechazilla tingler garuda gammera  >>;
say "result: ", @monsters.grep({ m/^g/ }).&spy.grep({ m/z/ }).map({ .uc });

sub spy {
    say "Spying on: ", callframe(1);
    dd   @_;
    return @_;
}    


say "===";
# talking about method calls and $_
say 66.cos; # -0.99964745596635

$_ = 77;
say .cos;   # -0.03097503173121646

say <aaa bbb ccc>.map({ .uc });   #  (AAA BBB CCC)

say <aaa bbb ccc>.map( *.uc );    #  (AAA BBB CCC)

say <aaa bbb ccc>.map: *.uc ;    #  (AAA BBB CCC)
