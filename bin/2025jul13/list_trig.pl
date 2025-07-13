#!/usr/bin/env perl
#                                      2025/07/13 21:03:24

=head1 NAME

list_trig.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for list_trig.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

my @a = (1, 2, 3);
say @a.sin;
# Use of uninitialized value $_ in sin at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025jul13/list_trig.pl line 28.
# 30

##  taking the sine of an unit, turns into sin of 0;

say sin(0);


__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2025 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
