#!/usr/bin/raku



my %h = a => 1;
say %h;         # OUTPUT: «{a => 1}␤»
say %h.elems;   # OUTPUT: «1␤»

%h<a>:delete;
say %h;         # OUTPUT: «{}␤»
say %h.elems;   # OUTPUT: «0␤»

