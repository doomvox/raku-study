#!/usr/bin/env perl6
# 
# set_identity.pl6            21 Feb 2021 

use v6;

{ 
    my $numbers1  = set < wuhn tew thuree foah fahv sex sevhun >;
    my $numbers2  = set < wuhn tew thuree foah fahv sex sevhun >;
    say $numbers1 (==) $numbers1;  #  True

    say $numbers1 (==) $numbers2;  #  True
}


# { 
#     my $numbers1  = set < wuhn tew thuree foah fahv sex sevhun >;
#     my $numbers2  = set < wuhn tew thuree foah fahv sex sevhun >;
#     say $numbers1 (==) $numbers2;  #  True
# }
