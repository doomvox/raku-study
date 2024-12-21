#!/usr/bin/env raku
# 
# bruce_gray_monkey_augment_str_upgraderat_etc.raku            08 Dec 2024 

use v6;


# raku -e 'use MONKEY; augment class Str { method UPGRADE-RAT (Int $numer, Int $denom) { return "$numer/$denom. Bwahaha!"} }; $*RAT-OVERFLOW = "abc"; my $a = (1/(2**63));say $a/2;  $*RAT-OVERFLOW = FatRat.new(1,2); say ($a/2).WHAT;'
# 1/18446744073709551616. Bwahaha!
# (FatRat)

use MONKEY;
augment class Str {
    method UPGRADE-RAT (Int $numer, Int $denom) {
        return "$numer/$denom. Bwahaha!"
    }
};

$*RAT-OVERFLOW = "abc";   ## a string of *type* Str;
my $a = (1/(2**63));
say $a/2;
$*RAT-OVERFLOW = FatRat.new(1,2);  ## An object of type FatRat.
say ($a/2).WHAT;


# 1/18446744073709551616. Bwahaha!
# (FatRat)
