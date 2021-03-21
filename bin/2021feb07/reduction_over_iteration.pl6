#!/usr/bin/env perl6
# 
# reduction_over_iteration.pl6            07 Feb 2021 

use v6;

## Make errors into warnings
##  CATCH { default { say "CAUGHT: ", .Str; .resume } }


my @rabbits  = < bugs peter easter >;
my $all ~= @rabbits;   ## note: if you've got p5 eyes, ~= seems *really* strange
say "...$all..."; # ...bugs peter easter...

.say for @rabbits;
# bugs
# peter
# easter

say .[0] [~] .[1] for @rabbits.rotor(2);
# bugspeter

say .[0] [~] .[1] for @rabbits.rotor(2, :partial);
# Use of uninitialized value element of type Any in string context.



# ===
# Author:  doom@kzsu.stanford.edu

