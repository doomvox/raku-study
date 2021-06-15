#!/usr/bin/env perl6
# 
# ternaries_and_for_else.raku            14 Jun 2021 

use v6;

# William Michels  suggests looking at ternary ifs to do the for/else
# job that Damian Conway describes here:
# 
#   http://blogs.perl.org/users/damian_conway/2019/09/itchscratch.html


{ # william michels

    my @errors;

    @errors = <<ham sandwich ERROR DEBUG lettuce>>;
    put @errors.raku, "\n____\n";

    exit;

    if !@errors
    ?? 'Compilation complete'.say
    !! (
        for  @errors -> $error {
            note $error; #add 'eq "DEBUG"' for T/F
            LAST die if True;
        }
    ) -> $end { $end.say };
}


