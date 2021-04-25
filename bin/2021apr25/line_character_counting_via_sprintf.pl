#!/usr/bin/env perl
# line_character_counting_via_sprintf.pl                   doom@kzsu.stanford.edu
#                                                          24 Apr 2021

=head1 NAME

line_character_counting_via_sprintf.pl - (( TODO insert brief description ))

=head1 SYNOPSIS

  line_character_counting_via_sprintf.pl -[options] [arguments]

  TODO

=head1 DESCRIPTION

B<line_character_counting_via_sprintf.pl> is a script which

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

## Note: uses a whacked feature: %n

my $file = "/home/doom/End/Cave/Eye/dat/some_lines.txt";
open my $fh, '<', $file;
my $width = 80; # desired output line width
my ($total, $output, $count) = (0, '', 0);
while( my $line = <$fh> ) {
  chomp($line);

#   #                          /-------------------\
#   #                                              V
#   my $out_line = sprintf("%s%n%*d %d|", $line, $count, ($width - $count), $count, ($width - $count) );
#   #                             ^                          |
#   #                             \--------------------------/

  ## bg solution this actually works:
  my $out_line = sprintf( '%s%n', $line, $count )
               . sprintf( '%*d %d|', ($width - $count), $count, ($width - $count) ); 

  #  my $out_line = sprintf("%s%n%*d", $line, $count, ($width - length($line)) , $count );

  $output .= $out_line . "\n";
  $total += $count;
}
say $output;

## BUG:
## $count gets loaded with value by %n, but the next field
## "$width - $count" sees the value from the previous iteration,
## not the current one.  
## WORKAROUND: use length($line)... which would make more sense to begin with

## TODO
##  o  use the different ordering tricks to put a count up front
##  o  try length($line) with a * parameter, since $count doesn't update (works)
##  o  play with "*" parameters, separates field sizes from the field type
##  o  there's no %n in raku... how about "*"?  


## my $out_line = sprintf("%*s%*d%*d", $line, $w1, $count, $w2, $numeric, $w3);


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
