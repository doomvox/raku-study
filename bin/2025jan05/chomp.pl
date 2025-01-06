#!/usr/bin/env perl
#                                      2025/01/05 23:23:24

=head1 NAME

chomp.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for chomp.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

## PERL

open(my $in, "<", "input.txt") or die "Can't open file: $!";
 
my @input;
chomp(
      @input = <$in>
      );




__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2025 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
