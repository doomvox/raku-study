#!/usr/bin/env perl
#                                      2023/09/24 21:21:22

=head1 NAME

stackover_flow.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for stackover_flow.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;


echo 'a-b' > a.txt;from='-';to='\n';perl -s -0777 -pe 's/\Q$from\E/$to/' -- -from="$from" -to="$to" a.txt
a\nb
echo 'a-b' > a.txt;from='-';to='\n';perl -s -0777 -pe 's/\Q$from\E/\n/' -- -from="$from" -to="$to" a.txt
a
b




__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2023 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
