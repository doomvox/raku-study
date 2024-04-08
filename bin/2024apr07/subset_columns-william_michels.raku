#!/usr/bin/env raku
# 
# subset_columns-william_michels.raku            07 Apr 2024 

use v6;

# https://unix.stackexchange.com/questions/772890/subset-columns-from-the-1st-file-using-column-names-in-2nd-file/772972#772972

#  raku -e 'my ($header,@a) = lines.map: *.split(/ \s+ /); 
#             $header .= list;  my @ind = <a1 a4>; 
#             my @col = (0...3, $header.grep( / @ind /, :k ).Slip); 
#             put $header[@col].join("\t"); 
#             say $_.join("\t") for @a.map: *.[@col];'  data.csv


# data.csv
my $file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024apr07/dat/data.csv";

my ($header,@a) = $file.IO.lines.map: *.split(/ \s+ /); 
$header .= list;
my @ind = <a1 a4>; 
my @col = (0...3, $header.grep( / @ind /, :k ).Slip); 
put $header[@col].join("\t"); 
say $_.join("\t") for @a.map: *.[@col];
 

# chrom	pos	ref	alt	a1	a4
# 10	12345	C	T	aa	dd
# 10	12345	C	T	aa	dd
# 10	12345	C	T	aa	dd
# 10	12345	C	T	aa	dd
# 10	12345	C	T	aa	dd
# 10	12345	C	T	aa	dd
