#!/usr/bin/env perl6
#                                                                            l
# multi_dispatch_brad_gilbert_factorial.raku            26 Sep 2021 

use v6;

## https://mail.google.com/mail/u/0/h/1qg42auab89zp/?&th=17c1ef0df145db5f&v=c

## I don't think I see what brad gilbert is getting at here
## I don't see a "subset" (or a where) in this example.
## I *think* you could resolve is with an "is default".



# brad gilbert:
#   Doing what you want ((?)) would make using subsets with multis much less useful. 

{
    multi turn_0_to_1 ( 0 --> 1 ){}
    say turn_0_to_1(0);   # 1
##    say turn_0_to_1(1);   # Cannot resolve caller turn_0_to_1(Int:D); none of these signatures match:
}

{ say "---";
  multi transform ( 0 --> 1 ){}
  multi transform ( 1 --> 2 ){}
  say transform(0);   # 1
  say transform(1);   # 2
  say transform(2);   # Cannot resolve caller transform(Int:D); none of these signatures match:
}


say "===";
{
     multi factorial ( 0 --> 1 ){}; 
#     multi factorial ( 1 --> 1 ){ say "second!" };  # second!
     multi factorial ( 1 ){ say "second!"; return 1; };  # 
     multi factorial ( UInt \n ){ say "third!"; factorial(n - 1) * n }; 
#     multi factorial ( UInt \n  --> UInt ){ say "third!"; factorial(n - 1) * n }; 

     say factorial( 1 );   #  OUTPUT:  1
     # ERROR: both UInt and 1 subsets match.
}

## Brad Gilbert, further:  

# You could modify the general case, but that is tedious and error prone.
# 
#     multi factorial ( Int \n where {$_ >= 0 && $_ != 0 && $_ != 1} ){ factorial(n - 1) * n }
# 
# (The reason I didn't just do $_ >= 2 is that if another multi is added it should be dealt with in the same way as 0 and 1)


## SURVEY SAYS: maybe brad is confused about my confusion.  subsets, specificity, yes? 


# ===
# Author:  doom@kzsu.stanford.edu

