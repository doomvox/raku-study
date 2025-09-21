#!/usr/bin/env perl
#                                      2025/09/21 22:59:15

=head1 NAME

mocking.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for mocking.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut


use 5.010;
package Foo;
sub bar () { say "real bar" }
*MAIN::bar = *Foo::bar;

package MAIN;
bar();

{
    local *bar = sub () { say "mocked bar" };
    bar();
}
bar();




__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

Starting with a code example by Bruce Gray.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2025 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
