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
do {{
  my @phases = phasehunt( $start );
  my $fm_secs = $phases[2];

  my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) =
      localtime( $fm_secs );
  # mday  day-of-month
  # mon is 0..11
  $mon  += 1;
  $year += 1900;
  my $mday_str = sprintf("%02d", $mday);
  my $mon_str  = sprintf("%02d", $mon);

#   say $mon_str;
#   say $mday_str;
#   say $year;

  my $mmddyyyy = $mon_str . $mday_str . $year;
  say $mmddyyyy;

#   print "Full moon     = ", scalar( localtime( $fm_secs ) ), "\n";
  $start = $fm_secs + 24 * 60 * 60 * 28;
}} until $i++ > 1000;


## Serviceable, perl5y date hacking to work with full moon dates...



__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
