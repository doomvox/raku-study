#!/bin/raku

# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025Nov02/match_a_bunch_of_asterix.raku
# Wednesday November  5, 2025   9:52 PM

{
    my $str1 = "*** alpha";
    say $str1;

    $str1 ~~ / ^ (\* *?) \w /;

    say $/;  # Nil
}

{
    my $str1 = "*** alpha";
    

    $str1 ~~ / \* /

    say $/;  # Nil
}

