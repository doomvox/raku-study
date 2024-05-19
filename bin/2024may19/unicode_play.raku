#!/usr/bin/env raku
# 
# unicode_play.raku            19 May 2024 

use v6;

# 1F479;JAPANESE OGRE;So;0;ON;;;;;N;;;;;
# 1F47A;JAPANESE GOBLIN;So;0;ON;;;;;N;;;;;

{

    my $str = "👹👺";

    for $str.comb -> $c {
        say "c: $c";
    }

    my $byte_length = $str.encode('utf8').bytes;
    say $byte_length; 8

                      # for $str.encode('utf8').bytes -> $b {
                      #     say "c: $b";
                      # }

}

{
    my $s = "\x[d835]\x[dcaf]\x[d835]\x[dcae]\x[d835]\x[dca9]";
    say $s;
    ## Error encoding UTF-8 string: could not encode Unicode Surrogate codepoint 55349 (0xD835)
    ##   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024may19/unicode_play.raku line 29


}
