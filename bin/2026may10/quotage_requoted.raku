#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/quotage_requoted.raku
use v6.d;  

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

# my $str = 「hello」;
# my $str = 『hello』;
# my $str = ⎡hey⎦;

{
    my $str = 'hi';
    say $str; # hi
}

# ｢	U+FF62	Q//	as part of ｢｣ (Note: Q// variant cannot be used bare in regexes)
# ｣	U+FF63	Q//	as part of ｢｣ (Note: Q// variant cannot be used bare in regexes)

# FF62;HALFWIDTH LEFT CORNER BRACKET;Ps;0;ON;<narrow> 300C;;;;Y;HALFWIDTH OPENING CORNER BRACKET;;;;
# FF63;HALFWIDTH RIGHT CORNER BRACKET;Pe;0;ON;<narrow> 300D;;;;Y;HALFWIDTH CLOSING CORNER BRACKET;;;;

{
    my $str = ｢lo｣; 
    say $str; # lo


    $str = ｢hell, 'low', you know?｣; 
    say $str; # hell, 'low', you know?

}
