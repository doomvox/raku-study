#!/usr/bin/env perl6
# 
# perl6_and_or_or_operators.pl6            13 Dec 2020 


use v6;

# shifts, numeric and buffer

# +< +>

# ~< ~>


## Wanted to play with the buffer shift operators, but they look unimplemented.
## minor hassle just to figure out how to create a "Buf".

my $str = 'abcdefg';

# # $str.encode("ascii", :replacement)
# my $b;
# $b = $str.encode("ascii");
# say $b;
# # Blob[uint8]:0x<61 62 63 64 65 66 67>

my $b = Buf.new( 65, 65, 65 );
say $b.WHAT; #  (Buf)

# say $b ~< 2;   ## okay, apparently the docs say not yet implemented... LTA error messages though:

# Cannot resolve caller infix:«~<»(Buf:D, Int:D); none of these signatures match:
#     (Str:D \a, Int:D \b --> Str:D)
#     (str $a, int $b)
#   in block <unit> at /home/doom/End/Cave/Perl6/Wall/raku-study/bin/perl6_and_or_or_operators.pl6 line 24

{
    my Int $i = 16;

    my $ret = $i +< 1;
    say $ret;  # 32

    $ret = $i +< 2;
    say $ret;  # 64

    $ret = $i +> 1; 
    say $ret;  # 8

    $ret = $i +> 2;
    say $ret;  # 4
} 


{
    my $i = 16;
    my $ret1 = $i +> 1;    
    my $ret2 = $i +< 1; 
    my $ret3 = $i +< -1;  
    my $ret4 = $i +> -1; 

    say "$ret1, $ret2, $ret3, $ret4";  #  8, 32, 8, 32

    say 1 +> 1; # 0
    say 1 +> 2; # 0
}

# 0000010
# 0000100
# 0000001

