#!/usr/bin/env perl6
# 
# reductionism.pl6            26 Feb 2021 

use v6;

# https://docs.raku.org/language/operators#Reduction_operators
# Reduction operators

# Any infix operator (except for non-associating operators) can
# be surrounded by square brackets in term position to create a
# list operator that reduces using that operation.

{
    say [+] 1, 2, 3;      # 1 + 2 + 3 = 6 
    my @a = (5, 6);
    say [*] @a;           # 5 * 6 = 30
}

{
    ## confused code that produces no warnings or errors
    my @n = 2, 3, 4;
    my @m = 1, 2, 3;
    say @n; # [2 3 4]
    say @m; # [1 2 3]
    my @r = @n [+] @m;
    say @r;  # [6]  # ?

#     2+1= 3
#     3+2= 5
#     4+3= 7
}


# Reduction operators have the same associativity as the operators they are based on.

# say [-] 4, 3, 2;      # 4-3-2 = (4-3)-2 = -1 
# say [**] 4, 3, 2;     # 4**3**2 = 4**(3**2) = 262144

# Applying [+] to a single element will return that element

# say [+] 42;           # OUTPUT: «42␤» 


