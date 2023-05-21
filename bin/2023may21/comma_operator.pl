#!/usr/bin/env perl
# comma_operator.pl                   doom@kzsu.stanford.edu
#                                     21 May 2023

=head1 NAME

comma_operator.pl - (( TODO insert brief description ))

=head1 SYNOPSIS

  comma_operator.pl -[options] [arguments]

  TODO

=head1 DESCRIPTION

B<comma_operator.pl> is a script which

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


my @a = ('whun');
my @b = 'whun';

say Dumper(\@a);
say Dumper(\@b);

# $VAR1 = [
#           'whun'
#         ];

# $VAR1 = [
#           'whun'
#         ];



my @array = 1, 2, 3, 4;
say Dumper(\@array);
# $VAR1 = [
#           1
#         ];

## Useless use of a constant (2) in void context at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023may21/comma_operator.pl line 74.


my @all_of_em = (1, 2, 3, 4);
say Dumper(\@all_of_em);







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
p
=head1 AUTHOR

Joseph Brenner, E<lt>doom@kzsu.stanford.eduE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2023 by Joseph Brenner

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

No warranty is provided with this code.

See http://dev.perl.org/licenses/ for more information.

=cut

