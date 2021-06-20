#!/usr/bin/env perl
#                                      2021/06/20 14:20:12

=head1 NAME

defined_or_in_perl.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for defined_or_in_perl.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;


sub dostuff {
  my $arg = shift || 'default'; 
  say $arg;
}


dostuff('this!');

dostuff();





__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
