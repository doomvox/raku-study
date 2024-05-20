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

## William Michels:

#  raku -e '.uniparse.say for  
#             "\xd835\xdcaf\xd835\xdcae\xd835\xdca9".encode("utf16").decode;'

#	Unrecognized character name [𝒯𝒮𝒩]
#	  in block <unit> at -e line 1

#  raku -e '.uniname.say for  "\xd835\xdcaf\xd835\xdcae\xd835\xdca9".encode("utf16").decode;'
#	MATHEMATICAL SCRIPT CAPITAL T

# raku -e '.uniname.say for  "\xd835\xdcaf\xd835\xdcae\xd835\xdca9".encode("utf16").decode;'
#	MATHEMATICAL SCRIPT CAPITAL T


}


# {
#     15:38:11 From Tim Schafer To Everyone:
# 	s = "abc|⚫️\n⚪️|👨‍👩‍👧‍👧"
# 15:41:47 From Bruce Gray To Everyone:
# 	raku -e 'my $s = "abc|⚫️\n⚪️|👨‍👩‍👧‍👧"; .say for $s.comb;'
# 	a
# 	b
# 	c
# 	|
# 	⚫️
	
	
# 	⚪️
# 	|
# 	👨‍👩‍👧‍👧
# 15:42:55 From William Michels To Everyone:
# 	~ % raku -e 'my $s = "abc|⚫<fe0f>\n⚪<fe0f>|👨<200d>👩<200d>👧<200d>👧"; say $s;'
# 	abc|⚫️
# 	⚪️|👨‍👩‍👧‍👧
# 15:45:10 From Rob Ransbottom To Everyone:
# 	"👨‍👩‍👧‍👧".encode
# 15:45:37 From Tim Schafer To Everyone:
# 	var s = "\ud835\udcaf\ud835\udcae\ud835\udca9";
# 15:45:55 From William Michels To Everyone:
# 	~ % raku -e 'my $s = "abc|⚫<fe0f>\n⚪<fe0f>|👨<200d>👩<200d>👧<200d>👧"; .say for $s.comb.map: *.encode;'
# 	utf8:0x<61>
# 	utf8:0x<62>
# 	utf8:0x<63>
# 	utf8:0x<7C>
# 	utf8:0x<E2 9A AB EF B8 8F>
# 	utf8:0x<0A>
# 	utf8:0x<E2 9A AA EF B8 8F>
# 	utf8:0x<7C>
# 	utf8:0x<F0 9F 91 A8 E2 80 8D F0 9F 91 A9 E2 80 8D F0 9F 91 A7 E2 80 8D F0 9F 91 A7>
# 15:56:46 From Tim Schafer To Everyone:
# 	https://rafal.io/static/papers/why_programming_is_minsky.pdf
# 16:13:40 From Tim Schafer To Everyone:
# 	https://stackoverflow.com/questions/1966476/how-can-i-process-each-letter-of-text-using-javascript
# 16:14:10 From Tim Schafer To Everyone:
# 	dca9
# 16:15:26 From William Michels To Everyone:
# 	~ % raku -e '.encode.decode.say for  <\x[d835] \x[dcaf] \x[d835] \x[dcae] \x[d835] \x[dca9]>;'
# 	\x[d835]
# 	\x[dcaf]
# 	\x[d835]
# 	\x[dcae]
# 	\x[d835]
# 	\x[dca9]

# }
