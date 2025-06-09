#!/usr/bin/env raku
# 
# whatever_prime_matcher_example.raku            08 Jun 2025 

use v6;

{
    sub find-constraint {
        return 23;
    }
    {
        my $constraint           = find-constraint() // *;
        my $maybe-always-matcher = * ~~ $constraint;

        say $maybe-always-matcher('ha!');   # False
        say $maybe-always-matcher(7);       # False
        say $maybe-always-matcher(23);      # True
        say $maybe-always-matcher('23');    # True

    }
}


{
    say "===";
    sub find-constraint {
        return Nil;
    }

    {
        my $constraint           = find-constraint() // *;
        my $maybe-always-matcher = * ~~ $constraint;

        say $maybe-always-matcher('ha!');   # True
        say $maybe-always-matcher(7);       # True
        say $maybe-always-matcher(23);      # True
        say $maybe-always-matcher('23');    # True

    }
}

## So, if find-contraint() fails, then the alternative the whatever value is used,
## and *that* always matches, so "maybe-always" is conditional on that failure...

## (yet another questionable code example in the docs)
## https://docs.raku.org/type/Whatever

