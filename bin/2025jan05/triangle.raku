#!/usr/bin/env raku
# 
# triangle.raku            05 Jan 2025 

use v6;

## https://docs.raku.org/type/List

{
  ## Running total with subtotals

    # The following all do the same thing...
    my @numbers = (1,2,3,4,5);
    say produce { $^a + $^b }, @numbers;
    say produce * + *, @numbers;
    say produce &[+], @numbers; # operator does not need explicit identity
    say [\+] @numbers;          # most people write it this way
}

{
    my @n = (1..100).pick(*);
    say @n;
    say [\min] @n;
    say '---';
    say [min] @n;
    }


{
    constant @factorials = 1, | [\*] 1..Inf;
    say @factorials[5]; # 120
}

say "===";
{
    my @numbers = (1,2,3,4,5);
    say produce { $^a + $^b }, @numbers;
    say "---";
    my $temp = 0;
    say produce { $temp = $^a + $^b + $temp }, @numbers;
}


{
    my @numbers = (1,2,3,4,5);
    my $^a is rw = 0;
    my $^b is rw = 0;    
    say @numbers;
    say produce { $^a=*2; $^b=*2; $^a + $^b }, @numbers;
    say @numbers;
}

{
    my ($x, $y, $z)= 4,5,6;
    say produce -> $a is rw, $b is rw {
        $a = 20;
        say ($x,$y,$z);
        $a + $b; },
    ($x,$y,$z);

    # Can't use unknown trait 'is' -> 'rw' in  variable declaration.

}

