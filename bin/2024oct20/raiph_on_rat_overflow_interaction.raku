#!/usr/bin/env raku
# 
# raiph_on_rat_overflow_interaction.raku            02 Dec 2024 

use v6;

# https://github.com/Raku/problem-solving/issues/454

# Raiph:

# ... I checked rational literal behavior and was surprised at its
# (apparent lack of) interactions with $*RAT-OVERFLOW (in a 2024.01
# Rakudo).

{
    $*RAT-OVERFLOW = FatRat;
    say 1 / 2⁶⁴;                   # 5.421010862427522e-20
    say $*RAKU.compiler.version;   

    # raku /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024oct20/raiph_on_rat_overflow_interaction.raku
    # 5.421010862427522e-20
    # v2023.02
}


say "===";
{
#    $*RAT-OVERFLOW = FatRat;
#    my $*RAT-OVERFLOW = FatRat; 
    temp $*RAT-OVERFLOW = FatRat; 

    my $n;

    $n = 1 / (2⁶⁴-1);                  
    say $n;          # 0.000000000000000000054
    say $n.WHAT;     # (Rat)

    $n = 1 / 2⁶⁴;                  
    say $n;          # 5.421010862427522e-20
    say $n.WHAT;     # (Num)

    $n = 1 / (2⁶⁴+1);                  
    say $n;          # 5.421010862427522e-20
    say $n.WHAT;     # (Num)
}

say "===";
{
#    $*RAT-OVERFLOW = FatRat;
#    my $*RAT-OVERFLOW = FatRat;     
    temp $*RAT-OVERFLOW = FatRat;     

    my $n;

    $n = 1 / (2⁶⁴-1);                  
    say $n;          # 0.000000000000000000054
    say $n.WHAT;     # (Rat)

    $n = 1 / 2⁶⁴;                  
    say $n;          # 5.421010862427522e-20
    say $n.WHAT;     # (Num)

    $n = 1 / (2⁶⁴+1);                  
    say $n;          # 5.421010862427522e-20
    say $n.WHAT;     # (Num)
}

