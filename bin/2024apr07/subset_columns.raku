#!/usr/bin/env raku
# 
# subset_columns.raku            07 Apr 2024 

use v6;

my @required = <chrom   pos ref alt>;
my @additional = <a1 a4>;
my @fields = | @required, | @additional;

# say @fields;

my $file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024apr07/dat/data.csv";

my ($header,@l) = $file.IO.lines;
# dd @l;
.say for @l;

my @indicies;
for $header.split.keys -> $i {
    say $i;
    my $colname = $header.[$i];
    say $colname;

    my $s = Set.new( @fields );
    dd $s; # Set $s = Set.new("alt","ref","a4","a1","pos","chrom")

     if ($colname (elem) $s ) {
         say $i;

     }



}







