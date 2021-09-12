#!/usr/bin/env perl
#                                      2021/09/12 14:17:40

=head1 NAME

perl5_char_sequences.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for perl5_char_sequences.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

my @stuff = 'aa' .. 'dd';
say @stuff;   #  [aa ab ac ad ba bb bc bd ca cb cc cd da db dc dd]

@stuff = 'a' .. 'ccc';
say @stuff;   # [a b c]

@stuff = 'a' ... 'ccc';
say @stuff.elems;  # 3

# a b c aa ab bb bc cc aaa  aab  abbb ccc 





__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
