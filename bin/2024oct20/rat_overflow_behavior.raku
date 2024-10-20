#!/usr/bin/env raku
# 
# rat_overflow_behavior.raku            20 Oct 2024 

use v6;

# 2^64:   18446744073709551616
# 2^128:  340282366920938463463374607431768211456


# say 2 ** 64; # 18446744073709551616
my $d_limit = 2 ** 64;
say "Rat demoninator limit: ", $d_limit;
say "===";

# my $s = 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000;

my $s = $d_limit - 3;

my $c = 30;

for ($s .. $s + $c) -> $x { 
    my $rat = Rat.new(1, $x);

    my $whatever = 1/$x;
    say "whatever: ", $whatever.^name;
    
#    if $x%100 eq 0 {
    if $x%1 eq 0 {
        say $rat.WHAT;
        my ($over, $under) = $rat.nude;
        say "1/x where x $x: ", $rat;
#        say "Overflow?" if $rat eq 0.000000000000000000000000001;
        say "denom: ", $under;
        say "big denom" if $under > $d_limit;
        say "not seeing expected demoninator " if $x != $under;
    }

}
