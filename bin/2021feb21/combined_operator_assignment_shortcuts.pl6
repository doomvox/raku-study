#!/usr/bin/env perl6
# 
# combined_operator_assignment_shortcuts.pl6            16 Feb 2021 

use v6;

# A question asked in chat a few weeks ago, what does "~=" do?

{
    my $str1 = 'hell';
    my $str1 = $str1 ~ 'lo';

    my $str2 = 'hell';
    my $str2 ~= 'lo';

    say $str: # hello
}
