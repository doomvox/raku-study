#!/usr/bin/env raku
# 
# multiple_arrays_as_args.raku            04 Feb 2024 

use v6;

# david christiansen asks about:
# @result = foo @list1, @list2, @list3;

my @list1 = << alpha beta gamma >>;
my @list2 = << a b c >>;
my @list3 = << wuhn tew thuree >>;

say "===";
{ 
    # return the first element of each of three arrays
    sub foo ( @a, @b, @c ) {
        return @a[0], @b[0], @c[0];
    }

    my @result = foo @list1, @list2, @list3;
    say @result; # [alpha a wuhn]
}

say "===";
{ # slurp multiple arrays into one (perlish)
    sub foo ( *@a ) {
        return @a;
    }

    my @result = foo @list1, @list2, @list3;
    say @result; # [alpha beta gamma a b c wuhn tew thuree]
}


say "===";
{ # Accept an indefinite number of arrays, using them as individual elements
    sub foo ( **@a ) {
        say @a[0][0]; # alpha, the first element of the first array
        return @a;
    }

    my @result = foo @list1, @list2, @list3;
    say @result; # [[alpha beta gamma] [a b c] [wuhn tew thuree]]
}
