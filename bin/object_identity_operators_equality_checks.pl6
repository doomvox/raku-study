#!/usr/bin/env perl6
# 
# object_identity_operators_equality_checks.pl6            04 Oct 2020 

use v6;

## Darren Duncan brings up the subject of object identity checking:

# container identity:
#   =:=    ref to same object (stricter than value check)

# docs:
# "Container identity operator. Returns True if both arguments
# are bound to the same container. If it returns True, it
# generally means that modifying one will also modify the other."

# value identity:
#   ===    contents are the same

# docs:
# "Value identity operator. Returns True if both arguments are
# the same object, disregarding any containerization."

## From Alan: From Andrew Shitov's book (page 42) 
##   ===  returns True if both operands have the same value.  
##   =:=  returns True if refer to the same object


## Darren Duncan steps through it:

## if value is false container is false
## if value is true, container might or might not be true
## if container is true, then value is guaranteed to be true.  ((hm.))
## if container is false, then value might or might not be 

{
    say "--- block 0 ---";
    ## before we get started, go through some basic cases
    say 3 === 4;  # False
    say 3 =:= 4;  # False
    say 3 === 3;  # True
    say 3 =:= 3;  # True

    say "a" === "b";  # False
    say "a" =:= "b";  # False
    say "a" === "a";  # True
    say "a" =:= "a";  # True

    say 3 eqv 4;  # False
    say 3 eqv 3;  # True
    say "a" eqv "b";  # False
    say "a" eqv "a";  # True

    say "checking ==";
    say 3 == 4;  # False
    say 3 == 3;  # True
    ## Errors: Cannot convert string to number: base-10 number must begin with valid digits
    ## say "a" == "b";   
    ## say "a" == "a";  

    say "checking eq";
    say 3 eq 4;  # False      because eq coerces 3 to '3' and  4 to '4'
    say 3 eq 3;  # True
    say "a" eq "b";  # False
    say "a" eq "a";  # True

    say "comparing Int 1 and Rat 1.0";
    say 1 == 1.0;  # True
    say 1 eq 1.0;  # True (?) Expected it would behave like:
    say '1' eq '1.0';  # False  But: "1.0.Str" stringifies to '1' ?
    say 1.Str , ' ', 1.0.Str;  # 1 1
    say 1.WHAT, ' ', 1.0.WHAT; # (Int) (Rat)
    say 1.WHICH, ' ', 1.0.WHICH; # Int|1 Rat|1/1
    say 1 eqv 1.0;  # True
    say 1 === 1.0;  # False
    say 1 =:= 1.0;  # False
}

{
    say "--- block 1 ---";
    my ($z, $x, $y) = (2, 3, 3);
    my $x_prime := $x;  # an alias, now $x_prime and $x point at the same container

    say $x.WHICH, ' ', $z.WHICH;  # Int|3 Int|2
    say $x === $z;  # False   different values, 3 vs 2
    say $x =:= $z;  # False   ... and different containers

    say $x.WHICH, ' ', $y.WHICH;  # Int|3 Int|3
    say $x === $y;  # True    the values are the same, both 3
    say $x =:= $y;  # False   but they're different containers

    say $x.WHICH, ' ', $x_prime.WHICH; # Int|3 Int|3
    say $x === $x_prime;  # True    values are the same here too, both 3
    say $x =:= $x_prime;  # True    but they're the *same* containers 

    my @a = ( $z, $x, $y, $x_prime );
    my @b = ( $z, $x, $y, $x_prime );

    # reflexive check: everything the same on both sides
    say @a === @a; # True     
    say @a =:= @a; # True

    say @a === @b; # False   But: aren't the values the same? Deceptive op name.
    say @a =:= @b; # False

    say @a, ' ', @b;  # [2 3 3 3] [2 3 3 3]
    # despite the values being the same on both sides, "===" check fails
    # The name "Value identity operator" is deceptive. It checks WHICH:
    say @a.WHICH, ' ', @b.WHICH; # Array|63657728 Array|63657760

    say @a[2] === @b[2];                 # True
    say @a[2].WHICH, ' ', @b[2].WHICH;   # Int|3 Int|3

    say 'eqv: ', @a eqv @b;  # eqv: True
    my @c = (6, 6, 6, 6);
    say 'eqv: ', @a eqv @c;  # eqv: False

    my @d := @a; # top level alias
    say @a === @d; # True (?)  But I thought it didn't care about containers!
    say @a =:= @d; # True
    say @a.WHICH, ' ', @d.WHICH; # Array|69480784 Array|69480784
    # Note that these numbers change every run, so the comment above shows
    # a different value for @a.WHICH.

    # Okay, one more thing to try:
    say "***";
    say (1, 2, 3).WHICH; # List|76448864
    my @e := (1, 2, 3);
    my @f := (1, 2, 3);
    say @e, ' ', @f;  # (1 2 3) (1 2 3)
    say @e.WHICH, ' ', @f.WHICH;  # List|74906224 List|74906256
    say @e === @f; # False  (okay...)
    say @e =:= @f; # False  (what? aliased to the same constant list, no?);

    # This errors out: Cannot modify an immutable List ((1 2 3))
    #  @f[4] = 666;
    
    # I alias to the *same* constant list, but get different ids reported by WHICH
}

{
    say "--- block 2 ---"; 
    # checking again with string values (same behavior, of course)
    my @array1 = << whun tew thuree >>;
    my @array2 = << whun tew thuree >>;

    say @array1 === @array2;  # False (?)
    say @array1 =:= @array2;  # False 
    say @array1, @array2; # [whun tew thuree][whun tew thuree]
    ## so: despite calling it a "value" comparison, identical values don't yield a true comparison.

    ## eqv is less surprising in this case
    my @array3 = < alpha beta gamma  >;
    say @array1 eqv @array2;  # True
    say @array1 eqv @array3;  # False

    @array2.push('foah');
    say @array1 eqv @array2;  # False

    ## but does eqv look at values or the count of items? A: values
    my @array4 = < AAA BBB CCC  >;
    say @array1 eqv @array4;  # False

    ## The traditional numeric comparison coerces to Num and compares count (see block 4)
    say @array1 == @array4;  # True
    ## string comparison joins arrays on spaces and compares contents of arrays
    say @array1 eq @array4;  # False
}

# David Christiensen asks:
#   Is the === operator recursive? e.g. does it work with references
#   to data structures? If so, does it handle circular references?

# A: neither === or =:= have trouble with circularity (I don't think they recurse)
#    eqv, on the other hand, hangs-up when run on circular structures
{
    say "--- block 3 ---";
    my ($w, $x, $y) = (2, 3, 3);
    my $z := $x;  # alias

    my @a = ( $w, $x, $y, $z );
    my @b = ( $w, $x, $y, $z );
    # so what if, starting to create a circular structure
    @a[2] := @b;

    say @a === @a; # True
    say @a =:= @a; # True

    say @a === @b; # False
    say @a =:= @b; # False
    say @a eqv @b; # False

    dd @a;
    # Array @a = [2, 3, [2, 3, 3, 3], 3]

    # completes the circularity, two structures refer to each other now
    @b[2] := @a;
    dd @a;
    # Array @a = ((my @Array_69128432) = [2, 3, [2, 3, @Array_69128432, 3], 3])
    dd @b;
    # Array @b = ((my @Array_63496432) = [2, 3, [2, 3, @Array_63496432, 3], 3])
    say @a;  # (\Array_68781288 = [2 3 [2 3 Array_68781288 3] 3])
    say @b;  # (\Array_68781320 = [2 3 [2 3 Array_68781320 3] 3])

    say @a === @b; # False
    say @a =:= @b; # False
    ## This hangs up indefinitely:
    # say @a eqv @b; 

    use Test;
    ## this hangs up indefinitely also:
    # is-deeply( @a, @b, "is-deeply deals with comparing structures with circular references" );
}

{
    say "--- block 4 ---";
    ## starting over again with arrays of strings
    my @items1 = << whun tew thuree >>;
    my @items2 = << whun tew thuree >>;

    say @items1 == @items2;   # True  # note: doesn't complain they're non-numeric
    say @items1 cmp @items2;  # Same  # but "cmp" is for sort routines
    say @items1 eq @items2;   # True
   
    ## What's going on: "=="  and "eq" "cast their arguments",
    ## "==" converts to numeric and "eq" converts to string
    say @items1.Num;   # 3
    dd @items1.Str;    # "whun tew thuree"

    use Test;
    is-deeply( @items1, @items2, "recursive comparion shows the @items* arrays match" );
    # ok 1 - recursive comparion shows the @items* arrays match

    my @items3 := @items1; # an alias
    say @items1 =:= @items3;  # True
    say @items1 === @items3;  # True

    say @items2 =:= @items3;  # True
    say @items2 === @items3;  # True

  ## Also covered '==' and 'eq' in this script:
  ##   basic_equality.pl6
}

{ # summarizing some behavior seen above.
    say "--- block 5 ---";

    my @a = ( 2, 3, 3 );
    my @b = ( 2, 3, 3 );
    
    my @b_prime := @b;

    say @a =:= @b; # False, ok, because they're different containers.
    say @a === @b; # False: despite being the same "values"-- it uses .WHICH
    say @a.WHICH, ' ', @b.WHICH;  # Array|76046968 Array|76047000

    say @b =:= @b_prime; # True, makes sense, they point at the same container
    say @b === @b_prime; # True? 
    # To quote the docs: "Returns True if both arguments are the
    # same object, disregarding any containerization."
    # But they're *different* objects aren't they?
    # But WHICH doesn't think they're different:
    say @b.WHICH, ' ', @b_prime.WHICH;  # Array|67218704 Array|67218704


    # Back-up to a simpler case, using scalars
    my ($x, $y, $z) = (3, 3, 2);
    my $x_prime := $x;

    say $x === $z;  # False: different values, 3 vs 2
    say $x =:= $z;  # False: okay, different containers
    say $x.WHICH, ' ', $z.WHICH;  # Int|3 Int|2

    say $x === $x_prime;  # True  values are the same: both 3
    say $x =:= $x_prime;  # True  because they're the same containers 
    say $x.WHICH, ' ', $x_prime.WHICH; # Int|3 Int|3

    say $x =:= $y;  # False   because they're different container
    say $x === $y;  # True    the values are the same, both 3
    say $x.WHICH, ' ', $y.WHICH;  # Int|3 Int|3


}



## TODO 
## William Michels raises this issue:
##   https://github.com/rakudo/rakudo/pull/3874 

# I'm dropping Raku REPL code here: 
# > 'fish' eq all <fish seafood>
# all(True, False)
# > 'fish' ne all <fish seafood>
# True
# > 
# > 'fish' eq any <fish seafood>
# any(True, False)
# > 'fish' ne any <fish seafood>
# False
# > 
# > 'fish' eq one <fish seafood>
# one(True, False)
# > 'fish' ne one <fish seafood>
# False



##  TODO The oddities of how eqv works with Sets...
## 
# # https://docs.raku.org/language/operators#___top

# he default eqv operator even works with arbitrary
# objects. E.g., eqv will consider two instances of the same
# object as being structurally equivalent:

# my class A {
#     has $.a;
# }
# say A.new(a => 5) eqv A.new(a => 5);  # OUTPUT: «True␤»

# Although the above example works as intended, the eqv code
# might fall back to a slower code path in order to do its
# job. One way to avoid this is to implement an appropriate infix
# eqv operator:

# my class A {
#     has $.a;
# }
# multi infix:<eqv>(A $l, A $r) { $l.a eqv $r.a }
# say A.new(a => 5) eqv A.new(a => 5);            # OUTPUT: «True␤»

# Note that eqv does not work recursively on every kind of
# container type, e.g. Set:

# my class A {
#     has $.a;
# }
# say Set(A.new(a => 5)) eqv Set(A.new(a => 5));  # OUTPUT: «False␤»

# Even though the contents of the two sets are eqv, the sets are
# not. The reason is that eqv delegates the equality check to the
# Set object which relies on element-wise === comparison. Turning
# the class A into a value type by giving it a WHICH method
# produces the expected behavior:


## Docs:
# WHICH
#
# The object's identity value. This can be used for hashing and
# identity comparison, and is how the === infix operator is
# implemented.

# This returns a string that identifies the object. The string is
# composed by the type of the instance (Range) and the min and
# max attributes:

# say (1..2).WHICH # OUTPUT: «Range|1..2␤»

# =:=
# Container identity operator. Returns True if both arguments are
# bound to the same container. If it returns True, it generally
# means that modifying one will also modify the other.

# ===
#  ... 
# If you want to create a class that should act as a value type,
# then that class must create an instance method WHICH, that
# should return a ValueObjAt object that won't change for the
# lifetime of the object.

# # different types 
# say 1 === 1.0;              # OUTPUT: «False␤»

# TODO try that with ===, eqv, ==

