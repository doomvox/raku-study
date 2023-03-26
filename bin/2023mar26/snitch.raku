#!/usr/bin/env raku
# 
# snitch.raku            26 Mar 2023 

use v6;


(my $a = 42).snitch = 666; say $a;  # OUTPUT: «42␤666␤» 

# No such method 'snitch' for invocant of type 'Int'

# raku --version
# Welcome to Rakudo™ v2023.02.
# Implementing the Raku® Programming Language v6.d.

# Evidently a 6.e thing.
