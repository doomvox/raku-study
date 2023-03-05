#!/usr/bin/env raku
# 
# map_compared_to_deepmap.raku            05 Mar 2023 

use v6;


my @data = (
   { val => 1, name => 'alpha', },
   { val => 2, name => 'beta',  },
   { val => 3, name => 'gamma', },
   { val => 4, name => 'delta', },
);

# If you want to add 10 to the numeric value and preserve the string name, 

{
    my @new_data = @data.map({$_ ~~ Numeric ?? $_+10 !! $_ });
    say @new_data;
    # [{name => alpha, val => 1} {name => beta, val => 2} {name => gamma, val => 3} {name => delta, val => 4}]
}

{
    my @new_data = @data.map({$_<val> ~~ Numeric ?? $_<val>+10 !! $_ });
    say @new_data;  # [11 12 13 14]

}

my @d = ( 'alpha', 1, 'beta', 2, 'gamma', 3 );

{
    my @new_data = @d.map({$_ ~~ Numeric ?? $_+10 !! $_ });
    say @new_data;  # [alpha 11 beta 12 gamma 13]
}

{
    my @new_data = @d.map({$_+10 if $_ ~~ Numeric; });
    say @new_data;  # [11 12 13]
}
