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



__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
