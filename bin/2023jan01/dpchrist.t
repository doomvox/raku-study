#!/usr/bin/env perl
# $Id: system.t,v 1.5 2023/01/15 21:07:33 dpchrist Exp $
# by David Paul Christensen dpchrist@holgerdanske.com
# Public Domain
#
# Test Perl built-in system().

use strict;
use warnings;
use Capture::Tiny		qw( capture );
use POSIX			qw( SIGUSR2 );
use Test::More;
use Test::Warn;

our @args;

our $stdout;
our $stderr;
our $system;
our $ce;

our $TODO;

sub _t
{
  note shift;

  local @args = @{ shift @_ };
  my $a = shift;

  note "\@args='", join("', '", @args), "'";
  ($stdout, $stderr, $system) = capture { system(@args) };
  $ce = $?;
  $_->() for @_;

  local @args = ($a);
  note "\@args='", join("', '", @args), "'";
  ($stdout, $stderr, $system) = capture { system(@args) };
  $ce = $?;
  $_->() for @_;
}

_t(@$_) for (
  [
    "Child failed to execute",
    [qw( nosuchprogram foo bar )],
    q(nosuchprogram foo bar),
    sub {
      eval {
       	is $stdout, '', join $", __FILE__, __LINE__,
	  'STDOUT is empty string';

	like
	  $stderr,
	  qr/^Can't exec "nosuchprogram": No such file or directory/,
	  join $", __FILE__, __LINE__,
	   q(STDERR like /Can't exec "nosuchprogram": No such file or directory/);

	is $system, $ce, join $", __FILE__, __LINE__,
	  sprintf 'System return value (0x%X) is $CHILD_ERROR (0x%X)',
	  $system,
	  $ce;

	is $ce, -1, join $", __FILE__, __LINE__,
	  sprintf '$CHILD_ERROR (0x%X) is -1',
	  $ce;

	is $ce & 127, 0x7F, join $", __FILE__, __LINE__,
	  sprintf 'Lower 7 bits of $CHILD_ERROR (0x%X) are ones',
	    $ce & 127;

	is $ce >> 8, (~0) >> 8, join $", __FILE__, __LINE__,
	  sprintf 'Upper bytes of $CHILD_ERROR (0x%X) are ones',
	    $ce >> 8;
      };
    },
  ],

  [
    "Child kills itself with signal USR2",
    ['perl', '-e', 'kill "USR2", $$'],
    q(perl -e 'kill "USR2", $$'),
    sub {
      eval {
	is $system, $ce, join $", __FILE__, __LINE__,

	sprintf 'System return value (0x%X) is $CHILD_ERROR (0x%X)',
      	  $system,
	  $ce;

	isnt $ce, -1, join $", __FILE__, __LINE__,
	  sprintf '$CHILD_ERROR (0x%X) isnt -1',
	    $ce;
      };
    },
    sub {
      my $code = q{
	is $ce & 127, SIGUSR2, join $", __FILE__, __LINE__,
	  sprintf 'Lower 7 bits of $CHILD_ERROR (0x%X) is SIGUSR2 (0x%X)',
	    $ce & 127,
	    SIGUSR2;

	is $ce >> 8, 0, join $", __FILE__, __LINE__,
	  sprintf 'Upper bytes of $CHILD_ERROR (0x%X) are zeroes',
	    $ce >> 8;
      };
      if (@args == 1 && -e '/etc/debian_version') {
	TODO: {
	  local $TODO = 
"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1028275";
	  eval $code;
	}
      }
      else {
	eval $code;
      }
    },
  ],

  [
    "Child exits with value 0xA5",
    ['perl', '-e', 'exit 0xA5'],
    q(perl -e 'exit 0xA5'),
    sub {
      eval {
    	is $system, $ce, join $", __FILE__, __LINE__,
  	  sprintf 'System return value (0x%X) is $CHILD_ERROR (0x%X)',
	    $system,
	    $ce;

      	isnt $ce, -1, join $", __FILE__, __LINE__,
  	  sprintf '$CHILD_ERROR (0x%X) isnt -1',
	    $ce;

      	is $ce & 127, 0, join $", __FILE__, __LINE__,
  	  sprintf 'Lower 7 bits of $CHILD_ERROR (0x%X) are zeroes',
	    $ce & 127;

      	is $ce >> 8, 0xA5, join $", __FILE__, __LINE__,
  	  sprintf 'Upper bytes of $CHILD_ERROR (0x%X) is 0xA5',
	    $ce >> 8;
      };
    },
  ],
);

done_testing;
