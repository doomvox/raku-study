#!/usr/bin/env raku
# 
# bill_preserving_order_in_data.raku            23 Jul 2023 

use v6;


# raku -e 'my (%g, %h, @h);  for lines() { my @a = .split(/ \s+ /);  
#             %g.append: @a[0] => $++;  %h.append: @a[0] => @a[1..*]
#             };  @h = %h.sort(*.key)>>.kv; 
#            .put for @h[ %g.sort.map( *.values>>.min).pairs.sort(*.values)>>.keys.flat ];'   file


{
    my (%g, %h, @h);
    for lines() {
        my @a = .split(/ \s+ /);  
        %g.append: @a[0] => $++;          ## line order
        %h.append: @a[0] => @a[1..*]      ## all other values keyed by first column field
    };
    @h = %h.sort( *.key )>>.kv; 
    .put for @h[ %g.sort.map( *.values>>.min).pairs.sort(*.values)>>.keys.flat ];
}

## bruce gray

{
    my (@g, %h);
    for lines() {
        my @w = .words;
        @g.push: @w[0];
        %h.append: @w[0] => @w;
    }
    .put for %h{ @g.unique };
}


## bruce gray final version:
{
    my @g;
    my %h = lines().map( { my @w = .words;
                           push @g, @w[0];
                           @w
                         }
                       ).classify( {.head}, :as{.skip} );
    put .key, " ", .value for %h{ @g.unique }:p;
}


## On second thought, I prefer abandoning .classify to avoid the side-effect:
{
    my (@g, %h);
    for lines() { my @w = .words;
                  @g.push: @w[0];
                  %h.append: @w[0] => @w.skip};
    put .key, " ", .value for %h{ @g.unique }:p;
}
