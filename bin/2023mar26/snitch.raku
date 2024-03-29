#!/usr/bin/env raku
# 
# snitch.raku            26 Mar 2023 

use v6.e.PREVIEW;

(my $a = 42).snitch = 666; say $a;  # OUTPUT: «42␤666␤» 

# No such method 'snitch' for invocant of type 'Int'

# raku --version
# Welcome to Rakudo™ v2023.02.
# Implementing the Raku® Programming Language v6.d.

# Evidently a 6.e thing.

say "===";

sub spy ($arg) { 
    say $arg;
    return $arg;
}

my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob >;

my @results = @monsters.map({.uc}).&spy.grep(/^R/);
say @results;  # [RHODAN]

say "---";

my @results = @monsters.map({.uc}).snitch.grep(/^R/);
say @results;  # [RHODAN]


## 
my @results = @monsters.map({.uc}).say.grep(/^R/);


if ( say "hey there" ) {
    say "good i said something";

}


## rakudo/src/core.e/Any-iterable-methods.pm6

#     method snitch(\SELF: &snitch-on = &note) is raw {
#         snitch-on SELF;
#         SELF
#     }
