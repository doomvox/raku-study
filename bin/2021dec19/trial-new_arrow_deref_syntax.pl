#!/usr/bin/env perl
# trial-new_arrow_deref_syntax                   doom@kzsu.stanford.edu
#                                                19 Dec 2021

=head1 NAME

trial-new_arrow_deref_syntax - (( TODO insert brief description ))

=head1 SYNOPSIS

  trial-new_arrow_deref_syntax -[options] [arguments]

  TODO

=head1 DESCRIPTION

B<trial-new_arrow_deref_syntax> is a script which

(( TODO  insert explanation
   This is stub documentation created by template.el.  ))

=cut

use feature ":5.10.0";
use warnings;
use strict;
$|=1;
use Carp;
use Data::Dumper;

use File::Path      qw( mkpath );
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


say *main::a;  # *main::a

my @a = ('mothera', 'blob', 'godzilla');

say *main::a->@*;

my $aref = \@a;
say Dumper( $aref );
# $VAR1 = [
#           'mothera',
#           'blob',
#           'godzilla'
#         ];

say $aref->@*;            # motherablobgodzilla

say join " ", $aref->@*;  # mothera blob godzilla

say join "|", @{ $aref }; # mothera|blob|godzilla



say *main::HOME->$*; # /home/doom
say *main::HOME->@*; # 
our @HOME = ('heart', 'workstation', 'blessedplot' );
say join " ", *main::HOME->@*; # 
# heart workstation blessedplot

say join " ", *main::HOME->$*; # /home/doom

*main::HOME = sub { say "sweet!" };

*main::HOME->&*;  # sweet!

say "hard shell time: ";
local *ARMADILLO = \&HOME;
&ARMADILLO;  # sweet!





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

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

No warranty is provided with this code.

See http://dev.perl.org/licenses/ for more information.

=cut
