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

use 5.31.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

use List::Util      qw( first max maxstr min minstr reduce shuffle sum any );
use List::MoreUtils qw( zip uniq );

use feature "signatures";
no warnings 'experimental::signatures';

## Based on Conways Essentials slide:

use Multi::Dispatch;

# exm: examine the arguments
multi exm ( $i,     $j,     $k = 0 ) { guts( "1: ", $i, $j, $k ) };
multi exm ( $i,     $j = 0, $k = 0 ) { guts( "2: ", $i, $j, $k ) };
multi exm ( $i = 0, $j = 0, $k = 0 ) { guts( "3: ", $i, $j, $k ) };

# the guts of "exm"
sub guts ( $label, $i, $j, $k ) {
  say "$label  i: $i  j: $j   k: $k";

  say "largest  is: ", max( $i, $j, $k );
  say "smallest is: ", min( $i, $j, $k );
}


exm( 7 );

exm( 7, 3 ); 

exm( 2, 7, 3 ); 


# 2:   i: 7  j: 0   k: 0
# largest  is: 7
# smallest is: 0
# 1:   i: 7  j: 3   k: 0
# largest  is: 7
# smallest is: 0
# 1:   i: 2  j: 7   k: 3
# largest  is: 7
# smallest is: 2


__END__

=head1 NOTES

This machine has a slightly old perl 5.31 (current latest: 5.40).

Without the explicit feature "signatures", gets LTA warning:

   Illegal character in prototype for main::guts :  $label, $i, $j, $k  at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/MultiDispatch/e_is_for_essentials.pl line 41.


Conway's example uses "cmp" which is also the name of a built-in (?)
which can get you very wrong behavior:

  Ambiguous call resolved as CORE::cmp(), qualify as such or use & at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/MultiDispatch/e_is_for_essentials.pl line 48.



=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2024 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
