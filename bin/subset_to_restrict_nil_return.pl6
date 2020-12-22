#!/usr/bin/env perl6
# 
# subset_to_restrict_nil_return.pl6            20 Dec 2020 

## my findings:
#  o  added semi-colons to get it to parse as a script.
#  o  added "say"s to echo returns
#  o  confirmed reported behavior

use v6;

# Yary Hluchan <not.com@gmail.com> question:
# https://www.nntp.perl.org/group/perl.perl6.language/2020/12/msg36850.html
#   perl6-language@perl.org

{subset non-Nil where * !=== Nil;
 # (non-Nil)
 sub out-check($out) returns non-Nil { return $out }
 # &out-check
 say out-check(44);
 # 44
 say out-check(Nil);
 # Nil
 ## ^ Huh, I expected an exception on "out-check(Nil)" saying the return value failed the "returns" constraint.
}

{
    ## The subtype works as I expect as an the argument check
    sub in-check (non-Nil $in) { $in }
    # &in-check
    say in-check(33);
    # 33
    say in-check(Nil);

    # Constraint type check failed in binding to parameter '$in'; expected non-Nil but got Nil (Nil)
    #   in sub in-check at <unknown file> line 1
    #   in block <unit> at <unknown file> line 1
    CATCH { default { say "CAUGHT: ", .Str; } }
}

## $ raku --version
## This is Rakudo version 2020.07 built on MoarVM version 2020.07
## implementing Raku 6.d.

## The experts say that Nil has to propagate, that's central to the error handling approach.

{
    sub no-nil( $val ) {
        die "Nil value, skipping return (maybe)" if $val ~~ Nil;
        return $val;
    }

    say no-nil( 66 );
    say no-nil( Nil );

}
