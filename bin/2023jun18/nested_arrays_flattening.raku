#!/usr/bin/env raku
# 
# nested_arrays_flattening.raku            18 Jun 2023 

use v6;



my $stuff = [ 'alpha', 'beta', [ 'nada', 'bupkiss', 'null' ], 'gamma' ];

say $stuff;
# [alpha beta [nada bupkiss null] gamma]

say $stuff.flat;
