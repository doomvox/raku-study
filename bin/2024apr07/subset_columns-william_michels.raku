#!/usr/bin/env raku
# 
# subset_columns-william_michels.raku            07 Apr 2024 

use v6;



 raku -e 'my ($header,@a) = lines.map: *.split(/ \s+ /); 
            $header .= list;  my @ind = <a1 a4>; 
            my @col = (0...3, $header.grep( / @ind /, :k ).Slip); 
            put $header[@col].join("\t"); 
            say $_.join("\t") for @a.map: *.[@col];'  data.csv

