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

sub dostuff {   ## all arguments go into @_  
#  my $arg = shift || 'default'; 
#  my $arg = shift // 'default';   # is shift defined?  if not, use 'default'

  ## confusables:
  ## 'ampersand' & 'atsign'

  my $arg = defined( $_[0] ) ? $_[0] : 'default';  


  say $arg;
}

dostuff('this!'); # this!
dostuff();  # default

dostuff( undef );  # default

my @stuff = ('a', 'b', 'c');
dostuff( @stuff ); # a
@stuff = ();
dostuff( @stuff ); # default

dostuff( 0 );      # default with '||' but 0 with '//'
dostuff( 1 );      # 1
