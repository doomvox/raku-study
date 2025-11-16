#!/usr/bin/env perl6
# 
# hash_from_two_arrays.raku            07 Apr 2021 

## SYNOPSIS:
##    my %h = @names Z=> @numbers; # {a => 1, b => 2, c => 3}

use v6;

{ # simple hash set-up and use
  my %h = 'a' => 1, 'b' => 2, 'c' => 3;
  say %h; # {a => 1, b => 2, c => 3}
  say %h{'b'}; # 2
  say %h<a c>; # (1 3)
  say %h<a c>[1];  # 3
}
say "===";
{ # zipping together two arrays, and pairing up into a hash:
    my @names = <a b c>;
    my @numbers = (1, 2, 3);
    say @names [Z] @numbers; # ((a 1) (b 2) (c 3))

#    say map: { $_[0] => $_[1] }, @names [Z] @numbers;
    say (@names [Z] @numbers).map({ $_[0] => $_[1] }); # (a => 1 b => 2 c => 3)
    
    my %h = (@names [Z] @numbers).map({ $_[0] => $_[1] }); 
                                                           
    say %h; # {a => 1, b => 2, c => 3}
    say %h{'b'}; # 2
    say %h<a c>; # (1 3)
    say %h<a c>[1];  # 3

    # Can also maintain an ordered list of Pairs:
    my @a = (@names [Z] @numbers).map({ $_[0] => $_[1] }); 
    say @a; # [a => 1 b => 2 c => 3]
    say @a[1]; # b => 2
    say @a[1].WHAT;  # (Pair)
}
say "===";
{ # 
    my @names = <a b c>;
    my @numbers = (1, 2, 3);
    say @names [Z] @numbers; # ((a 1) (b 2) (c 3))

#    say (@names [Z] @numbers).map({ $_[0] => $_[1] }); # (a => 1 b => 2 c => 3)
#    my %h = (@names [Z] @numbers).map({ $_[0] => $_[1] }); 

    my %h = @names [=>] @numbers;
    say %h; # {a b c => [1 2 3]}  ## what?

}
say "===";
{ # heh: [Z=>]  to zip and pair up at the same time
    my @names = <a b c>;
    my @numbers = (1, 2, 3);
    say @names [Z] @numbers; # ((a 1) (b 2) (c 3))

    my %h = @names [Z=>] @numbers;
    say %h; # {a => 1, b => 2, c => 3}

    say %h{'b'};     # 2
    say %h<a c>;     # (1 3)
    say %h<a c>[1];  # 3

    # Actually, the brackets aren't needed in this case:
    #    my %h = @names Z=> @numbers; # {a => 1, b => 2, c => 3}
}
say "===";

{ # heh: [Z=>]  to zip and pair up at the same time
    my @names = <a b c>;
    my @numbers = (1, 2, 3);
    say @names [Z] @numbers; # ((a 1) (b 2) (c 3))

    my %h0 = @names [Z=>] @numbers;
    say %h0; # {a => 1, b => 2, c => 3}

    say @names Z @numbers; # ((a 1) (b 2) (c 3))
    say @names [Z] @numbers; #  ((a 1) (b 2) (c 3))

    say @names => @numbers;  # [a b c] => [1 2 3]
    say | @names => | @numbers;  # (a b c) => (1 2 3)

    say @names [=>] @numbers;  # [a b c] => [1 2 3]

    ## what *precisely* do the square brackets do?
    say @names [~] @numbers;  # a b c1 2 3
    say @names ~ @numbers;    # a b c1 2 3

    ## a case where the square brackets don't change the result at all:
    say @names Z~ @numbers;  # (a1 b2 c3)
    say @names [Z~] @numbers;  # (a1 b2 c3)

    ## square brackets here don't change result at all:
    say @names [Z=>] @numbers;  # (a => 1 b => 2 c => 3)
    say @names Z=> @numbers;    # (a => 1 b => 2 c => 3)

    my %h = @names Z=> @numbers; # {a => 1, b => 2, c => 3}
    say %h;

    say %h{'b'}; # 2
    say %h<a c>; # (1 3)
    say %h<a c>[1];  # 3
}


{
    my @nums = (1, 2, 3, 5, 7);
    say [+] @nums; # 18
    say + @nums;   # 5    ## note, *not* an error

    my @eves = (2, 4, 6, 8, 10);
    say @nums + @eves;   # 10
    say @nums [+] @eves; # 10
    say @nums.elems [+] @eves.elems; # 10

    say @nums.elems Z+ @eves.elems;  # (10)

    ## try this theory: reduction only makes sense as a prefix on a single stream,
    ## and the fact it let's you put it in an infix position without warning is a flaw.


    # you can see how this could make sense:
    say [+] @nums + [+] @eves;  # 35

    # here we hit the implicit .elems call, *and* have a mysterious (to me) implicit +
    say [+] @nums  [+] @eves;  # 10
    # Oh, I see: @eves.elems happens first, it becomes one of two
    # things added to the @nums.elems.
    # Q: why the .elems call?  Something about the scalarness of what + wants.
    
    }
