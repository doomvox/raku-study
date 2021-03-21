#!/usr/bin/env perl6
# 
# parsing_quoted_strings.raku            21 Mar 2021 

use v6;

## Make errors into warnings
## CATCH { default { say "CAUGHT: ", .Str; .resume } }

my $txt = q:to/END_TXT/;
Here we have a "quoted" string.
END_TXT

# p.80 moritz lenz 'parsing'
{
    my regex quote {
        \"
        [
         <-[ " \\ ]>    ## regular character
         | \\ .         ## escape sequence
        ]*
       \" 
     };

    $txt ~~ m/<quote>/;
    say $/;

    # ｢"quoted"｣
    #  simple_q => ｢"quoted"｣

#     say $/<simple_q>; # ｢"quoted"｣
#     say $<simple_q>;  # ｢"quoted"｣

}


## CAUGHT: Unable to allocate an array of 268439552 elements
## This exception is not resumable


for <ab cd ef> { 
say $_;
}
