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

my $obj3 = MyWidget.new( size => 'five' );
dd( $obj3 );

# MyWidget $obj3 = MyWidget.new(size => Failure.new(exception => X::Str::Numeric.new(source => "five", pos => 0, reason => "base-10 number must begin with valid digits or '.'"), backtrace => Backtrace.new))


