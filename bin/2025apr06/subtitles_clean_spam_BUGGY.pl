#!/usr/bin/env perl
# subtitles_clean_spam_BUGGY.pl                   doom@kzsu.stanford.edu
#                                                 17 Mar 2025

# STATUS:
# putting a bug back in intentionally

=head1 NAME

subtitles_clean_spam_BUGGY.pl - remove website spam from dramanice.cyou *.srt files 

=head1 SYNOPSIS

  # default: modify file in place, rename original with *.BAK extension
  subtitles_clean_spam_BUGGY.pl <srt_file> 

  # an optional second file name can be supplied for the output, leaves original unchanged
  subtitles_clean_spam_BUGGY.pl <srt_file> <optional_output_file>

  # Inside of emacs dired: position cursor on *.srt line and run this script with "&"

=head1 DESCRIPTION

B<subtitles_clean_spam_BUGGY.pl> is a script which replaces web spam lines in *.srt files
replacing them with empty lines, leaving actual lines of dialog untouched.

The *.srt files from the dramanice.cyou site have irritating spam
interspersed between the lines of dialog:

     11
     00:00:47,450 --> 00:02:09,129
     Free Watch and Download on 
     myasiantv.cv
     
     12
     00:02:09,129 --> 00:02:10,199
     Don't move.

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

my $srt_file = shift;
my $out_file = shift; # optional, otherwise modify in place

use File::Temp qw/ tempfile /;
my ($fout, $tmp_file) = tempfile( DIR => "$HOME/tmp" );
binmode( $fout, ":utf8" );

open(my $fin, '<', $srt_file);
binmode( $fin, ":utf8" );
my $skipped_cnt = 0;
while (my $line = <$fin>) {
#  chomp( $line );
  my $revised = '';
  if( $line =~ qr{^Free Watch and Download on\s*$} ) { # Need to skip this line and the next one
    $revised = "\r\n"; # hack to get DOS style newlines
    $skipped_cnt = 1;
  } elsif( $skipped_cnt eq 1 ) { # we skipped last line, so skip this one
    $revised = "\r\n";
    $skipped_cnt++;
  } else {  # normal case: just echo the line (unchomped)... but apply any single line changes
#    $revised = modify_line( $line );
    $revised =  $line;
    $skipped_cnt = 0;
  }
  print {$fout}  $revised;
}
close( $fin );

if( $out_file ) {
  copy( $tmp_file, $out_file );
} else {
  copy( $srt_file, "$srt_file.BAK" );
  copy( $tmp_file, $srt_file );
}

=item modify_line

## untested, not in use here.  See Subtitle::Scrub

=cut

sub modify_line {
  my $line = shift;

  ## strip out bracketed remarks [like this] from the line
  my $open_sq  = '\[';
  my $close_sq = '\]';
  my $any_but_close_sq   = qr{ [^ $close_sq ]* }x;
  my $bracket_string_pat = qr{ $open_sq $any_but_close_sq $close_sq }x;
  $line =~ s{ $bracket_string_pat }{}x;

  return $line;
}



## just echo the tmp_file to stdout

#   close( $fout );
#   open( my $fnew, '<', $tmp_file ); 
#   while(<$fnew>) {
#     print;
#   }




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

=head1 NOTES

=over

=item *

BUG: using *unix* style newlines, input files are *dos* style text.
with any luck this won't matter.  

There are various ways to fix this on the perl side...
I'm thinking maybe: Don't chomp.
But there's still the $revised lines.  Hack: "\r\n"

=back

=head1 AUTHOR

Joseph Brenner, E<lt>doom@kzsu.stanford.eduE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2025 by Joseph Brenner

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

No warranty is provided with this code.

See http://dev.perl.org/licenses/ for more information.

=cut
