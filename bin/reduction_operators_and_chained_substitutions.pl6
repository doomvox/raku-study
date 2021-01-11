#!/usr/bin/env perl6
# 
# reduction_operators_and_chained_substitutions.pl6            10 Jan 2021 

use v6;

## Make errors into warnings
##   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# These two are equivalent: 
say [+] 1, 2, 3;                # 6
say reduce &infix:<+>, 1, 2, 3; # 6

### trying things at random:
##  say reduce('+'), 1, 2, 3; # 6
### (1, 2, 3).reduce('+');

say (1..4).reduce(&infix:<+>);   # 10
say reduce &infix:<+>, 1..4;     # 10
say reduce &min, 1..4;           # 1
 

## that &infix jazz bothers me... this works:
say (1..4).reduce({ $^a + $^b });  # 10


## https://stackoverflow.com/questions/65066358/concatenating-s-in-raku/65077600#65077600

say "===";
my $w = "Hello world";
my $a = do given $w {S/Hello/Hola/ andthen S/world/mundo/};
say $a; # Hola mundo

my $caesar = "Gallia est omnis divisa in partes tres";
my $trans1 = do given $caesar {
 S/Gallia/Gaul/ andthen
 S/est/is/ andthen
 S/omnis/a_whole/ andthen
 S/divisa/divided/ andthen
 S/in/into/ andthen
 S/partes/parts/ andthen
 S/tres/three/ 
};
put $caesar;  # Gallia est omnis divisa in partes tres
put $trans1;  # Gaul is a_whole divided into parts three

say "---";
$_ = "Hello world, already.";
$_: /world/ andthen say "$_.gist is good";
