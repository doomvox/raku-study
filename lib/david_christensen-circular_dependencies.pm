package david_christensen-circular_dependencies;
#                                doom@kzsu.stanford.edu
#                                06 Jun 2022


=head1 NAME

david_christensen-circular_dependencies - TODO Perl extension for blah blah blah

=head1 DESCRIPTION

Sketching out David Christensen's current approach 
to handling modules with circular dependencies in perl5

=cut

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


=head2 commentary

The key points are:

=over

=item Put the Exporter-related statements (lines 14-25) near the top of the module, before other code.

=item Statement ordering is important:

=over

  =item First -- declare @EXPORT_OK, but do not define/ initialize it (line 14).

  =item Next -- define/ initialize @EXPORT_OK in a BEGIN block (lines 16-20).

  =item Finally -- 'use parent' to inherit from Exporter (lines 22, 23, and 25).

=back

=item The above module also happens to inherit from Test::Builder::Module. My other modules do not need or have line 24.

=item As I develop code and introduce bugs, I frequently see warnings to the effect "subroutine redefined" when there is a circular loop between modules.  Once I fix the bugs, those warnings go away.

=back

Without understanding the "how" and "why" of perl(1), Exporter, "compile time", "run time", "require", "use", "parent", "import", etc. -- of the several solutions myself and others have tried over time, this one seems to work the best for me.

=cut
