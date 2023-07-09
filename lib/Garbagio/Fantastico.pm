package Garbagio::Fantastico;
use Moo;
use MooX::Types::MooseLike::Base qw(:all);

=head1 NAME

Garbagio::Fantastico - The great new Garbagio::Fantastico! TODO revise this

=head1 VERSION

Version 0.01

=cut

# TODO revise these before shipping
our $VERSION = '0.01';
my $DEBUG = 1;

=head1 SYNOPSIS

   use Garbagio::Fantastico;
   my $obj = Garbagio::Fantastico->new({ ...  });

   # TODO expand on this

=head1 DESCRIPTION

Garbagio::Fantastico is a module that ...

TODO expand this stub documentation, which was created by perlnow.el.

=head1 METHODS

=over

=cut

use 5.10.0;
use Carp;
use Data::Dumper;
use File::Path      qw( mkpath remove_tree );
use File::Basename  qw( fileparse basename dirname );
use File::Copy      qw( copy move );
use autodie         qw( :all mkpath copy move ); # system/exec along with open, close, etc
use Cwd             qw( cwd abs_path );
use Env             qw( HOME USER );
use List::Util      qw( first max maxstr min minstr reduce shuffle sum any );
use List::MoreUtils qw( zip uniq );
use String::ShellQuote qw( shell_quote );
use POSIX qw( ceil floor );

=item new

Creates a new Garbagio::Fantastico object.

Takes a hashref as an argument, with named fields identical
to the names of the object attributes. These attributes are:

=over

=item <TODO fill-in attributes here... most likely, sort in order of utility>

=back

=cut

# Example attribute:

has mah_int => ( is => 'rw', isa => Int, default => 0 );

{ no warnings 'once'; $DB::single = 1; }


=item say_mah_int

=cut

sub say_mah_int {
  my $self = shift;

  say $self->mah_int;


}




=back

=head1 AUTHOR

Joseph Brenner, E<lt>doom@kzsu.stanford.eduE<gt>,
09 Jul 2023

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2023 by Joseph Brenner

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

No warranty is provided with this code.

See http://dev.perl.org/licenses/ for more information.

=cut

1;
