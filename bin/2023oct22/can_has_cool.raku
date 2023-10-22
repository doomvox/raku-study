#!/usr/bin/env raku
# 
# can_has_cool.raku            22 Oct 2023 

use v6;



class MyWidget {
     has Numeric(Cool) $.size is rw;
}

my $obj = MyWidget.new( size => 3 );

dd( $obj );


my $obj2 = MyWidget.new( size => '666' );
dd( $obj2 );



my $obj2 = MyWidget.new( size => 'five' );
dd( $obj2 );
