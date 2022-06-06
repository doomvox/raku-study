package david_christensen-circular_dependencies;
#                                doom@kzsu.stanford.edu
#                                06 Jun 2022


=head1 NAME

david_christensen-circular_dependencies - TODO Perl extension for blah blah blah

=head1 DESCRIPTION

An example, sketching out David Christensen's current approach 
to handling modules with circular dependencies in perl5

=head2 EXPORT

None by default.  Optionally:

=over

=cut

currently uses:
     6  package Dpchrist::Lib5::Test;
     7 
     8 
     9  use strict;
    10  use warnings;
    11  use threads;
    12  use threads::shared;
    13 
    14  our @EXPORT_OK;
    15 
    16  BEGIN {
    17      @EXPORT_OK =        qw(
    18                              is_poly
    19                          );
    20  }
    21 
    22  use parent              qw(
    23                              Exporter
    24                              Test::Builder::Module
    25                          );


The key points are:

o Put the Exporter-related statements (lines 14-25) near the top of the module, before other code.

o Statement ordering is important:

  o First -- declare @EXPORT_OK, but do not define/ initialize it (line 14).

  o Next -- define/ initialize @EXPORT_OK in a BEGIN block (lines 16-20).

  o Finally -- 'use parent' to inherit from Exporter (lines 22, 23, and 25).

o The above module also happens to inherit from Test::Builder::Module. My other modules do not need or have line 24.

o As I develop code and introduce bugs, I frequently see warnings to the effect "subroutine redefined" when there is a circular loop between modules.  Once I fix the bugs, those warnings go away.

******** Without understanding the "how" and "why" of perl(1), Exporter, "compile time", "run time", "require", "use", "parent", "import", etc. -- of the several solutions myself and others have tried over time, this one seems to work the best for me.



1;

=back

=head1 SEE ALSO

TODO Mention other useful documentation:

  o  related modules:  L<Module::Name>
  o  operating system documentation (such as man pages in UNIX)
  o  any relevant external documentation such as RFCs or standards
  o  discussion forum set up for your module (if you have it)
  o  web site set up for your module (if you have it)

=head1 AUTHOR

Joseph Brenner, E<lt>doom@kzsu.stanford.eduE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

No warranty is provided with this code.

See http://dev.perl.org/licenses/ for more information.

=cut
