#!/usr/bin/env raku
# 
# sigil_divisor.raku            05 Jan 2025 

use v6;

{
    my \degrees = pi / 180;
    say degrees; # 0.017453292519943295
}


{
    my \deg_per_rad = 180;
    my \degrees = pi / deg_per_rad;
    say degrees; # 0.017453292519943295
}


{
    use Physics::Constants; 
    use Physics::Measure :ALL;

    my \λ = 2.5nm; 
    my \ν = c / λ;  

    say "Frequency of photon (ν) is " ~ν.norm;          #119.92 petahertz 
}

# 
# OUR::{'&' ~ $name} := sub { Measure.new("{$const.value} {$const.defn}") };
# 
