#!/usr/bin/env perl6
# 
# pushy_hashes_and_arrays.raku            05 Jun 2022 

use v6;


## Starting with an example in the docs:
{
    my @a = <a b c>;
    my @b = <d e f>;
    @a.push: @b;
    say @a; # [a b c [d e f]]
}

{
    my @a = <a b c>;
    my @b = <d e f>;
    @a.push: | @b;
    say @a; # [a b c d e f]
}

{
    my @a = <a b c>;
    my @b = <d e f>;
    @a.push: <Z X W>;
    say @a; # [a b c (Z X W)]
}

{
    my @a = <a b c>;
    my @b = <d e f>;
    @a.push: | <Z X W>;
    say @a; # [a b c Z X W]
}


{
    my @a = <a b c>;
    my @b = <d e f>;
    @a.append: <Z X W>;    # append is like push, but does a flatten...
    say @a; # [a b c Z X W]
}



{
    my @a = <a b c>;
    my @b = <d e f>;
    my @c = <X Y Z>;

    @b.push: @a;
    @c.push: @b;
    say @c;        # [X Y Z [d e f [a b c]]]
}
{
    say "===";
    my @a = <a b c>;
    my @b = <d e f>;
    my @c = <X Y Z>;

    @b.push: @a;
    @c.push: @b;
    say @c;             # [X Y Z [d e f [a b c]]]
    my @d = <whatever>;

    # aside:
    @a.push: @d;
    say @a;      # [a b c [whatever]]

    @d.append: @c;
    say @d; # [whatever X Y Z [d e f [a b c]]]

}

{
    say "===";
    my @a = <a b c>;
    my @b = <d e f>;
    my @c = <X Y Z>;

    @b.push: @a;
    @c.push: @b;
    say @c;             # [X Y Z [d e f [a b c]]]

    say @c.WHAT;

    say @c.flat;        # (X Y Z [d e f [a b c]])
    say @c.flat.WHAT;   # (Seq)
    }


# bruce gray idea, why can't you hyper the slip to do it recursively?
  # raku -e 'say .raku for |<< (4,7,8,(32,57,88))'

{
    say "===";
    my @a = <a b c>;
    my @b = <d e f>;
    my @c = <X Y Z>;

    @b.push: @a;
    @c.push: @b;

    say @c;  # [X Y Z [d e f [a b c]]]  implies .gist

    put @c.raku;  # ["X", "Y", "Z", ["d", "e", "f", ["a", "b", "c"]]]
}

{    my @c = ["X", "Y", "Z", ["d", "e", "f", ["a", "b", "c"]]];
     say @c;  #  [X Y Z [d e f [a b c]]]

     for |<< (4,7,8,(32,57,88)) {
         say $_.raku;   # 
     }
# 4
# 7
# 8
# $(32, 57, 88)

#     (4,7,8,(32,57,88)).map({ .flat.raku.put });

}

## Note: none of us remember how to do recursive flatten all the way down.

{
    # from docs:
    # https://docs.raku.org/routine/flat
    say ($('a', 'b'), 'c')>>.List.flat;      # (a b c)

    say ( (4,7,8,(32,57,88)) )>>.List.flat;  # (4 7 8 32 57 88)

    say ('c')>>.List.flat;           # (c)
    say ('c')>>.List.flat.WHAT;      # (Seq)
    say ('c',)>>.List.flat;          # (c)
    say ('c',)>>.List.flat.WHAT;     # (Seq)


    say ( (4,7,8,(32,57,88)) )>>.list.flat;  # (4 7 8 32 57 88)

}

{
    class Less is List {
        method List {
            "forgetit";
        }
    }

    my $l = Less.new('a', 'b', 'c');
    say $l;  # (a b c)

    say $l.List; # forgetit
    say $l.list; # (a b c)    
}
