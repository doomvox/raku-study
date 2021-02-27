#!/usr/bin/env perl6
# 
# hyperism_in_pairs.pl6            26 Feb 2021 

use v6;

# https://docs.raku.org/language/operators#Hyper_operators

# Hyper operators

# Hyper operators include « and », with their ASCII variants << # and >>. 

# They apply a given operator enclosed  to  lists  returning the resulting list
# the pointy # part of « or » aimed at the shorter list. 

# Single elements are    treated as lists of one element

# If one of the lists is shorter than the other, the operator
# will cycle over the shorter list until all elements of the
# longer list are processed.

{
    # add 2 to every element
    say (1, 2, 3) »*» 2;          # (2 4 6)

    # append a/b to each (shows recycling rule)
    say (1, 2, 3, 4) »~» <a b>;   # (1a 2b 3a 4b)
    
    # add each element in sequence
    say (1, 2, 3) »+« (4, 5, 6);  # (5 7 9)

    # apply series of functions to a single element
    say (&sin, &cos, &sqrt)».(0.5);
    # (0.479425538604203 0.8775825618903728 0.7071067811865476)

    # The last example illustrates how postcircumfix operators (in this case .()) can also be hypered.

}

{
    ## Make errors into warnings in this scope
    CATCH { default { say "CAUGHT: ", .Str; .resume } }

    # a problem with numbers of elements:
    say (1, 2, 3) »+« (4, 5, 6, 7);  

    ## CAUGHT: Lists on either side of non-dwimmy hyperop of infix:<+> are not of the same length while recursing
    ## left: 3 elements, right: 4 elements
}

{
    # In this case, it's the postcircumfix[] which is being hypered.
    # so we're pulling out the 1th element from each array:
    my @a = <1 2 3>;
    my @b = <4 5 6>;
    say (@a,@b)»[1]; # (2 5)
    say (@a,@b)»[0]; # (1 4) 
}


{
    # Assignment metaoperators can be hyped.
    my @a = 1, 2, 3;
    # adds 1 to each item
    say @a »+=» 1;    # [2 3 4]

    my ($a, $b, $c);
    (($a, $b), $c) «=» ((1, 2), 3);
    say "$a, $b, $c";       #  1, 3
}

# Hyper forms of unary operators have the pointy bit aimed at the operator and the blunt end at the list to be operated on.

# my @wisdom = True, False, True;
# say !« @wisdom;     # OUTPUT: «[False True False]␤» 
 
# my @a = 1, 2, 3;
# @a»++;
# say @a;             # OUTPUT: «[2 3 4]␤»

# Hyper operators are defined recursively on nested arrays.

# say -« [[1, 2], 3]; # OUTPUT: «[[-1 -2] -3]␤»

# Also, methods can be called in an out of order, concurrent fashion. The resulting list will be in order. Note that all hyper operators are candidates for parallelism and will cause tears if the methods have side effects. The optimizer has full reign over hyper operators, which is the reason that they cannot be defined by the user.

# class CarefulClass { method take-care {} }
# my CarefulClass @objs;
# my @results = @objs».take-care();
 
# my @slops;        # May Contain Nuts 
# @slops».?this-method-may-not-exist();

# Hyper operators can work with hashes. The pointy direction indicates if missing keys are to be ignored in the resulting hash. The enclosed operator operates on all values that have keys in both hashes.
# %foo «+» %bar; 	intersection of keys
# %foo »+« %bar; 	union of keys
# %outer »+» %inner; 	only keys of %inner that exist in %outer will occur in the result

# my %outer = 1, 2, 3 Z=> <a b c>;
# my %inner = 1, 2 Z=> <x z>;
# say %outer «~» %inner;          # OUTPUT: «{"1" => "ax", "2" => "bz"}␤»

# Hyper operators can take user-defined operators as their operator argument.

# sub pretty-file-size (Int $size --> Str) {
#     # rounding version of infix:</>(Int, Int) 
#     sub infix:<r/>(Int \i1, Int \i2) {
#         round(i1 / i2, 0.1)
#     }
 
#     # we build a vector of fractions of $size and zip that with the fitting prefix 
#     for $size «[r/]« (2**60, 2**50, 2**40, 2**30, 2**20, 2**10)
#               Z      <EB     PB     TB     GB     MB     KB> -> [\v,\suffix] {
#         # starting with the biggest suffix, 
#         # we take the first that is 0.5 of that suffix or bigger 
#         return v ~ ' ' ~ suffix if v > 0.4
#     }
#     # this be smaller or equal then 0.4 KB 
#     return $size.Str;
# }
 
# for 60, 50, 40, 30, 20, 10 -> $test {
#     my &a = { (2 ** $test) * (1/4, 1/2, 1, 10, 100).pick * (1..10).pick };
#     print pretty-file-size(a.Int) xx 2, ' ';
# }
 
# # OUTPUT: «10 EB 4 EB 2 PB 5 PB 0.5 PB 4 TB 300 GB 4.5 GB 50 MB 200 MB 9 KB 0.6 MB␤»

# Whether hyperoperators descend into child lists depends on the nodality of the inner operator of a chain. For the hyper method call operator (».), the nodality of the target method is significant.

# say (<a b>, <c d e>)».elems;        # OUTPUT: «(2 3)␤» 
# say (<a b>, <c d e>)».&{ .elems };  # OUTPUT: «((1 1) (1 1 1))␤»

# You can chain hyper operators to destructure a List of Lists.

# my $neighbors = ((-1, 0), (0, -1), (0, 1), (1, 0));
# my $p = (2, 3);
# say $neighbors »>>+<<» ($p, *);   # OUTPUT: «((1 3) (2 2) (2 4) (3 3))␤»





