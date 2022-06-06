#!/usr/bin/env perl
#                                      2022/06/06 07:02:14

=head1 NAME

david_christensen-circular_dependencies.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for david_christensen-circular_dependencies.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;



****** currently uses:
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




__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
