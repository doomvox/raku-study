#!/usr/bin/env perl6
# 
# comma_equals_of_doom.raku            05 Jun 2022 

use v6;


my %model =  a => 0, b => 0, c => 0, d => 0;
my %h     =          b => 1, c => 1;
my %hoh   = key => { b => 1, c => 1 };
my %exp   =  a => 0, b => 1, c => 1, d => 0;


{   my %target = %model;
    %target ,= ${:b(1), :c(1)}.Hash;
}

{  my %target = %model;
   %target ,= | %hoh<key>;
   say %target;
}
## Odd number of elements found where hash initializer expected:
