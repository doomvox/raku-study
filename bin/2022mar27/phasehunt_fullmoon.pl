#!/usr/bin/env perl
#                                      2022/03/27 22:23:35

=head1 NAME

phasehunt_fullmoon.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for phasehunt_fullmoon.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

use Astro::MoonPhase;

my $i;

my $start = time();
LOOP:
while (1) { 
  my @phases = phasehunt( $start );
  my $fm_secs = $phases[2];
  print "Full moon     = ", scalar( localtime( $fm_secs ) ), "\n";
  $start = $fm_secs + 24 * 60 * 60 + 100;
  last LOOP if $i++ > 1000;
}




__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
