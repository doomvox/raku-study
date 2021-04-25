#!/usr/bin/env perl6
# 
# data_container_class.raku            15 Apr 2021 

use v6;

## Q: what's a good type for a general purpose numeric field.  Is Numeric best?
## Q: how do you get it to accept a number in string form?

class MyRow {
    has Str     $.state is rw;
    has Numeric $.area  is rw;
#    has Num $.area  is rw;
#    has NumStr $.area  is rw;

    method Str {
        $!state;
        }

    method Numeric {
        $!area;
        }

     ## using a BUILD routine to force state to be uppercase
     method BUILD( :$state, :$area ) {
         $!state = $state.uc;
     }

    }

my $r1 = MyRow.new( state => 'ny', area => 10000 );
my $r2 = MyRow.new( state => 'ca', area => 666.67 );

say $r1, ' ', $r2;

{
    my $r3 = MyRow.new( state => 'tn', area => '333' );

    # when area is Num 
    # Type check failed in assignment to $!area; expected Num but got Int (10000)

    # when area is NumStr
    # Type check failed in assignment to $!area; expected NumStr but got Int (10000)

    # when area is Numeric:
    #   Type check failed in assignment to $!area; expected Numeric but got Str ("333")
    # (Oh great)

    ## But note:
    # say '333'.Numeric.WHAT;  # (Int)
    ## Puzzling, according to: https://docs.raku.org/type.html
    ##   Numeric 	class 	Number or object that can act as a number

    CATCH { default { say "CAUGHT: ", .Str; .resume } } ## Yow: I found a *resumbable* error!
    # CAUGHT: Type check failed in assignment to $!area; expected Numeric but got Str ("333")
}

{
    my $r3 = MyRow.new( state => 'tn', area => '333'.Numeric );
    say $r1, ' ', $r2, ' ', $r3;
    # MyRow.new(state => "ny", area => 10000) MyRow.new(state => "ca", area => 666.67) MyRow.new(state => "tn", area => 333)

    # And so we have learned, assigning to a Numeric field will not cast to .Numeric, 
    # not even when that's eminently doable.

    # Q: Could we write our own accessor that assigns to Numeric, 
    #    and casts to that type?  

    # Q: Will casting to .Numeric fail if the string doesn't "look like a number"?
    # This is pretty good behavior:
    #   say 'abc'.Numeric;
    # Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏abc' (indicated by ⏏)

    # Q: what if you wanted hex2dec behavior?
    }



class MyTable {
    has      @.data  is rw;  ## restrict to an array of arrays somehow?  drop "rw"?  and "."?
    has MyRow  @.rows  is rw;

    submethod TWEAK {
        my @new;
        for @!data -> ( $state, $area ) {
            my $obj = 
              MyRow.new( :$state, :$area );
            @new.push( $obj );
        }
        @!rows = @new; ## binding operator?
    }

}

my @raw = (
    ( 'alpha', 1 ),
    ( 'beta',  2 ),    
    ( 'gamma', 3 ),    
);

my @rows = MyTable.new( data => @raw );

say @rows;


## I might want something more like this:
##   MyTable.new( @rows );
## But my guess is I might want additional fields 

