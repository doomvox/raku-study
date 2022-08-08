#!/usr/bin/env perl6
# 
# container_comparison_op.raku            07 Aug 2022 

use v6;

# say infix:<=:=> (Mu);
# my $a = 1;
# say infix:<=:=> $a;

say infix:<=:=>(42);    # True
say infix:<=:=>(False); # True

say (Mu) =:= (Mu); # True

my $a = 23;
say $a =:= (Mu);   # False

# containerized 23 is not same as uncontainerized as far as =:=  is concerned.
say $a =:= 23;     # False   


# say  infix:<=:=>(Mu); 
# # Cannot resolve caller infix:<=:=>(Mu:U); none of these signatures match:
# #     ($?)
# #     (Mu \a, Mu \b)

say "===";
say "$?FILE: $?LINE"; # OUTPUT: "hello.p6: 23" 
                      # if this is the line 23 of a 
                      # file named "hello.p6"

  #  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug07/container_comparison_op.raku: 29



# sub weirdzo ($?) {
#     # say "hi, from weirdzo on: $?"
# }
    ## Unsupported use of $? variable; in Raku please use $! for handling child errors also

# sub weirdzo ($?a) {
#     say "hi, from weirdzo on: $?a"  # Variable '$?a' is not declared
# }

# sub weirdzo ($?a) {
#     say "hi, from weirdzo on: $a"  
# }

# Parameters with a '?' twigil, like '$?a', are not allowed in signatures.

# sub weirdzo ($?LINE) {
#     say "hi, from weirdzo on: $?LINE"  # should be 53
# }
# Parameters with a '?' twigil, like '$?LINE', are not allowed in
# signatures.

## Used here:
## https://github.com/rakudo/rakudo/blob/master/src/core.c/hash_slice.pm6 

# /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

# 15:56 < lizmat> $ means a required positional in which we're not interested, so we didn't bother to give it a name
# 15:56 < lizmat> $? is an optional positional in which we're not interested, also without name 


say "===";

say infix:<=:=>;     # True
say infix:<=:=> ();  # True

