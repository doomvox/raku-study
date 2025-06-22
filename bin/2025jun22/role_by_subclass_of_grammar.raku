#!/usr/bin/env raku
# 
# role_by_subclass_of_grammar.raku            17 Jun 2025 

use v6;

# zoffix 2018
# analogy: methods and classes -> regexes and grammars

grammar GDate {
    regex TOP {
        $<year>=\d**4 '-' $<month>=\d**2 '-' $<day>=[\d\d]
    }
}
role GDateTime is GDate {
    regex time { $<clock>=[\d\d]**3 % ':' $<tz>=.+ }
    regex date-time { <date=.GDate::TOP> [T <time>]? }
}
## Note:
## o  regex date-time is composed using a regex from GDate, the default TOP regex
## o  you can use a role as a class, so this role can be used as a grammar
## o  date and time has to be separated by a 'T' with no spaces
## o  there needs to be at least one character to use as a "tz", but there's no other restrictions

{
#    my $str = "2025-06-17T07:38:00 ";
    my $str = "2025-06-17T07:38:00-08:00";
    say GDateTime.parse( $str );  ## Nil -- why no match?
    say GDateTime.subparse( $str );  ## Nil -- why no match?

##    my $date_str = '2025-06-17';
##    say GDateTime.parse( $date_str, 'date' );

}
