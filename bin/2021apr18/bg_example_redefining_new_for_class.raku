#!/usr/bin/env perl6
# 
# bg_example_redefining_new_for_class.raku            18 Apr 2021 

use v6;

## raku -e 'class Dog { has $color; has $feet; has $tail; }; my Dog $spot .= new( "black", 4, 1 );'
## Default constructor for 'Dog' only takes named arguments
## raku -e 'class Dog { has $color; has $feet; has $tail; }; my Dog $spot .= new( :color("black"), :feet(4), tail => 1 );'
## raku -e 'class Dog { has $color; has $feet; has $tail; multi method new (::?CLASS:U: $a, $b, $c) { self.new: :color($a), :feet($b), $tail($c)} }; my Dog $spot .= new( :color("black"), :feet(4), tail => 1 );' 

{
    class Dog {
        has ($color, $feet, $tail);
    }
    my Dog $spot .= new( :color("black"), :feet(4), tail => 1 );
    # Works

    my Dog $spot .= new( "black", 4, 1 );
    # Error: Default constructor for 'Dog' only takes named arguments
}

say "----";
{
    class Dog {
        has ($color, $feet, $tail);
        multi method new (::?CLASS:U: $a, $b, $c) {   ## ::?CLASS:U: is "insurance"
            self.new: :color($a), :feet($b), $tail($c);
        }
    }
    my Dog $spot .= new( "black", 4, 1 ); 
}

## ::?CLASS:U: is "insurance":
## only defining this to work if invocant is undefined
## a class method, only 


## should work:
my $doggie = Dog.new( "red", 3, 2 );

## won't work:
my $new_dog = $doggie.new( 'speckled', 3, 1 );
