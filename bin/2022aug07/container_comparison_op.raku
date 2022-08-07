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


say infix:<=:=>(Mu); # True
# Cannot resolve caller infix:<=:=>(Mu:U); none of these signatures match:
#     ($?)
#     (Mu \a, Mu \b)



