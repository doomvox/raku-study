#!/usr/bin/env perl
#                                      2025/07/15 23:05:49

=head1 NAME

character_increment.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for character_increment.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
# use warnings;
use strict;
$|=1;
use Data::Dumper;


my $what = "a" + 1;
print "$what\n";

# with warnings on, you get the message:
#   Argument "a" isn't numeric in addition (+) at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025jul13/character_increment.pl line 28.

# Either way, perl keeps going, treating the "a" as a 0, and printing "1";


__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2025 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
