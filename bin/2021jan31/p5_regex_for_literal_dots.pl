#!/usr/bin/env perl
# p5_regex_for_literal_dots.pl                               doom@kzsu.stanford.edu
#                                                            30 Jan 2021

=head1 NAME

p5_regex_for_literal_dots.pl -- experimenting with regexes to match literal dots

=head1 SYNOPSIS

  trial-p5_bracket_dot_pattern_in_regex.pl

=head1 DESCRIPTION

B<trial-p5_bracket_dot_pattern_in_regex.pl> is a script which
does some basic exploration of using perl5 regexes to match literal
dots in a string (and to *not* match things that are not literal dots,
since the . metachar normally matches both).


=cut


# use 5.10.0;
use feature ":5.10.0";
use warnings;
use strict;
$|=1;
use Carp;
use Data::Dumper;

use File::Path      qw( mkpath );
use File::Basename  qw( fileparse basename dirname );
use File::Copy      qw( copy move );
use autodie         qw( :all mkpath copy move ); # system/exec along with open, close, etc
use Cwd             qw( cwd abs_path );
use Env             qw( HOME USER );
use String::ShellQuote qw( shell_quote );
use Config::Std;
use Getopt::Long    qw( :config no_ignore_case bundling );
use List::Util      qw( first max maxstr min minstr reduce shuffle sum any );
use List::MoreUtils qw( zip uniq );

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

{ my $str = ".";
  if( $str =~ m/[.]/ ) {  # matches
    say "Character class [.] matches the dot";
  }
  $str = "A";
  if( $str =~ m/[.]/ ) {  # matches
    say "Okay, that's weird.";
  } else {
    say "Character class [.] matches *just* the dot";
  }
}

{
  my $x = "1.33.222.4";
  if( $x =~ m/ (\d+) [.] (\d+) [.] (\d+) [.] (\d+) /x ) {
    printf "%5d %5d %5d %5d\n", $1, $2, $3, $4;   #    1    33   222     4
  } else {
    say "no match";
  }
}


{
  # in perl5, can you really use single quotes on a dot to match literally?
  my $str1 = ".";
  my $str2 = "A";
  my @pats = (
              qr/./x,
              qr{ . }x,
              qr{ '.' }x,
              qr{ "." }x,
              qr{ \. }x,
              qr{ \Q.\E }x,
              );

  for my $pat (@pats) {
    say "checking pat: $pat";
    if ( $str1 =~ m/$pat/x ) {
      say "  matched a literal dot";
    } else {
      say "  no match on literal dot";
    }

    if ( $str2 =~ m/$pat/x ) {
      say "  matched string without literal dot";
    } else {
      say "  skipped string with no literal dot";
    }
  }
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

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

No warranty is provided with this code.

See http://dev.perl.org/licenses/ for more information.

=cut
