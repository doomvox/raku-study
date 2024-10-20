#!/usr/bin/env raku
# 
# rat_overflow_behavior.raku            20 Oct 2024 

use v6;

# 2^64:   18446744073709551616
# 2^128:  340282366920938463463374607431768211456


say 2 ** 64; # 18446744073709551616
my $d_limit = 2 ** 64;
say $d_limit;
say "===";
exit;

my $s = 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000;
my $c = 10000;

for ($s .. $s + $c) -> $x { 
    my $rat = Rat.new(1, $x);
    
    if $x%100 eq 0 {
        # my $*RAT-OVERFLOW = FatRat;
        say $rat.WHAT;
        my ($over, $under) = $rat.nude;
        say "1/x where x $x: ", $rat;
        say "Overflow?" if $rat eq 0.000000000000000000000000001;
        say "denom: ", $under;
        say "not seeing expected demoninator " if $x != $under;
    }

}
