#!/usr/bin/env perl6
# 
# compass_rose_problem.pl6            06 Feb 2021 

## Working towards another solution to this:
#   /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021jan31/stackover_flow_question_compass_rose.pl6

use v6;

{
    # bruce gray version:
    #   my %order = <N S E W> Z=> 0..*; 
    my %order = ( N => 0,
                  S => 1,   
                  W => 2,   
                  E => 3 ); 

    my @elements = ( 'N', 'NE', 'E', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW');
    
    for @elements -> $a, $b {
        my @result = ($a, $b).sort({ %order{ $^a.substr(0, 1) } <=> %order{ $^b.substr(0, 1) } });
        say @result;
    }
}

## sorts a list of compass directions of indefinite size 
## though we may just want to use this on pairs of them
## This only compares the first characters... what if you need "tie breakers"?
sub sort_directions( *@elements ) {
    my %order = ( N => 0,
                  S => 1,
                  W => 2,
                  E => 3 );
    my @result = @elements.sort({ %order{ $^a.substr(0, 1) } <=> %order{ $^b.substr(0, 1) } });
    return @result;
}

{
    say "---";
    my @elements = ( 'N', 'NE', 'E', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW');
    for @elements -> $a, $b {
        say sort_directions( $a, $b );
    }
}


# version that looks up to four chars deep (UNTESTED)
# Q: how would you do indefinite length strings?
sub sort_directions_deeper( *@elements ) {
    my %order = ( N => 0,
                  S => 1,
                  W => 2,
                  E => 3 );
    # Q: does substr error out if you look beyond length of string?
    #    how to handle that?  a ternary? 
    my @result = @elements.sort({ %order{ $^a.substr(0, 1) } <=> %order{ $^b.substr(0, 1) } ||
                                  %order{ $^a.substr(1, 1) } <=> %order{ $^b.substr(1, 1) } ||
                                  %order{ $^a.substr(2, 1) } <=> %order{ $^b.substr(2, 1) } ||
                                  %order{ $^a.substr(3, 1) } <=> %order{ $^b.substr(3, 1) } 
                                });
    return @result;
}

sub char ( Str $str, Int $i ) {
    my $c =
      $i <= $str.chars ?? $str.substr($i,1) !! '';
    return $c;
}

# version that looks up to four chars deep (UNTESTED)
# covers case of strings less than four without erroring
sub sort_directions_deeper_fixed( *@elements ) {
    my %order = ( N => 0,
                  S => 1,
                  W => 2,
                  E => 3 );
    # Q: does substr error out if you look beyond length of string?
    #    how to handle that?  a ternary? 
    my @result = @elements.sort({ %order{ char( $^a, 0 ) } <=> %order{ char( $^b, 0 ) } ||
                                  %order{ char( $^a, 1 ) } <=> %order{ char( $^b, 1 ) } ||
                                  %order{ char( $^a, 2 ) } <=> %order{ char( $^b, 2 ) } ||
                                  %order{ char( $^a, 3 ) } <=> %order{ char( $^b, 3 ) } ||
                                  %order{ char( $^a, 4 ) } <=> %order{ char( $^b, 4 ) }  
                                });
    return @result;
}

{
    say "---";
    my @elements = ( 'N', 'NE', 'E', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW');
    for @elements -> $a, $b {
        say sort_directions_deeper_fixed( $a, $b );
    }
}

# Q: how would you do indefinite length strings?
## Can you do something like <||> to join iteration over length of string?
## (Actually: the length of the shortest of $^a , $^b?)





# ====
#  sheet of cheats

# A unicode paste board:
# «
# »
# π
# 𝑒


