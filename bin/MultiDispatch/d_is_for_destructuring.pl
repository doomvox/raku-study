#!/usr/bin/env perl
#                                      2024/08/13 22:04:24

=head1 NAME

d_is_for_destructuring.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for d_is_for_destructuring.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
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

multi exm ( Int $klref, $kl_ref, $l] ) { ... }
multi exm ( Int [$i, $j], $kl_ref, $l] ) { ... }
multi exm ( Int [$i, $j], [$k, $l] ) { ... }





__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2024 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
