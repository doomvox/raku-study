#!/usr/bin/env perl6
# 
# parsing_quoted_strings.raku            21 Mar 2021 

use v6;

## Make errors into warnings
## CATCH { default { say "CAUGHT: ", .Str; .resume } }

my $txt = q:to/END_TXT/;
Here we have a "quoted" string.
END_TXT

my $txt_2 = q:to/END_TXT/;
Here we nested quotes: "quotes can be \"scary\" yes" string.
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
    #  quote => ｢"quoted"｣

    say $<quote>;  # ｢"quoted"｣
}

