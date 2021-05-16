#!/usr/bin/env perl6
# 
# data_container_class_ii.raku            12 May 2021 

# Cleaning up material from here:
#   /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021apr25/data_container_class.raku

use v6;

class MyRow {
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

class MyTable {
    has        @.data;                     
    has MyRow  @.rows  is rw;
    has        %!lookup;

    submethod TWEAK {
        @!rows = gather 
        for @!data -> ( $island, $area ) {
            my $row = MyRow.new( :$island, :$area );
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
#         take MyRow.new( island => $name, area => $area );
#     }
#     say @rows;
# }


{
#     say "---";

    my @raw = @island_names Z @island_areas;
    say @raw;

    my $table = MyTable.new( data => @raw );
    say $table;

    my $row = $table.find_island('Africa');
    say $row;   # MyRow.new(island => "Africa", area => 11506)
    say ~$row;  # Africa
    say +$row;  # 11506

}


