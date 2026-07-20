#!/usr/bin/env perl
# counts_zero_plus_grep_bg.pl                   doom@kzsu.stanford.edu
#                                               20 Jul 2026

=head1 NAME

counts_zero_plus_grep_bg.pl - (( TODO insert brief description ))

=head1 SYNOPSIS

  counts_zero_plus_grep_bg.pl -[options] [arguments]

  TODO

=head1 DESCRIPTION

B<counts_zero_plus_grep_bg.pl> is a script which

(( TODO  insert explanation
   This is stub documentation created by template.el.  ))

=cut

use v5.36; ## currently have 5.40 installed
use Data::Dumper;
$Data::Dumper::Sortkeys = 1;
$Data::Dumper::Useqq = 1;

use utf8;
use open qw<:std :utf8>;  ## note, also see use autodie

# use feature ":5.20.0";  
use feature 'signatures';  # introduced 5.20
use warnings;
use strict;
$|=1;
use Carp;

use File::Path      qw( mkpath remove_tree );
use File::Basename  qw( fileparse basename dirname );
use File::Spec;     # my $rel = File::Spec->abs2rel( $path, $base );
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

my @pets = qw<dog cat dog cat dog dog>;
{ # bruce gray slide, 
  # https://files.speakerdeck.com/presentations/f6b5c3e61fab4a3b8635f16afdb6cc6b/grouping_unclassified_-_tprc_2026.pdf
  my $dogs = 0+grep { $_ eq 'dog' } @pets;
  my $cats = 0+grep { $_ eq 'cat' } @pets;

  say "cats: $cats"; # cats: 2
  say "dogs: $dogs"; # dogs: 4

  for (@pets) {
    $_ eq 'dog' or $_ eq 'cat' or warn;
  }
}


say "===";
{ # pattern match instead of eq
  my $dogs = 0+grep { /dog/ } @pets;
  my $cats = 0+grep { /cat/ } @pets;

  say "cats: $cats"; # cats: 2
  say "dogs: $dogs"; # dogs: 4
}




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
