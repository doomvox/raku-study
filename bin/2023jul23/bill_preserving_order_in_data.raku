#!/usr/bin/env raku
# 
# bill_preserving_order_in_data.raku            23 Jul 2023 

use v6;


raku -e 'my (%g, %h, @h);  for lines() { my @a = .split(/ \s+ /);  
            %g.append: @a[0] => $++;  %h.append: @a[0] => @a[1..*]
            };  @h = %h.sort(*.key)>>.kv; 
           .put for @h[ %g.sort.map( *.values>>.min).pairs.sort(*.values)>>.keys.flat ];'   file
