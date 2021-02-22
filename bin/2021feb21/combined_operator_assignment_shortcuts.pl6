#!/usr/bin/env perl6
# 
# combined_operator_assignment_shortcuts.pl6            16 Feb 2021 

use v6;

# A question asked in chat a few weeks ago, what does "~=" do?
{
    ## TODO  bill points out ~= is not in documentation index
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

{
    say "###";
    ## Q: Does this work for set difference? A: Yes... but you get another container
    my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;
    @numbers (-)=  <wuhn thuree fahv sevhun>;
    say @numbers;     # [Set(foah sex tew)]  ## BUG?  not quite?
    say @numbers[0];  # Set(foah sex tew)

    my @rabbits  = < bugs peter easter >;
    # @rabbits | (-)= <peter>;
    # Prefix - requires an argument, but no valid term found.

    ## TODO try defining a new operator that does a set diff and then a flat
}

{
    my $set1 = set 2, 4, 6;
    my $set2 = set 4;
    $set1 (-)= $set2;
    say $set1;  # Set(2 6)
    # No extra container this time.
}


{
    my $set1 = set 2, 4, 6;
    $set1 (-)= 4;
    say $set1;  # Set(2 6)
}

{
    my $not_set_yet =  (2, 4, 6);
    $not_set_yet (-)= 4;
    say $not_set_yet; # Set(2 6)  Now it is.  Still working.
}


{
    my $working =  <a b c>;
    $working (-)= 'b';
    say $working;  # Set(a c)
}

{
    my $working =  <a b c d e >;
    $working (-)= <b e>;
    say $working;  # Set(a c d)
}

{
    my $var = 'rutagbega';
    # the issue is using an array for Set storage
    # upgrading an array in place has to create a Set inside the array as first element
    my @l  = < wuhn tew thuree foah fahv sex sevhun >;
    @l (-)=  < wuhn thuree fahv sevhun >;
    say @l;     # [Set(foah sex tew)]
    say @l[0];  # Set(foah sex tew)
}

{
    my %h  = (wuhn => 1,  tew => 2,  thuree => 3 );
    %h (-)=  (wuhn => 1);
    say %h;     # {tew => True, thuree => True}
}


{
    my %h1  = (wuhn => 1,  tew => 2,  thuree => 3 );
    my %h2  = (wuhn => 1);
    my %h_diff =  %h1 (-) %h2;
    say %h;     # {tew => True, thuree => True}
}
