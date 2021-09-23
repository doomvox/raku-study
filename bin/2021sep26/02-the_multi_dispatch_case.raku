#!/usr/bin/env perl6
# 
# 02-the_multi_dispatch_case.raku            20 Sep 2021 

use v6;

my @items = ( 666, 2.71, 𝑒, "01", "whun", ('a', 'b', 'c').Set );

for @items -> $item  {
    say "Checking: " ~ $item;
    say whats_my_type( $item );
}

multi sub whats_my_type (Int $item) {
        return "This is an Int";
}

multi sub whats_my_type (Rat $item) {
        return "Caught a Rat";
}

multi sub whats_my_type (Numeric $item) {
    return "This is a Numeric (but not an Int or a Rat)";
}

multi sub whats_my_type (Str $item) {
        return "This is a Str";
}

multi sub whats_my_type ('whun' ) {
        return "This whun does *not* fire"; # Why doesn't it?
}

multi sub whats_my_type ($item) {  # Behaves like the "default" for given/when.
    return "Huh?  I guess this is a: " ~ $item.^name;
}


# raku /home/doom/End/Cave/Perl6/bin/02-the_multi_dispatch_case.raku
# Checking: 666
# This is an Int
# Checking: 2.71
# Caught a Rat
# Checking: 2.718281828459045
# This is a Numeric (but not an Int or a Rat)
# Checking: 01
# This is a Str
# Checking: whun
# This is a Str
# Checking: c b a
# Huh?  I guess this is a: Set


## Identical behavior to 01-the_given_when_case.raku.


##===
## NOTES
## at play with raku error messages

## (1) the fabulous mystery error: don't do THAT, you need to do THAT
## Try:
##   /home/doom/End/Cave/Perl6/bin/A2-the_multi_dispatch_case-invalid_typename.raku

# subset Whun of Str where { $_ eq 'whun' };
# multi sub whats_my_type (Whun $item) {

# ===SORRY!=== Error while compiling /home/doom/End/Cave/Perl6/bin/02-the_multi_dispatch_case.raku
# Invalid typename 'Whun' in parameter declaration.  Did you mean 'Whun'?
# at /home/doom/End/Cave/Perl6/bin/02-the_multi_dispatch_case.raku:31

## (2) didn't remember how to select on a fixed value, tried stuff like this.
##     what is this 'constraint' and why doesn't it help?

# multi sub whats_my_type (Str $item constraint $_ eq 'whun') {
#         return "This whun *does* fire"; # right?
# }
# ===SORRY!=== Error while compiling /home/doom/End/Cave/Perl6/bin/02-the_multi_dispatch_case.raku
# Malformed parameter
# at /home/doom/End/Cave/Perl6/bin/02-the_multi_dispatch_case.raku:32
# ------> multi sub whats_my_type (Str $item⏏ constraint * eq 'whun') {
#     expecting any of:
#         constraint






# ===
# Author:  doom@kzsu.stanford.edu

