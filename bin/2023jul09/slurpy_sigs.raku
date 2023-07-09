#!/usr/bin/env raku
# 
# slurpy_sigs.raku            09 Jul 2023 

use v6;

{

    sub grab(+@a) {
        "grab $_".say for @a
    }

    grab(<<a b c>>);

    # grab a
    # grab b
    # grab c

    say "===";

    grab("hi");
    # grab hi

    say "===";

    grab();

    say "===";
    grab('');

    grab(Nil);
    # Use of uninitialized value element of type Any in string context.
    #   in block  at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023jul09/slurpy_sigs.raku line 9

}

{
    say "^^^vvv^^^";
    multi sub grab(**@a) { "grab $_".say for @a }
    multi sub grab(\a) {
        a ~~ Iterable and a.VAR !~~ Scalar ?? nextwith(|a) !! nextwith(a,)
    }

    grab(<<a b c>>);
# grab a
# grab b
# grab c

    say "---";
    grab("a");
}


{
    say ">>>ooo<<<";
    multi sub grab(**@a) { "grab $_".say for @a }
    multi sub grab(\a) {
        a ~~ Iterable and a.VAR !~~ Scalar ?? nextwith(|a) !! nextwith(a,)
    }

    grab(<<a b c>>);
    # grab a
    # grab b
    # grab c

    say "---";
    grab("d");

    my @nothing  = < nada nope bupkes >;
    grab(@nothing);
    # grab nada
    # grab nope
    # grab bupkes

    say "---";
    my $void = < nada nope bupkes >;
    grab($void);
    # grab nada nope bupkes


}
