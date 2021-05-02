#!/usr/bin/env perl6
# 
# mixing_named_args_and_positional_ones.raku            01 May 2021 

use v6;

sub dostuff (*%nameo, *@ordo) {
   my $item1 = %nameo{'his'};
   my $action  = @ordo[0];

   printf "%s %s!\n", $action, uc( $item1 );
}

dostuff( his => 'bingo', 'shout' );  # shout BINGO!

sub slurp_array (*%opt, *@list) {
    say "count: ", @list.elems;
}

my @monsters = < godzilla grendel wormface blob >;
slurp_array( @monsters ) # count: 4

my @rabbits  = < bugs peter easter >;


## Try to make errors into warnings
#   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# ===
# Author:  doom@kzsu.stanford.edu

