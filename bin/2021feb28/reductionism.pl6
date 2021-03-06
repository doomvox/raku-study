#!/usr/bin/env perl6
# 
# reductionism.pl6            26 Feb 2021 

use v6;

# https://docs.raku.org/language/operators#Reduction_operators
# Reduction operators
#   Take multiple inputs and yield one item (always or just typically?)

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
    my @r = @n [+] @m;  ## WRONG  maybe meant >>+<<
    say @r;  # [6] 

    # So, that line ignores the @n and uses
    #  [+] @m;

    ## Aside: might've been thinking of this:
    say @n >>+<< @m;  # [3 5 7]

    my @s = [+] @n [+] @m;
    say @s; # [6]

    my @t = [+] @n, [+] @m;
    say @t; # [9] 
    
    # So, that ignores the ", [+] @m" completely

    my @u = ( [+] @n, [+] @m ); 
    say @u; # [9]

    my @v = ( ( [+] @n) , ( [+] @m ) );   ## a lot of parens
    say @v; # [9 6]   ## finally, the behavior I expected.

}

{
# Reduction operators have the same associativity as the operators they are based on.
    say [-] 4, 3, 2;      # 4-3-2 = (4-3)-2 = -1 
    say [**] 4, 3, 2;     # 4**3**2 = 4**(3**2) = 262144
}

{
    # Applying [+] to a single element will return that element
    say [+] 42;           # OUTPUT: «42␤» 

    ## the "return that element" rule gets it to work for any operator, I think
    my @c = < a b c >;    
    say [~] @c;  # abc
    say [~] 'z'; # z
}
