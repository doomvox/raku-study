#!/usr/bin/env perl
# unique_array_refs.pl                   doom@kzsu.stanford.edu
#                                        25 Sep 2022

=head1 NAME

unique_array_refs.pl - (( TODO insert brief description ))

=head1 SYNOPSIS

  unique_array_refs.pl -[options] [arguments]

  TODO

=head1 DESCRIPTION

B<unique_array_refs.pl> is a script which

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

# Weekly challenge #1
# You are given list of arrayrefs. Write a script to remove the duplicate arrayrefs from the given list.
# they want:
#  remove reference to arrays that are identical
#    Test::More    is_deeply
#    Scalar::Util  refaddr

my @my_array = ('ape', 'gorilla', 'chimp');

my @a = qw( alpha beta gamma );
my @c = qw( whun tew thuree );
my @b = qw( godzilla mothera rhodan );

# getting array references from arrays ('arefs', 'arrayrefs')
my $a = \@a;
my $b = \@b;
my $c = \@c;

# defining an array reference directly
my $d = [ 'perl', 'raku', ]; 

# my $e = [ 'perl'. 'raku', ];  ## oops, wanted a comma not a dot  'perlraku'

# an array of arefs with duplicate arefs
my @array_of_arefs = ( $a, $b, $c, $d, $a, $b );

use List::MoreUtils qw( zip uniq );
my @uniques = uniq @array_of_arefs;
say Dumper( \@uniques );

my @strings = map{ scalar($_) } @array_of_arefs;
say join ' ', @strings;
# ARRAY(0x55f2d59f0810) ARRAY(0x55f2d5b7eeb8) ARRAY(0x55f2d5bc93c0) ARRAY(0x55f2d588f298) ARRAY(0x55f2d59f0810) ARRAY(0x55f2d5b7eeb8)

say "@array_of_arefs";
# ARRAY(0x55f2d59f0810) ARRAY(0x55f2d5b7eeb8) ARRAY(0x55f2d5bc93c0) ARRAY(0x55f2d588f298) ARRAY(0x55f2d59f0810) ARRAY(0x55f2d5b7eeb8)

my @test = ( [1,2], [3,4], [5,6], [1,2] );
my @result = uniq @test;
say Dumper( \@result );

# $VAR1 = [
#           [
#             1,
#             2
#           ],
#           [
#             3,
#             4
#           ],
#           [
#             5,
#             6
#           ],
#           [
#             1,
#             2
#           ]
#         ];



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

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

No warranty is provided with this code.

See http://dev.perl.org/licenses/ for more information.

=cut
