#!/usr/bin/env perl
#                                      2020/12/13 16:26:17

=head1 NAME

perl5_and_or_or_context.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for perl5_and_or_or_context.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

my $a = 3;
my $b = '01';

say ($a & $b); # 1
say ($a | $b); # 3

say ($a && $b); # 01
say ($a || $b); # 3





__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2020 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
