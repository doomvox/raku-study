#!/usr/bin/env perl
#                                      2021/05/22 18:58:53

=head1 NAME

issues_with_raku_regex_perl5_compatibility.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for issues_with_raku_regex_perl5_compatibility.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

# Double checking that I understand the embedded pattern modifiers in perl5:


printf "%-25s", "Trying good old perl5 with (?^x: ";
if( "this" =~ m/(?^x: ^ [a-z] )/ ) { say "good"; } else { say "ng"; }

printf "%-25s", "Trying good old perl5 with (?^i: ";
if( "this" ~~ m/(?^i:^[a-z])/ ) { say "good"; } else { say "ng"; }

# Trying good old perl5 with (?^x: good
# Trying good old perl5 with (?^i: good




__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
