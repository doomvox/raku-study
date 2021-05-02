package CircularFile::A;
#                                doom@kzsu.stanford.edu
#                                02 May 2021


=head1 NAME

CircularFile::A - TODO Perl extension for blah blah blah

=head1 SYNOPSIS

   use CircularFile::A ':all';

   TODO

=head1 DESCRIPTION

TODO  Stub documentation for CircularFile::A,
created by perlnow.el using template.el.

It looks like the author of the extension was negligent
enough to leave the stub unedited.

=head2 EXPORT

None by default.  Optionally:

=over

=cut

use 5.10.0;
use strict;
use warnings;
use Carp;
use Data::Dumper;
use File::Path      qw( mkpath );
use File::Basename  qw( fileparse basename dirname );
use File::Copy      qw( copy move );
use autodie         qw( :all mkpath copy move ); # system/exec along with open, close, etc
use Cwd             qw( cwd abs_path );
use Env             qw( HOME USER );
use List::Util      qw( first max maxstr min minstr reduce shuffle sum any );
use List::MoreUtils qw( zip uniq );
use String::ShellQuote qw( shell_quote );
use POSIX qw( ceil floor );

our (@ISA, @EXPORT_OK, %EXPORT_TAGS, @EXPORT);
BEGIN {
 require Exporter;
 @ISA = qw(Exporter);
 %EXPORT_TAGS = ( 'all' => [
 # TODO Add names of items to export here.
 qw(

    ) ] );
  # The above allows declaration	use CircularFile::A ':all';

  @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
  @EXPORT = qw(  ); # items to export into callers namespace by default (avoid this!)
  { no warnings 'once'; $DB::single = 1; }
}

our $VERSION = '0.01';
my $DEBUG = 1;

# Preloaded methods go here.

sub a {
}

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

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

No warranty is provided with this code.

See http://dev.perl.org/licenses/ for more information.

=cut
