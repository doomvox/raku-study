#!/usr/bin/env perl6
# 
# combined_operator_assignment_shortcuts.pl6            16 Feb 2021 

use v6;

# A question asked in chat a few weeks ago, what does "~=" do?

{
    my $str = 'hell';
    my $str = $str ~ 'lo';
    say $str: # hello
}
