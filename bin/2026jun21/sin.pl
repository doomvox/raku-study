#!/usr/bin/env perl
# sin.pl                   doom@kzsu.stanford.edu
#                          21 Jun 2026

=head1 NAME

sin.pl - (( TODO insert brief description ))

=head1 SYNOPSIS

  sin.pl -[options] [arguments]

  TODO

=head1 DESCRIPTION

B<sin.pl> is a script which

(( TODO  insert explanation
   This is stub documentation created by template.el.  ))

=cut

use feature ":5.10.0";
use warnings;
use strict;
$|=1;
use Carp;
use Data::Dumper;

use File::Path      qw( mkpath remove_tree );
use File::Basename  qw( fileparse basename dirname );
use File::Copy      qw( copy move );
use autodie         qw( :all mkpath copy move ); # system, exec, open, close, etc
use Cwd             qw( cwd abs_path );
use Env             qw( HOME USER );
use String::ShellQuote qw( shell_quote );
use Config::Std;
use Getopt::Long    qw( :config no_ignore_case bundling );
use List::Util      qw( first max maxstr min minstr reduce shuffle sum any );
use List::MoreUtils qw( zip uniq );
use POSIX qw( ceil floor );
use File::Temp      qw( tempfile );
#  my ($fout, $tmp_file) = tempfile( DIR => "$HOME/tmp" );
#  binmode( $fout, ":utf8" );

our $VERSION = 0.01;
my  $prog    = basename($0);

my $DEBUG   = 1;                 # TODO set default to 0 when in production
GetOptions ("d|debug"    => \$DEBUG,
            "v|version"  => sub{ say_version(); },
            "h|?|help"   => sub{ say_usage();   },
           ) or say_usage();
#           "length=i" => \$length,        # numeric
#           "file=s"   => \$file,          # string

{ no warnings 'once'; $DB::single = 1; }


say sin(45);  # 0.850903524534118

my @alpha = ('a','b','c');
say sin( @alpha ); # 0.141120008059867

say sin( 3 );  # 0.141120008059867


my   %fried = ( a => 1,
               b => 2,
               c => 3,
               );

say %fried;  # a1b2c3

my $scalar = %fried; 


### end main, into the subs

sub say_usage {
  my $usage=<<"USEME";
  $prog -[options] [arguments]

  Options:
     -d          debug messages on
     --debug     same
     -h          help (show usage)
     -v          show version
     --version   show version

TODO add additional options

USEME
  print "$usage\n";
  exit;
}

sub say_version {
  print "Running $prog version: $VERSION\n";
  exit 1;
}


__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@kzsu.stanford.eduE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2026 by Joseph Brenner

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

No warranty is provided with this code.

See http://dev.perl.org/licenses/ for more information.

=cut
