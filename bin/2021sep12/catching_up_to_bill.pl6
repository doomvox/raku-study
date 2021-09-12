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




# ===
# Author:  doom@kzsu.stanford.edu

