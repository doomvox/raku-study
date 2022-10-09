#!/usr/bin/env perl6
# 
# scopes_and_the_topic.raku            09 Oct 2022 

use v6;


sub stuff ($_) {  # need $_ in signature
    return uc($_);
}

say stuff('hey');  # HEY

my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;
{
    # my @N = map{ .uc }, @numbers;
    # Calling map() will never work with signature of the proto ($, |)
    my @N = map({ .uc }), @numbers;
    say @N;
    # [() [wuhn tew thuree foah fahv sex sevhun]]
}

{
    my @N = @numbers.map({ .uc });
    say @N;
    # [WUHN TEW THUREE FOAH FAHV SEX SEVHUN]
}


