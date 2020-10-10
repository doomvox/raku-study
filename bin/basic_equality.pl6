#!/usr/bin/env perl6
# 
# basic_equality.pl6            04 Oct 2020 

use v6;

## Note that there's a bunch of numeric types:
say 3.WHAT;    # (Int)
say 3e3.WHAT;  # (Num)
say 3.3.WHAT;  # (Rat)

say "3".WHAT;  # (Str)


{ # ==   is an equality check that coerces strings to numerics
    # (Q: and what else can it coerce?)
    if ( "3" == 3 ) {  
        say "The string '3' and integer 3 are equal"    
    }

    ## not all strings coerce to numerics:
    # if ( "3_can_you_see_this" == 3 ) {
    #     say "are these equal?"  ## they are in perl5, but with warning
    #     }
    # 
    # Cannot convert string to number: trailing characters after number

    if ( "3e3" == 3000 ) {
        say "'3e3' and 3000 are equal"    
        # Note: this is a string that becomes a Num compared to an Int
    }

    ## very perlish behavior:
    my @monsters = < kong rhodan blob gorgon garuda golem sauruman >;
    say @monsters; # [kong rhodan blob gorgon garuda golem sauruman]
    if ( @monsters == 7 ) {
        say "an array coerces to a count of items when treated as a numeric";
    }

    ## very sixy behavior:
    my %h = ( alpha => 1, beta => 2, gamma => 3 );
    say %h;  # {alpha => 1, beta => 2, gamma => 3}
    if ( %h == 3 ) {
        say "a hash coerces to a count of pairs when treated as a numeric";
    }
}



## eq:  I *thought* eq would be an equality check that coerces things to strings 
## Duh: I was thinking of eq
{
    say "EQ: trying some of the above cases with eq, not ==";
    if ( "3e3" eq 3000 ) {
        say "'3e3' and 3000 are equal with eq";
    } else {
        say "'3e3' and 3000 are NOT equal with eq";  # string '3000' vs '3e3'
    }

    my @monsters = < kong rhodan blob gorgon garuda golem sauruman >;
    say @monsters; # [kong rhodan blob gorgon garuda golem sauruman]
    say @monsters.WHAT; # (Array)
    say @monsters.Str;  # kong rhodan blob gorgon garuda golem sauruman
    say @monsters.Str.chars; # 45

    if ( @monsters eq 'kong rhodan blob gorgon garuda golem sauruman' ) {
        say "The array is stringified by eq..."; ## works like this, as expected
    } elsif ( @monsters eq 7 ) {
        say "arrays are turned into counts by == but not eq";
    }

    my %h = ( alpha => 1, beta => 2, gamma => 3 );
    say %h;  # {alpha => 1, beta => 2, gamma => 3}
    say %h.Str; # hashes stringify to *multi-line* strings
    # alpha	1
    # beta	2
    # gamma	3
    say %h.Str.WHAT; # (Str)

    my $str_h = chomp q :to/ENDSTR/;
    alpha	1
    beta	2
    gamma	3
    ENDSTR

    if ( %h eq $str_h ) {
        say "eq coerces hash to a readable multiline string";
    }

}

## TODO
##      cmp in raku is a three way comparison for sorting
##      routines, it's a flexible variant of <=> or leq that
##      infers what it should do from argument types
##      Note: the p5 "cmp" does what "leq" does, raku "cmp" is different

# Docs:
# <=> cmp Three-way comparisons
# In Perl 5, these operators returned -1, 0, or 1. In Perl 6, they return Order::Less, Order::Same, or Order::More.
# cmp is now named leg; it forces string context for the comparison.
# <=> still forces numeric context.
# cmp in Perl 6 does either <=> or leg, depending on the existing type of its arguments.
