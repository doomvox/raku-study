#!/usr/bin/env perl
#                                      2022/10/09 21:55:59

=head1 NAME

scopes_and_the_topic.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for scopes_and_the_topic.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;


sub sideways {
    my $mess = "hm";
    $_ = defined($_) ? uc($_) : '';
    return $mess;
}

{
    my @N = map({ sideways }), @numbers;
           # Calling sideways(Mu) will never work with declared signature ()
    $_ = "a message for the ages";
    say @N;
    # [hm hm hm hm hm hm hm]
    say $_; # a message for the ages
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
