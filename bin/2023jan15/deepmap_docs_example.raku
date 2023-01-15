#!/usr/bin/env perl6
# 
# deepmap_docs_example.raku            15 Jan 2023 

use v6;




{ what => "is", this => "thing", a => <real list> }.deepmap( *.flip ).say
# OUTPUT: «{a => (laer tsil), this => gniht, what => si}␤» 
