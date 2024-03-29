#!/usr/bin/env perl
#                                      2022/01/05 23:09:35

use 5.10.0;
use warnings;
use strict;

=head1 NAME

Z2-random_perl.pl

=head1 DESCRIPTION

Some simple examples using randomness in perl.
(1) picking an element; (2) generating a string

=cut

## randomly choosing an element from an array
my @words = qw( accomplice latent sportsmen glimpses jagged );
my $word = $words[ int( rand( $#words+1 ) ) ];
say $word;

## creating a short string of random characters
my $str = join '', map{ chr( int( rand( 26 ) ) + 65 ) } 0..2;
say $str;


