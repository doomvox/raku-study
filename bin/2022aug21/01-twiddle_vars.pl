#!/usr/bin/env perl
#                                      2022/08/21 10:22:50

=head1 NAME

01-twiddle_vars.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for 01-twiddle_vars.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;
{
  my ($a, $b) = (3, 7);
  say "a: $a,  b: $b";    # a: 3,  b: 7
  ($b, $a) = ($a, $b);
  say "a: $a,  b: $b";    # a: 7,  b: 3
}

{
  say "===";
  my ($a, $b) = (3, 7);
  say "a: $a,  b: $b";    # a: 3,  b: 7
  ($b, $a) = $a, $b;

  # Warns:
  # Useless use of private variable in void context at 01-twiddle_vars.pl line 37.

  $a = " " unless defined $a;
  $b = " " unless defined $b;

  say "a: $a,  b: $b";   # a:  ,  b: 3
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
