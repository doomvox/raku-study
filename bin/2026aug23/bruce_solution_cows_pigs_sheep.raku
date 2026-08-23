#!/usr/bin/env raku
use v6.d;

my $bank1 = 100;
for 1..($bank1 div 10) -> $cow {   # 1 to 10 cows
    my $bank2 = $bank1 - 10 * $cow;
    for 1..($bank2 div 3) -> $pig {
        my $bank3 = $bank2 - 3 * $pig;
        for 1 .. ($bank3 / 0.50).floor -> $sheep {
            my $count = $cow      + $pig     + $sheep;
            my $cost  = $cow * 10 + $pig * 3 + $sheep * 0.50;
            say ($cow, $pig, $sheep, $count, $cost) if $count == 100 and $cost == 100;
        }
    }
}
