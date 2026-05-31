#!/usr/bin/env raku

{
    my $x = do for 0..3 {$_};
    say $x; # (0 1 2 3)
    say $x.WHAT;  #(List)
}

{
    my $ret = do if (True) { "urn" };
    say $ret; # urn
}

{
    my $ret2 = if (True) { "urn" };
    say $ret2;

    # ===SORRY!===
    # Word 'if' interpreted as a listop; please use 'do if' to introduce the statement control word
    # at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may31/do.raku:11
}
