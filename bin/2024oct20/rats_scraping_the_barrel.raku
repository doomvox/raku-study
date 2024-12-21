#!/usr/bin/env raku
# 
# rats_scraping_the_barrel.raku            24 Nov 2024 

use v6;

## Rat  1/3, but  1/(2⁶⁴+)

{
    my $a = 1 / (2⁶⁴ - 1);
    say $a;                   # 0.000000000000000000054 
    say $a.^name;             # Rat 
}


{
    my $a = 1 / (2⁶⁴);
    say $a;                   # 5.421010862427522e-20
    say $a.^name;             # Num
}



{
    my $a = Rat.new( 1, 2⁶⁴ ); 
    say $a;                   # 0.000000000000000000054
    say $a.^name;             # Rat
}


