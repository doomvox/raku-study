#!/usr/bin/env perl
#                                      2022/11/20 21:31:02

=head1 NAME

raku_hashes_compared_to_perl.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for raku_hashes_compared_to_perl.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

my $response = { success => 1,
                 stuff   => 'whateva',
                 };
say $response->{ success };
## 1


my $r = %r{success};

__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
