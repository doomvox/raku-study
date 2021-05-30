#!/usr/bin/env perl6
# spots_data_container_class.raku                    29 May 2021 

# Working with material from here:
#   /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021apr25/data_container_class.raku
#   /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may16/data_container_class_iii.raku

## Goal: load data from spots pg database, stash each row as a Spot in the container class Spots

## Incorporate
## /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing_named_args_and_positional_ones.raku

use v6;

class Spot {
    has Str      $.island is rw;
    has Numeric  $.area   is rw;

    method Str {
        $!island;
        }

    method Numeric { 
        +$!area;
        }

    # does Cool coercion of strings that look numeric
    submethod BUILD ( Numeric(Cool) :$!area, :$!island ) {
    }; 
} 

class Spots {
    has        @.data;                     
    has Spot  @.rows  is rw;
    has        %!lookup;

    submethod TWEAK {
        @!rows = gather 
        for @!data -> ( $island, $area ) {
            my $row = Spot.new( :$island, :$area );
            %!lookup{ $island } = $row;
            take $row;
        }
    }

    method find_island( $island ) {
        return %!lookup{ $island };
    }
}


## test data set, five islands and associated areas
my @island_names = "Africa", "Antarctica", "Asia", "Australia", "Axel Heiberg";
my @island_areas = 11506, 5500, 16988, 2968, 16;


# {
#     say '----';
#     my @rows = gather 
#     for  @island_names Z @island_areas -> ($name, $area)  {
#         take Spot.new( island => $name, area => $area );
#     }
#     say @rows;
# }


{
#     say "---";

    my @raw = @island_names Z @island_areas;
    say @raw;

    my $table = Spots.new( data => @raw );
    say $table;

    my $row = $table.find_island('Africa');
    say $row;   # Spot.new(island => "Africa", area => 11506)
    say ~$row;  # Africa
    say +$row;  # 11506

}


