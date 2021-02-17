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

{   ## convenient to accumulate substrings in one string variable
    ## e.g. another way of doing a join
    my @chars = < a b c d e f g h i j k l m>;
    my $str;
    for @chars -> $c {
        $str ~= $c;
    }
    say $str;  # abcdefghijklm
}

{  ## this is a very perlish shortcut: works for most binary operators
    my $sum = 2;
    $sum += 3;
    say $sum; # 5
    
    my $prod = 2;
    $prod *= 3;
    say $prod; # 6

}

{ ## Q: Does this work for set difference? A: Yes... but you get another container
    my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;
    @numbers (-)= <wuhn thuree fahv sevhun>;
    say @numbers;     # [Set(foah sex tew)]
    say @numbers[0];  # Set(foah sex tew)

    my @rabbits  = < bugs peter easter >;
    # @rabbits | (-)= <peter>;
    # Prefix - requires an argument, but no valid term found.

    ## TODO try defining a new operator that does a set diff and then a flat

}

