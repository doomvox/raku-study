#!/usr/bin/env perl6
# 
# regex_and_captures_again.raku            28 Mar 2021 

use v6;

## Make errors into warnings
## CATCH { default { say "CAUGHT: ", .Str; .resume } }

{
    my regex Date { \d ** 4 '-' \d ** 2 '-' \d ** 2 };
    say $/ if "2021-03-23" ~~ /  <Date>  /;
    say $/.<Date>;  # ｢2021-03-23｣
}

say "===";
{
    my regex Date { \d ** 4 '-' \d ** 2 '-' \d ** 2 };
    say $/ if "2021-03-23" ~~ / ( <Date> ) /;
    say "---";
    say $0; # Nil
    # ｢2021-03-23｣
    #  Date => ｢2021-03-23｣
    say "---";
    say $0.<Date>;  # ｢2021-03-23｣
    say $<Date>;    # Nil
}
say "===";

## $0 is an alias
## $/.[0];
## $0;

{
    my regex Date { (\d ** 4) '-' (\d ** 2) '-' (\d ** 2) };
    say $/ if "2021-03-23" ~~ / <Date> /;

# ｢2021-03-23｣
#  Date => ｢2021-03-23｣
#   0 => ｢2021｣
#   1 => ｢03｣
#   2 => ｢23｣

    say $/.<Date>.[0];  #  ｢2021｣


    say $/.<Date>.Str;  #  2021-03-23
    }

say "===";
{
    my regex Date { $<year>=[\d ** 4] '-' $<month>=[\d ** 2] '-' $<day>=[\d ** 2] };
    say $/ if "2021-03-23" ~~ / <Date> /;
# ｢2021-03-23｣
#  Date => ｢2021-03-23｣
#   year => ｢2021｣
#   month => ｢03｣
#   day => ｢23｣
# ｢2021-03-23｣
#  Date => ｢2021-03-23｣
#   year => ｢2021｣
#   month => ｢03｣
#   day => ｢23｣

    say $/;

    say $/.<Date><year>.Str;  #  ｢2021｣


    }
