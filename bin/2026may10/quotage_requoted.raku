#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/quotage_requoted.raku
use v6.d;  

# Exploring a raku oddity with the square corner quotes, which are
# the unicode codepoints FF62 and FF63.  

## From the documentation:

# ｢	U+FF62	Q//	as part of ｢｣ (Note: Q// variant cannot be used bare in regexes)
# ｣	U+FF63	Q//	as part of ｢｣ (Note: Q// variant cannot be used bare in regexes)

# FF62;HALFWIDTH LEFT CORNER BRACKET;Ps;0;ON;<narrow> 300C;;;;Y;HALFWIDTH OPENING CORNER BRACKET;;;;
# FF63;HALFWIDTH RIGHT CORNER BRACKET;Pe;0;ON;<narrow> 300D;;;;Y;HALFWIDTH CLOSING CORNER BRACKET;;;;

# brian d foy talks about this, Chapter 4.

{
# 2018;LEFT SINGLE QUOTATION MARK;Pi;0;ON;;;;;N;SINGLE TURNED COMMA QUOTATION MARK;;;;
# 2019;RIGHT SINGLE QUOTATION MARK;Pf;0;ON;;;;;N;SINGLE COMMA QUOTATION MARK;;;;


    my $str = ‘hey’;
    say $str; # hey

    my $str = ‘hey ‘ho’ huh? ’;


    }

exit;


{
    my $str = ｢lo｣; 
    say $str; # lo

    $str = ｢hell, 'low', you know?｣; 
    say $str; # hell, 'low', you know?


    # $str = ｢ why can't you stick in one more: ｢ ｣; 
    # Unable to parse expression in corner quotes; couldn't find final '｣' (corresponding starter was at line 44)

    $str = ｢ well then, you probably can't nest: ｢ these things  ｣, can you? (oops) ｣; 
    say $str;
    #  well then, you probably can't nest: ｢ these things  ｣, can you? (oops) 

    ### okay, you *can* nest them, but they become just ordinary characters in the string
    ### but if you *don't* balance them, then it can't parse, which seems weird.

}

{
#    my $str = ｢ if we embed just an open quote, like so: ｢, then we're in a SORRY state.｣; 
    # ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/quotage_requoted.raku
    # Unable to parse expression in corner quotes; couldn't find final '｣' (corresponding starter was at line 56)


}




## There's a lot of matched "corner" characters in unicode. 
## But only that one set (FF62 & FF63) works as Raku paired delimeters.

# There are a lot of fakeout possibilites: 

# 300C;LEFT CORNER BRACKET;Ps;0;ON;;;;;Y;OPENING CORNER BRACKET;;;;
# 300D;RIGHT CORNER BRACKET;Pe;0;ON;;;;;Y;CLOSING CORNER BRACKET;;;;
# 300E;LEFT WHITE CORNER BRACKET;Ps;0;ON;;;;;Y;OPENING WHITE CORNER BRACKET;;;;
# 300F;RIGHT WHITE CORNER BRACKET;Pe;0;ON;;;;;Y;CLOSING WHITE CORNER BRACKET;;;;

# 231C;TOP LEFT CORNER;So;0;ON;;;;;N;;;;;
# 231D;TOP RIGHT CORNER;So;0;ON;;;;;N;;;;;
# 231E;BOTTOM LEFT CORNER;So;0;ON;;;;;N;;;;;
# 231F;BOTTOM RIGHT CORNER;So;0;ON;;;;;N;;;;;

# 23A1;LEFT SQUARE BRACKET UPPER CORNER;Sm;0;ON;;;;;N;;;;;
# 23A3;LEFT SQUARE BRACKET LOWER CORNER;Sm;0;ON;;;;;N;;;;;

# 23A4;RIGHT SQUARE BRACKET UPPER CORNER;Sm;0;ON;;;;;N;;;;;
# 23A6;RIGHT SQUARE BRACKET LOWER CORNER;Sm;0;ON;;;;;N;;;;;

## These don't work:
# my $str = 「hello」;
# my $str = 『hello』;
# my $str = ⎡hey⎦;

## Resorting to the documentation:

# ｢	U+FF62	Q//	as part of ｢｣ (Note: Q// variant cannot be used bare in regexes)
# ｣	U+FF63	Q//	as part of ｢｣ (Note: Q// variant cannot be used bare in regexes)

# FF62;HALFWIDTH LEFT CORNER BRACKET;Ps;0;ON;<narrow> 300C;;;;Y;HALFWIDTH OPENING CORNER BRACKET;;;;
# FF63;HALFWIDTH RIGHT CORNER BRACKET;Pe;0;ON;<narrow> 300D;;;;Y;HALFWIDTH CLOSING CORNER BRACKET;;;;
