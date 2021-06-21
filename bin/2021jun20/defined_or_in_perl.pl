#!/usr/bin/env perl
#                                      2021/06/20 14:20:12

=head1 NAME

defined_or_in_perl.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for defined_or_in_perl.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

## mispeakbales:
## 'ampersand' & 'atsign'

## we like the "this || that" construct for argument defaults
## it has problems when there's a false value that's valid, like "0"

sub dostuff {   ## all arguments go into @_  in classic perl-style
                ## shift acts on @_ by default, like "shift(@_)"

  ## uses 'default' for 0
  #  my $arg = shift || 'default'; 

  ##  checking defined-ness instead of truth accepts a '0' value
  my $arg = defined( $_[0] ) ? $_[0] : 'default';  

  ##  in modern perls, the "defined-or" operator was introduced to do this
  #  my $arg = shift // 'default';   # is shift defined?  if not, use 'default'

  say $arg;
}

dostuff('this!');  # 'this!'
dostuff();         # 'default'

dostuff( undef );  # 'default'

dostuff( 0 );      # 'default' with '||' but 0 with '//'
dostuff( 1 );      # 1

my @stuff = ('a', 'b', 'c');
dostuff( @stuff ); # 'a'
@stuff = ();
dostuff( @stuff ); # 'default'

