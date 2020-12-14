#!/usr/bin/env perl6
# 
# boolean_conversion_operator.pl6            13 Dec 2020 

use v6;

my $flag = True;
say $flag;    # True

say !$flag;   # False
say !!$flag;  # True

my $flagoid = "";
say $flagoid.Bool;  # False

say !!$flagoid;     # False

my $new_bool = !!$flagoid;
say $new_bool;      # False

say $new_bool.WHAT; # (Bool)


my $new_bool2 = ?$flagoid;
say $new_bool2;              # False
say $new_bool2.WHAT;         # (Bool)


my $new_bool3 = ? $flagoid;
say $new_bool3.WHAT;  #  (Bool)

## question mark allows following space
## double bang doesn't

## double bangs can be confused with ternaries?
my $thing = $flag ?? "hm" !! "ho";  
say $thing;  # hm

