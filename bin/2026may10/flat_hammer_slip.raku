#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/flat_hammer_slip.raku


use v6.e.PREVIEW;

# From back in 2018 (?!):
#  /home/doom/End/Cave/RakuStudy/Notes/notes-basic_perl6_again

# The vertical bars ...  are the "slip" 
# operator, which kind-of sort-of do flattening.  (There's 
# a subtle difference between slip and flat that I forget).


{
    # my early attempts at playing with slip and flat showed no difference:
    my @a = <aaa bbb>;
    my @b = <111 222>;

        .say for (@a, @b);          ## Emacs raku-mode bug, a leading .say messes with indentation.
                # [aaa bbb]
                # [111 222]
        
                    .say for (|@a, |@b);
                        # aaa
                        # bbb
                        # 111
                        # 222

                        .say for (flat @a, @b);
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
  say [[1, 2, 3], [(4, 5), 6, 7]]».List.flat;  # (1 2 3 4 5 6 7)
}


{
    my @a = <a b c>;
    my @b = 'X', 'Y', @a;
    say @b; # [X Y [a b c]]

    say @b.flat;            # (X Y [a b c])
    say @b>>.flat;          # [(X) (Y) [(a) (b) (c)]]    # hyperflat is less flat
    say @b>>.List;          # ((X) (Y) (a b c))          # also the same with use v6.e.PREVIEW;

    say @b>>.List.flat;     # (X Y a b c)

    say @b>>.flat(:hammer); # ((X) (Y) (a b c))          # hammering flat isn't very flat
}


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
  ## Note: (1) on the web that totally looks like "break Scalar S", 
  ## which leaves one going "S"?  Where's "S" defined?

  ##       (2) what does that mean?  Does the | operator not work with scalar arguments?

    say (1, |(2, 3), 4);       # (1, 2, 3, 4); 
    say (1, |$(2, 3), 4);      # (1, 2, 3, 4);   ## here we're apply slip to an "itemized list": may not be clear for many readers, 
    say (1, slip($(2, 3)), 4); # (1, 2, 3, 4); 
}

{
    my @a = <a>;
    dd @a;
    my @a_of_a = ('a', ('b'));
    dd @a_of_a;  ## ["a", "b"] 
    
    @a_of_a = ('a', ['b']);
    dd @a_of_a;  ## ["a", ["b"]]}

    @a_of_a = [a, ['b']];
    dd @a_of_a;


}
