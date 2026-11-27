#!/usr/bin/env raku


# Guide to signature literals
#  https://docs.raku.org/language/signatures

use v6.d;
# use v6.e.PREVIEW;

## echo raku version


sub stuff ( $a, $b ) {
    say "the first stuff: $a";
    say "the other stuff: $b";
}

stuff( "hey", "ho" );
# Output:
# the first stuff: hey
# the other stuff: ho


my $sig = :($a, $b);

# sub thing ( $sig ) {
#     say "the first thing: $a";
#     say "the other thing: $b";
# }

# stuff( "alpha", "omega" );
# # Variable '$a' is not declared.  Perhaps you forgot a 'sub' if this was

sub thing $sig {
    say "the first thing: $a";
    say "the other thing: $b";
}

stuff( "alpha", "omega" );

