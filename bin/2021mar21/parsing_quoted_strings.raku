#!/usr/bin/env perl6
# 
# parsing_quoted_strings.raku            21 Mar 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;


my $txt = q:to/END_TXT/;
Here we have a "quoted" string.
END_TXT

{
    my $str = "abcxyz";
    $str ~~ m/(<[a..b]>+)/;  ## char class to match a z
    say $/;
}

exit;

{
    my $qq = chr(2*16+2);  # "
    say $qq;
#    my regex simple_q { \" < -[ <$qq> ] >* \" };  

    $txt ~~ m/<simple_q>/;
    say $/;
    # ｢"quoted"｣
    #  simple_q => ｢"quoted"｣

    say $/<simple_q>; # ｢"quoted"｣
    say $<simple_q>;  # ｢"quoted"｣

}
