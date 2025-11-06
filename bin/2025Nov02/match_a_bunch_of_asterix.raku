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
    $str1 ~~ / \* /;
    say $/;  # ｢*｣
}


{
    my $str1 = "*** alpha";
    $str1 ~~ / '*' /;
    say $/;  # ｢*｣
}


{
    my $str1 = "*** alpha";
    $str1 ~~ / <[*]> /;
    say $/;  # ｢*｣
}
say "===";


## pattern to match org-mode indent 
## wasn't doing what I expected:
##  ^ <[*]>+? \s*

{
    my $str1 = "*** alpha";
    $str1 ~~ / <[*]>+ /;
    say $/;  # ｢***｣
    $str1 ~~ / <[*]>+? /;
    say $/;  # ｢*｣    # (ah, non-greedy, of course)
    $str1 ~~ / <[*]>+? \s+ /;
    say $/;  # ｢*** ｣    # note: includes the trailing space
    $str1 ~~ / <[*]>+? <before \s+> /;
    say $/;  # 
             # ｢***｣
             #  before => ｢｣
    say $/.Str; # ***
    say $/.raku;
    # Match.new(:orig("*** alpha"), :from(0), :pos(3), :hash(Map.new((:before(Match.new(:orig("*** alpha"), :from(3), :pos(3)))))))
}
say "===";

