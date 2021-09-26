#!/usr/bin/env perl
#                                      2021/09/26 11:31:58

=head1 NAME

playing_with_dualvars.pl

=head1 SYNOPSIS

=head1 DESCRIPTION

Stub documentation for playing_with_dualvars.pl.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;
use Scalar::Util qw( dualvar );

## man Scalar::Util
#    dualvar
#            my $var = dualvar( $num, $string );

#        Returns a scalar that has the value $num in a numeric context and the value $string in a string
#        context.

#            $foo = dualvar 10, "Hello";
#            $num = $foo + 2;                    # 12
#            $str = $foo . " world";             # Hello world


my $n = dualvar( 5, "five" );

say "The number is $n";

say "Twice the number is : ", $n * 2;



__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
