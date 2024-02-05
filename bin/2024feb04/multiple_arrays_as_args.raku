#!/usr/bin/env raku
# 
# multiple_arrays_as_args.raku            04 Feb 2024 

use v6;

# david christiansen asks about:
# @result = foo @list1, @list2, @list3;

{ 
    # return the first element of each of three arrays
    sub foo ( @a, @b, @c ) {
        return @a[0], @b[0], @c[0];
    }

    my @list1 = << alpha beta gamma >>;
    my @list2 = << a b c >>;
    my @list3 = << wuhn tew thuree >>;

    my @result = foo @list1, @list2, @list3;
    say @result; # [alpha a wuhn]
}


{ 
 
    sub foo ( *@a ) {
        return @a;
    }

    my @list1 = << alpha beta gamma >>;
    my @list2 = << a b c >>;
    my @list3 = << wuhn tew thuree >>;

    my @result = foo @list1, @list2, @list3;
    say @result; # [alpha beta gamma a b c wuhn tew thuree]

}
