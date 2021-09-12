#!/usr/bin/env perl6
# 
# catching_up_to_bill.pl6            12 Sep 2021 

use v6;

my $var = False;
say $var;
# False
say ++$var;
# True
say $var;
# True

say $var++;
# True 
say $var;
# True

say "---";

say $var.Int;  # 1
say $var + 1;  # 2

$var--;
say $var;      # False

my $i = $var;
say $i;

say $var.Bool; # False

say "---";

my $t = False;
my $v = $t + 1;
dd $v;  # Int $v = 1
dd $t;  # Bool $t = Bool::False
$t++;    ## Not exactly:  $t + 1; 
dd $t;  # Bool $t = Bool::True

#   |       |
#   |  ++   |
#   V       V
# (False, True);

$t = False;
say $t.succ;  # True
say $t;       # False

$t = $t.succ;
say $t;       # True

$t = $t.pred;
say $t;       # False


# bruce gray:
# raku -e 'my $z = "B"; say ++$z;' # Output: C 
# raku -e 'enum Foo ("AA", "CC", "EE"); my Foo $f = CC; say $f.succ; say $f.succ.succ;'
# EE
# EE 


my @stuff = 'aa' .. 'dd';
say @stuff;   #  [aa ab ac ad ba bb bc bd ca cb cc cd da db dc dd]

@stuff = 'a' .. 'ccc';
say @stuff;   # [a b c]

@stuff = 'a' ... 'ccc';
say @stuff.elems;  # 3

# a b c aa ab bb bc cc aaa  aab  abbb ccc 

# bruce gray 
# raku -e 'say "⚀".succ' Output: ⚁ 


say "⚀".succ;  # 
