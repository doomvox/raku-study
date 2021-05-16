#!/usr/bin/env perl6
# 
# file_find.raku            16 May 2021 

use v6;

my $loc = '/home/doom/tmp/grep_me';

chdir( $loc );
my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob >;
for @monsters -> $name {
    $name.IO.spurt("The $name attacks!");
}
# {
#     my $new_loc = "$loc/the_depths";
#     mkdir( $new_loc );
#     chdir( $new_loc );
#     my @numbers  = < wuhn tew thuree foah fahv sex sevhun hate >;
#     for @monsters -> $name {
#         my $num = @numbers.pop;
#         $name.IO.spurt("The $name attacks from the depths!\n$num\n");
#     }
#     chdir( $loc );
# }

my @check = dir( $loc ).sort;
say @check[0..2];
  # ("/home/doom/tmp/grep_me/blob".IO "/home/doom/tmp/grep_me/dracula".IO "/home/doom/tmp/grep_me/godzilla".IO)
