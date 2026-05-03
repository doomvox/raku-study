#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/flat_hammer_slip.raku


# use v6.e.PREVIEW; ## TODO I thought that you needed this for the flat hammer, but evidently not any more.
use v6.d;  # flat hammer slipped into 6.d, evidently

# From back in 2018 (?!):
#  /home/doom/End/Cave/RakuStudy/Notes/notes-basic_perl6_again

# The vertical bars ...  are the "slip" 
# operator, which kind-of sort-of do flattening.  (There's 
# a subtle difference between slip and flat that I forget).


## Anyway: the issue with .flat() and the new .flat(:hammer)
## (And the double-splat array de-reference syntax)
## is a familiar bit of evolution:  .flat doesn't do what
## anyone expects, so options had to be added to cover that
## the default behavior is wrong: the non-breaking change dance.
## (The idea of perl6 was to *fix* the defaults, but it was too
## complicated to hope you could get it all right, even with
## many years of banging on the design-- WiB.)

{
    # my early attempts at playing with slip and flat showed no difference:
    my @a = <aaa bbb>;
    my @b = <111 222>;

        # .say for (@a, @b);          ## TODO Emacs raku-mode bug, a leading .say messes with indentation.
                # [aaa bbb]
                # [111 222]

    for (@a, @b) { .say };
    say "---";
    # [aaa bbb]
    # [111 222]

    for (|@a, |@b) { .say };
    say "---";
    # aaa
    # bbb
    # 111
    # 222

    for (flat @a, @b) { .say };
    say "---";
    # aaa
    # bbb
    # 111
    # 222

    say (flat @a, @b).sort;
    # (111 222 aaa bbb)
    
    say (flat @a, @b);
    # (aaa bbb 111 222)

    say (flat @a, @b).grep({/2/});
    # (222)
}
say "===";

# https://docs.raku.org/routine/flat

# Interprets the invocant as a list, flattens non-containerized
# Iterables into a flat list, and returns that list.

# Note that Arrays containerize their elements by default, and
# so flat will not flatten them.

# ... does not flatten itemized sublists, e.g. $( 'a', 'b' ) 

# Keep in mind Map and Hash types are Iterable and so will be
# flattened into lists of pairs.

# You can use the hyper method call to call the .List method on
# all the inner Iterables and so de-containerize them, so that
# flat can flatten them:

{
  say [[1, 2, 3], [(4, 5), 6, 7]]      .flat;  # ([1 2 3] [(4 5) 6 7])

  say [[1, 2, 3], [(4, 5), 6, 7]]».say;  
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# [[True True True] [(True True) True True]]

  say [[1, 2, 3], [(4, 5), 6, 7]]».List.flat;  # (1 2 3 4 5 6 7)
  say [[1, 2, 3], [(4, 5), 6, 7]]».Slip.flat;  # (1 2 3 (4 5) 6 7)
  # Note: hyper .List deconts, but not hyper .Slip (?!)

  say "slip slip flat";
  say [[1, 2, 3], [(4, 5), 6, 7]]».Slip.Slip.flat;  # (1 2 3 (4 5) 6 7)
  say [[1, 2, 3], [(4, 5), 6, 7]]».Slip.flat.Slip;  # (1 2 3 (4 5) 6 7)

}
say "===";
{
    my @a = <a b c>;
    my @b = 'X', 'Y', @a;
    say @b; # [X Y [a b c]]
    say "---";

    say @b.flat;            # (X Y [a b c])
    say @b>>.flat;          # [(X) (Y) [(a) (b) (c)]]    # hyperflat is less flat than flat
    say @b>>.List;          # ((X) (Y) (a b c))          

    say "HF";
    say @b>>.flat.Slip;          # ((X) (Y) (a b c))
    say @b>>.flat.List;          # ((X) (Y) (a b c))
    say @b>>.flat.flat;          # (X Y a b c)           # Of course, hyper flat flat, why didn't I think of that?  WORKS (?)

    say @b.flat.flat;          # (X Y [a b c])           # Same as a single flat

    say "---";

    say @b>>.List.flat;     # (X Y a b c)                # Hyper list flat WORKS
    say @b>>.List.List;     # ((X) (Y) (a b c))          # Just checking.

    say @b>>.flat(:hammer); # ((X) (Y) (a b c))          # hammering flat isn't very flat (?) 

    say "WORKS:";
    say @b.flat(:hammer);    # (X Y a b c)               # duh: don't hyper it WORKS
    say @b[**];              # (X Y a b c)               # keep forgetting about this trick, also WORKS

    say "---";

    my @c = ( "c", @b );
    say "AT_C: \n", @c;           # at c:
                                  # [c [X Y [a b c]]]

    say @c>>.flat.flat;           # (c X Y [a b c])
    say @c>>.List.flat;           # (c X Y a b c)
    say @c>>.List.flat.List;      # (c X Y a b c)
    say @c>>.List.flat.List.flat; # (c X Y a b c)
    say @c>>.List.flat.List.flat; # (c X Y a b c)

}
say "===";
{
    # https://docs.raku.org/language/list#Slips    

    say (1, (2, 3), 4);          # (1 (2 3) 4)
    say (1, Slip.new(2, 3), 4);  # (1, 2, 3, 4); 
    say (1, slip(2, 3), 4);      # (1, 2, 3, 4);     
}

{
  # Another way to make a Slip is with the | prefix
  # operator. Note that this has a tighter precedence than the
  # comma, so it only affects a single value, but unlike the
  # above options, it will break Scalars.

    ## Notes:

    ## (1) on the web that totally looks like "break Scalar S", 
    ## which leaves one going "S"?  Where's "S" defined?  TODO

    ## (2) what does that mean?  Does the | operator not work with scalar arguments?

    say (1, |(2, 3), 4);       # (1, 2, 3, 4); 
    say (1, |$(2, 3), 4);      # (1, 2, 3, 4);   ## here we're apply slip to an "itemized list" (a *different* raku oddity to help confuse)
    say (1, slip($(2, 3)), 4); # (1, 2, 3, 4); 
}
say "===";
{
    my @a = <a>;
    dd @a;

    my @a_of_a = ['a', ['b']];
    dd @a_of_a;  # ["a", ["b"]]

    say | @a_of_a;  # a[b]
    dd | @a_of_a;   # @a_of_a = $["b"]  ## ?! Where did the "a" go?

    my @stuff = | @a_of_a;
    dd @stuff;  # ["a", ["b"]]
    say "---";

    say slip $('a', 'b');  # (a b)
    say | $('a', 'b');     # ab
    say  $('a', 'b').Slip; # (a b)
    say  $('a', 'b')>>.Slip;  # ((a) (b))
    say "---";

    say slip($(2, 3));  # (2 3)
    say |$(2, 3);       # 23
    say |$(2, 3).elems; # 2
    say "---";

    say slip($(2, 3)).WHAT; # (Slip)
    # say |$(2, 3).WHAT;    # Cannot look up attributes in a List type object. Did you forget a '.new'?
    # say |$(2, 3)>>.WHAT;  # The same error?

    say $(2, 3)>>.WHAT;      # (List)
    say (2, 3)>>.WHAT;       # (List)
    say slip((2, 3))>>.WHAT; # (Slip)
    say "---";

    ## anyway, what was that about "|" and Scalars?:
    my $a = 'a';
    say slip($a);  # (a)
    say | $a;      # a
}

say "===";
# From flat.t (which one?):

## The flat hammer has an optional argument that limits the
## number of levels down it will flatten.  
## (None of this is documented.)
{
    use Test;
    my $hammered := (1,2,3,4,5);
    my @a = 1,[2,[3,[4,5]]];
    is-deeply @a.flat,     @a.Seq, 'calling .flat on an array is a no-op';
    is-deeply @a.flat($_), @a.Seq, "calling .flat($_) on an array is a no-op"
                                       for 1..4;
    is-deeply @a.flat(:hammer), $hammered, 'array.flat(:hammer)';
    is-deeply @a.flat(1, :hammer), (1, 2, [3, [4, 5]]),
    'array.flat(1, :hammer)';
    is-deeply @a.flat(2, :hammer), (1, 2, 3, [4, 5]),
    'array.flat(2, :hammer)';
    is-deeply @a.flat(3, :hammer), (1,2,3,4,5),
    'array.flat(3, :hammer)';
    is-deeply @a.flat(4, :hammer), (1,2,3,4,5),
    'array.flat(4, :hammer)';
}
