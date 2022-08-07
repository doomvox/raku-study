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


say  infix:<=:=>(Mu); # True
# Cannot resolve caller infix:<=:=>(Mu:U); none of these signatures match:
#     ($?)
#     (Mu \a, Mu \b)



