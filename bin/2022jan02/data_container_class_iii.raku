#!/usr/bin/env perl6
# 
# data_container_class_iii.raku            January  2, 2022   
#    mutated from   data_container_class_ii of  May 12, 2021 


use v6;

class MyRow is Associative {  ## Alternate approach "is Hash"?  Just one data store.
    has Str      $.state is rw;
    has Numeric  $.area  is rw;

    method Str {
        $.state;
    }

    method Numeric {  
        $.area;
    }

    # does the Cool coercion of strings that look numeric
    submethod BUILD ( Numeric(Cool) :$!area, :$!state ) {
        die "state must be a two character code" unless $!state.chars == 2;
    }; 

    submethod TWEAK {  ## like an "after hook"
         $!state = $!state.uc;
     }

    ## without this you get message (could use hints as to which methods)
    ##   Associative indexing implementation missing from type MyRow
#     multi method ASSIGN-KEY ( ::?CLASS:D: $key, $new_value ) {
#         if ( $key eq 'state' ) {
#             $.state = $new_value;
#         } elsif ( $key eq 'area' ) {
#             ## putting a '+' here substitutes for Numeric(Cool) conversion
#             $.area = +$new_value;
#         }
#         ## maybe could simplify like $.$key = $new_value
#         ## probably should have else clause with custom error message
#     }

## This works too (above more flexible?)
    multi method ASSIGN-KEY ( ::?CLASS:D: 'state', $new_value ) { $.state = $new_value }
    multi method ASSIGN-KEY ( ::?CLASS:D: 'area' , Numeric(Cool) $new_value ) { $.area = $new_value } 

} # end class MyRow


{ # exercising MyRow class
    my $r1 = MyRow.new( state => 'ny', area => 10000 );
    my $r2 = MyRow.new( state => 'ca', area => 666.67 );
    my $r3 = MyRow.new( state => 'tn', area => '333' );

    $r3.state = 'GZ';
    $r3<area> = 111.666;

    say join( ' ', $r1,   $r2,  $r3 );     # NY CA TN
    say join( ' ', +$r1, +$r2, +$r3 );  # 10000 666.67 333

    my $r4 = MyRow.new(state => 'aa', area => 1);   ## as written fields aren't option, *must* specify both
#    $r4<state area> = 'zz', '2';
    ##  Type check failed in assignment to $!area; expected Numeric but got Str ("2")
    $r4<state area> = 'zz', 2;    ## brad gilbert 2020 is wrong: fixed this 

    ## https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286

    say $r4;

    my $r5 = MyRow.new(state => 'aa', area => 1);   ## some dummy values
    $r5<state area> = 'bl', '0.00001';
    say $r5;
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


