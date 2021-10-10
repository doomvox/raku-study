#!/usr/bin/env perl6
# 
# md_subsets_limit_values_bad_value_methods_vs_subs.raku            06 Oct 2021 

## Seriously saw some buggy behavior with this one, but it's gone away now.
## Current behavior seems more like I'd expect, so who knows.

use v6;

subset Monster    of Str where { $_ eq any(<godzilla gammera ghidora>) };
subset Hero       of Str where { $_ eq any(<godzilla beowulf ultraman>) };
# {
#     multi sub speak (Monster $name) {
#         say "sub-Monster: $name";
#     }
#     multi sub speak (Hero $name) {
#         say "sub-Hero: $name";
#     }
#     speak('ghidora');    ## OUTPUT:  sub-Monster: ghidora
#     speak('doris_day');  ## no output, no error message
#     speak('ultraman');   ## no output (?)
# }
say "---";  ## no output (?)
{
    class Speaker {
        multi method speak (Monster $name) {
            say "Classy Monster: $name";
        }
        multi method speak (Hero $name) {
            say "Classy Hero: $name";
        }
    }
    my $spk = Speaker.new;
    $spk.speak('godzilla');   ## no output (?)
    $spk.speak('doris_day');
    ## Cannot resolve caller speak(doris_day); none of these signatures match:
}




# ===
# Author:  doom@kzsu.stanford.edu

