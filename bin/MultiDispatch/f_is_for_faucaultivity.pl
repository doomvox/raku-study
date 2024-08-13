#!/usr/bin/env perl
#                                      2024/08/13 16:07:51

=head1 NAME

f_is_for_faucaultivity.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for f_is_for_faucaultivity.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.31.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

use List::Util      qw( first max maxstr min minstr reduce shuffle sum any );
use List::MoreUtils qw( zip uniq );

use feature "signatures";
no warnings 'experimental::signatures';  ## needed up to perl 5.36

## Based on Conways Essentials slide:

use Multi::Dispatch;

# exm: examine the arguments
multi exm ( $i,     $j = 0, $k = 0 ) { guts( "1: ", $i, $j, $k ) };
multi exm ( $i,     $j = 0,        ) { guts( "2: ", $i, $j, $k ) };
multi exm ( $i,                    ) { guts( "3: ", $i, $j, $k ) };

# the guts of "exm"
sub guts ( $label, $i, $j, $k ) {
  say "$label  i: $i  j: $j   k: $k";

  say "largest  is: ", max( $i, $j, $k );
  say "smallest is: ", min( $i, $j, $k );
  say '';
}


exm( 7 );         # calls "2"
exm( 7, 3 );      # calls "1"
exm( 2, 7, 3 );   # calls "1"
exm();            # calls "3"

# 2:   i: 7  j: 0   k: 0
# largest  is: 7
# smallest is: 0

# 1:   i: 7  j: 3   k: 0
# largest  is: 7
# smallest is: 0

# 1:   i: 2  j: 7   k: 3
# largest  is: 7
# smallest is: 2

# 3:   i: 0  j: 0   k: 0
# largest  is: 0
# smallest is: 0


__END__

=head1 NOTES

Note: written for a machine with a slightly old perl: 5.31 (current latest: 5.40).




=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2024 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
