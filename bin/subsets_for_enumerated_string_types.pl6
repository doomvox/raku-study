#!/usr/bin/env perl6
# 
# subsets_for_enumerated_string_types.pl6            Dec 15, 2019 
#                                               Rev: Nov 15, 2020

use v6;

# subset NumNames of Str where all(*) eq any(<< Wuhn Tew Thuree Foah Fahv  >> );

# my NumNames $thingie;

# $thingie = 'Wuhn';
# Type check failed in assignment to $thingie; expected NumNames but got Str ("Wuhn")
#   in block <unit> at /home/doom/End/Cave/Perl6/bin/trial-subsets_for_enumerated_string_types.pl6 line 12

# $thingie = 'Wuhn'.NumNames;
# # No such method 'NumNames' for invocant of type 'Str'

# $thingie = NumNames.new('Wuhn');
# # Default constructor for 'NumNames' only takes named arguments

# Better (?) example:
#   subset Trekoids of Str where all(*) eq any(<< Kirk Spock McCoy Scotty Uhuru Chapel >>);
# Except that this doesn't work:
#   Type check failed in assignment to $name; expected Trekoids but got Str ("Spock")

subset Trekoids of Str where * eq any(<< Kirk Spock McCoy Scotty Uhuru Chapel >>);
my Trekoids $name;
{
    $name = "Spock";  # okay, no error
    say $name; # Spock
}
{
    $name = "Bozo";
    CATCH { default { say .Str } };
    # Type check failed in assignment to $name; expected Trekoids but got Str ("Bozo")
}


say '---';
{
    sub must_die (Trekoids $name) returns Str {
        return "$name must die";
    }
    say must_die("Spock");
    # Spock must die
    say must_die("Bingo");
    CATCH { default { say .Str } };
    ## Constraint type check failed in binding to parameter '$name'; expected Trekoids but got Str ("Bingo")
}
say '---';
{
    sub shall_live () returns Trekoids {
        my $name = << spock uhurhu kirk >>.pick.tc;
        return $name;
    }
    say shall_live();
    # e.g. Spock

    sub shall_fail () returns Trekoids {
        my $name = 'LizardKing';
        return $name;
    }
    say shall_fail();
    # Type check failed for return value; expected Trekoids but got Str ("LizardKing")

    CATCH { default { say .Str } };
}


say '---';
{
    sub nada () returns Nil {
        return Nil;
    }

    my $ret = nada();
    say $ret;      # (Any)
    say $ret.WHAT; # (Any)

    if ( $ret ) {
        say "but that was Nil wasn't it?";
    }

    if ( $ret ~~ Nil ) {
        say "yes, looks like a Nil return";
    } else {
        say "how do you check for Nil if raku keeps calling it an empty Any?";
    }

    if ( $ret ~~ Any and not( $ret ) ) {
        say "So that was Nil, or something much like it";
    }

    $ret = '';
    if ( $ret ~~ Any and not( $ret ) ) {
        say "Empty string also passes, I bet.";
    }

    
    CATCH { default { say .Str } };
}

