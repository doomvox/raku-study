#!/usr/bin/env perl6
# 
# cool_object_fields.raku            24 Apr 2022 

use v6;

class MyRow {
    has Numeric(Cool)  $.area  is rw;
}

my $r1 = MyRow.new( area => 6 );
my $r2 = MyRow.new( area => '6' );

say $r2.area; # 6




# ===
# Author:  doom@kzsu.stanford.edu

