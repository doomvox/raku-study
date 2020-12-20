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
        my Trekoids $name = << spock uhurhu kirk >>.pick.tc;
        return $name;
    }
    say "shall live: ";
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
    dd $ret;
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

    $ret = 0;
    if ( $ret ~~ Any and not( $ret ) ) {
        say "Zero also passes, I bet.";
    }

    $ret = 1;
    if ( $ret ~~ Any and not( $ret ) ) {
        say "One should *not* get us here.";
    } else {
        say "one ain't bupkes";
    }

    ## but checking for "Any" doesn't help, because everything is.

    my Str $str = '';
    say $str.WHAT;
    if ( $str ~~ Any and not( $str ) ) {
        say "An empty string declared as a string is still an Any";
    } 

    
    CATCH { default { say .Str } };
}

# https://docs.raku.org/type/Nil#index-entry-Nil_assignment

# When assigned to a container, the Nil value (but not any subclass
# of Nil) will attempt to revert the container to its default
# value; if no such default is declared, Raku assumes Any.

