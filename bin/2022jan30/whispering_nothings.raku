#!/usr/bin/env perl6
# 
# whispering_nothings.raku            30 Jan 2022 

use v6;

my $var1 = Nil;

my $var2 = Mu;

say "1: ";
say $var1;  # (Any)
say "2: ";
say $var2;  # (Mu)

## say "var1: $var1, var2: $var2";

say "===";

sub jstuff_a ($thing) {
    print ".";
    if ($thing eq 'some') {
        say "looks truish: ";
        return True;
        }
    }

sub jstuff_b (Mu $thing) {
    print ".";
    if ($thing eq 'some') {
        say "looks truish: ";
        return True;
        }
    }

my $junction = any( 'some', 'another', 'not_really' );
say jstuff_a( $junction );  # any(True, (), ())

say jstuff_b( $junction );  # True


say "===";

my $nothing_much = Nil;
# say $nothing_much.Mu;  ## No such method 'Mu' for invocant of type 'Any'

{

    my $junction = all('alpha', 'beta', 'gamma');
#    say $junction.Mu;  # No such method 'Mu' for invocant of type 'Str'
#                       # because components are type Str?

#    say $junction.Any;
#   # No such method 'Any' for invocant of type 'Str'.  Did you mean 'any'?

    say $junction.^methods;
    # (new CALL-ME sink defined Bool ACCEPTS Str iterator gist raku BUILDALL)

    say 'alpha'.^methods;

    ## (BUILD Capture COERCE Int Num Version pred succ match
    ## subst-mutate parse-base Date DateTime IO WHY WHICH Bool Str
    ## Stringy DUMP ACCEPTS chomp chop starts-with ends-with substr-eq
    ## contains indices index rindex Numeric gist raku comb subst
    ## lines split samecase samemark samespace trim trim-leading
    ## trim-trailing words encode wordcase trans indent substr
    ## substr-rw codes chars uc lc tc fc tclc flip
    ## Submethod+{is-hidden-from-backtrace}.new Method+{is-pure}.new
    ## Method+{is-pure}.new Method+{is-pure}.new Method+{is-pure}.new
    ## Method+{is-pure}.new Method+{is-pure}.new Method+{is-pure}.new
    ## Method+{is-pure}.new Method+{is-pure}.new Method+{is-pure}.new
    ## NFC NFD NFKC NFKD)

    say 'alpha'.WHAT;
    # (Str)

    say $junction.WHAT;

}


# ===
# Author:  doom@kzsu.stanford.edu

