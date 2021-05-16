#!/usr/bin/env perl6
# 
# data_container_class_ii.raku            12 May 2021 

# Cleaning up material from here:
#   /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021apr25/data_container_class.raku

use v6;

class MyRow {
    has Str      $.state is rw;
    has Numeric  $.area  is rw;

    method Str {
        $!state;
        }

    method Numeric { 
        +$!area;
        }

    # does the Cool coercion of strings that look numeric
    submethod BUILD ( Numeric(Cool) :$!area, :$!state ) {
        die "state must be a two character code" unless $!state.chars == 2;
    }; 

    submethod TWEAK {  ## like an "after hook"
         $!state = $!state.uc;
     }
} # end class MyRow


{
    my $r1 = MyRow.new( state => 'ny', area => 10000 );
    my $r2 = MyRow.new( state => 'ca', area => 666.67 );
    my $r3 = MyRow.new( state => 'tn', area => '333' );
    
    say join( ' ', $r1, $r2, $r3 );     # NY CA TN
    say join( ' ', +$r1, +$r2, +$r3 );  # 10000 666.67 333
    }

class MyTable {
    has        @.data;  ## restrict to an array of arrays somehow?  drop "rw"?  and "."?
    has MyRow  @.rows  is rw;

    submethod TWEAK {
        for @!data -> ( $state, $area ) {
            @!rows.push( MyRow.new( :$state, :$area ) );
        }
    }
}

{
    say "---";
    my @raw = (
        ( 'it', 1 ),
        ( 'aa', 2 ),    
        ( 'zz', 3 ),    
    );

    my @rows = MyTable.new( data => @raw );
    say @rows;

}


