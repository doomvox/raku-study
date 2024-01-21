#!/usr/bin/env raku
# 
# random_experiment_with_binding_to_hash.raku            21 Jan 2024 

use v6;



{
    my %h;
    %h<a> := 42;
    # ...
    my ($k, $v) = "a", 43;
#     die if %h{$k}:exists and %h{$k} != $v;   ## better if this was automated
    %h{$k} := $v;

    # Died
    #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024jan21/bruce_gray.raku line 11


}
