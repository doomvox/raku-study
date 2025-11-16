#!/usr/bin/env perl
#                                      2021/04/11 13:38:18

=head1 NAME

perl5_example_re.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

perl5_example_re.pl:
demo of perl regexps.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;


my $stringy = "Hey here we're about to be interrupted--";

if( $stringy =~ m/(.*?)-/ ) {
  my $hit = $1;
  say "string sans hyphens: ", $hit;
}

if( $stringy =~ m/ ( [^-]* ) - /x ) {       ## [ <-[-]>* ] - 
  my $hit = $1;
  say "string sans hyphens: ", $hit;
}

$stringy = "Hey here we're about to be interrupted--  and yet there's still more-- and now we're done \n--------";

if( $stringy =~ m/ ( [^-]* ) - /x ) {       ## [ <-[-]>* ] - 
  my $hit = $1;
  say "string sans hyphens: ", $hit;
}



__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
