#!/usr/bin/env raku
# 
# bruce_gray.raku            21 Jan 2024 

use v6;

## General purpose hash to keep track of stuff, duplication expected, but need to verify that
## if we assign a value for a key again, we want it to accept it if it's a dupe, but object otherwise.

{
    my %h;
    %h<a> = 42;
    # ...
    my ($k, $v) = "a", 43;
    die if %h{$k}:exists and %h{$k} != $v;   ## better if this was automated
    %h{$k} = $v;

    # Died
    #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024jan21/bruce_gray.raku line 11
}


## We speculate there might be some way to use immutability to approximated this
# freeze (deprecated)  extracts value from pair and decontainerizes



{

    my %h;
    %h<a> = 42;
    # ...
    my ($k, $v) = "a", 43;
    die if %h{$k}:exists and %h{$k} != $v;   ## better if this was automated
    %h{$k} = $v;


}    
