#!/usr/bin/env perl
#                                      2024/08/13 16:07:51

=head1 NAME

e_is_for_essentials.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for e_is_for_essentials.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

## Based on Conways Essentials slide:

use Multi::Dispatch;

multi cmp ( $i,     $j,     $k = 0 ) { guts( "1: ", $i, $j, $k ) };
multi cmp ( $i,     $j = 0, $k = 0 ) { guts( "2: ", $i, $j, $k ) };
multi cmp ( $i = 0, $j = 0, $k = 0 ) { guts( "3: ", $i, $j, $k ) };

sub guts ($label, $i, $j, $k) {
  say "$label  i: $i  j: $j   k: $k";

  say "largest  is: ", max( $i, $j, $k );
  say "smallest is: ", min( $i, $j, $k );

}



__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2024 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
