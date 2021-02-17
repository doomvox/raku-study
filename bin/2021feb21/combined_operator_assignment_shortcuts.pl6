#!/usr/bin/env perl6
# 
# combined_operator_assignment_shortcuts.pl6            16 Feb 2021 

use v6;

# A question asked in chat a few weeks ago, what does "~=" do?

{
    ## these two constructs are the same:
    my $str1 = 'hell';
    $str1 = $str1 ~ 'lo';

    my $str2 = 'hell';
    $str2 ~= 'lo';

    say $str1, ' ', $str2; # hello hello
}

{ ## another way of doing a join
    my @chars = < a b c d e f g h i j k l m>;
    my $str;
    for @chars -> $c {
        $str ~= $c;
    }
    say $str;
}
