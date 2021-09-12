#!/usr/bin/env perl6
# 
# william_michels_raku_booleans.pl6            12 Sep 2021 

use v6;

my $var = False;
say $var;
# False
say ++$var
# True


say --$var
# False

say $var.Int
# 0
say $var.Int + 1
# 1
say ($var.Int + 1).Bool
# True

say ++$var.Int

# Cannot resolve caller prefix:<++>(Int:D); the following candidates
# match the type but require mutable arguments:
#     (Mu:D $a is rw)
#     (Int:D $a is rw --> Int:D)

# The following do not match for other reasons:
#     (Bool $a is rw)
#     (Mu:U $a is rw)
#     (Num:D $a is rw)
#     (Num:U $a is rw)
#     (int $a is rw --> int)
#     (num $a is rw --> num)
#   in block <unit> at <unknown file> line 1



# bruce gray:

# cheapest is_true() should be double-bang. 

my $truth_value = !! $something; 

# raku -e 'my $var = True; say ++$var.Int' # Error: Cannot resolve caller --snip-- 
# raku -e 'my $var = True; say (++$var).Int;' # Output: 1 


# ===
# Author:  doom@kzsu.stanford.edu

