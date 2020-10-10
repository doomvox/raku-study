#!/usr/bin/env perl6
# 
# basic_z_operator_plus_hyper_operators.pl6         04 Oct 2020 

## Some basic exploration of the Z operator ("zips" together lists)
## and some hyper operators and such.

use v6;

my @levels   = (1, 2, 3, 4, 5, 6);
say [+] @levels;  # 21
say  1 + 2 + 3 + 4 + 5 + 6;  # 21

my @monsters = << godzilla blob tingler mothera >>;
say @monsters Z @levels;
# ((godzilla 1) (blob 2) (tingler 3) (mothera 4))

say @monsters [Z] @levels;
## ((godzilla 1) (blob 2) (tingler 3) (mothera 4))    ## should this work?

say [Z] @monsters, @levels;
## ((godzilla 1) (blob 2) (tingler 3) (mothera 4))

say @levels [Z] @monsters;
## ((1 godzilla) (2 blob) (3 tingler) (4 mothera))

my @result =  @levels [Z] @monsters;
# say @result[0];
# (1 godzilla)

my $item = @result[0];
say $item.WHAT; # (List)  hm... not a pair

say $item[0];  # 1
say $item[1];  # godzilla

# so zipping together two lists gets you a list of lists.
my @adjectives = << bright dim quiet loud bogus >>;

say [Z] @monsters, @levels, @adjectives;
## ((godzilla 1 bright) (blob 2 dim) (tingler 3 quiet) (mothera 4 loud))

# say  @monsters [Z] @levels [Z] @adjectives;
# ===SORRY!=== Error while compiling /home/doom/End/Cave/Perl6/bin/trial-basic_z.pl6
# Only identical operators may be list associative; since 'Z' and '[Z]' differ, they are non-associative and you need to clarify with parentheses

say  @monsters Z @levels Z @adjectives;
# ((godzilla 1 bright) (blob 2 dim) (tingler 3 quiet) (mothera 4 loud))

# say Z @monsters, @levels, @adjectives;
# Undeclared name:
#     Z used at line 39


## https://rosettacode.org/wiki/Matrix_transposition#Raku
## 
##   say [Z] (<A B C D>, <E F G H>, <I J K L>);
## 



my @alpha = << a b c d e >>;
my @nums  = << 1 2 3 4 5 >>;

my @stuff = @alpha;
@stuff Z= @nums;

say @stuff;  # [1 2 3 4 5]



@stuff = @alpha;
@stuff [Z]= @nums;


# https://docs.raku.org/language/operators#Zip_metaoperator 

# Zip metaoperator

# The zip metaoperator (which is not the same thing as Z) will
# apply a given infix operator to pairs taken one left, one
# right, from its arguments. The resulting list is returned.

# my @l = <a b c> Z~ 1, 2, 3;     # OUTPUT: «[a1 b2 c3]␤»

say "vvv";
my @l = <a b c> Z~ 1, 2, 3;  
say @l;  # [a1 b2 c3]

my @k = 1, 2, 3 Z~  <a b c>;  
say @k;  # [1a 2b 3c]

my @l = 1, 2, 3  Z  <a b c>;  
say @l;  # [(1 a) (2 b) (3 c)]

my @num = (1, 2, 3) Z+  (7, 8, 9);
say @num;  # [8 10 12]

say "~~~~";

my @s1 = (1, 2) Z+ (4, 5) Z+ (7, 2);
say @s1;  #  [12 9]

say (1, 2) Z (4, 5);
# ((1 4) (2 5))
say ((1, 4), (2, 5)) Z (7, 2);
# (((1 4) 7) ((2 5) 2))

my @s2 = (1, 2) Z (4, 5) Z (7, 2);
say @s2;
# [(1 4 7) (2 5 2)]

my @s3 = [Z] (1, 2), (4, 5), (7, 2);
say @s3;
# [(1 4 7) (2 5 2)]

say "=<>=<>=<>=";

my @num2 = (1, 2, 3) <<+>> (7, 8, 9);
say @num2; # [8 10 12]

my @num3 = (1, 2, 3) >>+<< (7, 8, 9);
say @num3; # [8 10 12]

# my @num4 = (1, 2, 3) >>+<< (7, 8, 9, 12);
# say @num4;
# Lists on either side of non-dwimmy hyperop of infix:<+> are not of the same length while recursing
# left: 3 elements, right: 4 elements

my @num4 = (1, 2, 3) <<+>> (7, 8, 9, 12, 10);
say @num4; # [8 10 12 13 12]

my @num5 = (1, 2, 3, 1, 2) <<+>> (7, 8, 9, 12, 10);
say @num5; # [8 10 12 13 12]

my @num6 = 3 <<+>> (7, 8, 9, 12, 10);
say @num6;  # [10 11 12 15 13]

# my @num7 = 3 >>+<< (7, 8, 9, 12, 10);
# say @num7;
# Lists on either side of non-dwimmy hyperop of infix:<+> are not of the same length while recursing
# left: 1 elements, right: 5 elements



## Wiliam Michels says:

# > put 1 >>+<< (1,2,3)
# Lists on either side of non-dwimmy hyperop of infix:<+> are not of the same length while recursing
# left: 1 elements, right: 3 elements
# in block <unit> at <unknown file> line 1

# > put 1 <<+<< (1,2,3)
# 2 3 4
# > put 1 >>+>> (1,2,3)
# Lists on either side of non-dwimmy hyperop of infix:<+> are not of the same length while recursing
# left: 1 elements, right: 3 elements
# in block <unit> at <unknown file> line 1

# > put 1 <<+>> (1,2,3)
# 2 3 4
# > 
