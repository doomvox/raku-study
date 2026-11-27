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

# sub thing $sig {
#     say "the first thing: $a";
#     say "the other thing: $b";
# }

# stuff( "alpha", "omega" );
# # ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/SubSigSchool/50-signature_objects.raku

# sub thing -> $sig {
#     say "the first thing: $a";
#     say "the other thing: $b";
# }
# stuff( "alpha", "omega" );

# # ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/SubSigSchool/50-signature_objects.raku
# # Missing block
# # at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/SubSigSchool/50-signature_objects.raku:43
# # ------> sub thing⏏ -> $sig {
# #     expecting any of:

## Q: is there a way to use "Standalone Signature object"
## as a sub signature?

## This is fun:
say $sig.^methods;

# (The 'ForeignCode' class is a Rakudo-specific implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific implementation detail and has no serviceable parts inside The 'ForeignCode' class is a Rakudo-specific implementation detail and has no serviceable parts inside Capture arity count params new ACCEPTS raku gist BUILDALL) 

# Actual available methods:
#  arity count params new ACCEPTS raku gist BUILDALL


say $sig.^methods;


# sub thing -> $sig {
#      say "the first thing: $a";
#      say "the other thing: $b";
# }
# stuff( "alpha", "omega" );
