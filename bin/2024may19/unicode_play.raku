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
#    my $s = "\x[d835]\x[dcaf]\x[d835]\x[dcae]\x[d835]\x[dca9]";
#    say $s;
    ## Error encoding UTF-8 string: could not encode Unicode Surrogate codepoint 55349 (0xD835)
    ##   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024may19/unicode_play.raku line 29

   
    my $s = "\x[d835]\x[dcaf]\x[d835]\x[dcae]\x[d835]\x[dca9]".encode('utf16');
    say $s;  # utf16:0x<D835 DCAF D835 DCAE D835 DCA9>  ((?))


}



{

## Bruce Gray: 

# 	raku -e 'my $s = "abc|⚫️\n⚪️|👨‍👩‍👧‍👧"; say uniname($_) for $s.comb;'
# 	    LATIN SMALL LETTER A
# 	    LATIN SMALL LETTER B
# 	    LATIN SMALL LETTER C
# 	    VERTICAL LINE
# 	    MEDIUM BLACK CIRCLE
# 	    <control-000A>
# 	    MEDIUM WHITE CIRCLE
# 	    VERTICAL LINE
# 	    MAN
# 	# Great! Problem solved, right?

# 	raku -e 'my $s = "abc|\c[MEDIUM BLACK CIRCLE]\n\c[MEDIUM WHITE CIRCLE]\c[VERTICAL LINE]\c[MAN]"; say $s.raku;'
# 	    "abc|⚫\n⚪|👨"

#           # Ooh! So close.
#           # See http://blog.unicode.org/2023/01/whats-new-in-emoji-151.html

}

{

    16:33:05 From William Michels To Everyone:
	~ % raku -e '.uniparse.say for  "\xd835\xdcaf\xd835\xdcae\xd835\xdca9".encode("utf16").decode;'
	Unrecognized character name [𝒯𝒮𝒩]
	  in block <unit> at -e line 1
16:33:25 From William Michels To Everyone:
	~ % raku -e '.uniname.say for  "\xd835\xdcaf\xd835\xdcae\xd835\xdca9".encode("utf16").decode;'
	MATHEMATICAL SCRIPT CAPITAL T

}
