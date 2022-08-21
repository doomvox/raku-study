#!/usr/bin/env perl
#                                      2022/08/21 11:14:20

=head1 NAME

10-modify_substr_via_subst.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for 10-modify_substr_via_subst.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;


{
  my $str =
    q{Look out baby, cause I'm using technology
      Ain't got time to make no apology.
      FLAGGED: usage "baby"
     };

index

  my $skip1 = index $str, 'FLAGGED:'; 
  $str =~ m{FLAGGED:*?\z}ms;
  my $skip2 = pos;


  my $a = 25;
  my $off = 19;
  my $b = $a + $off;

  say substr( $str, $a, $off ); # can be so expressed

  substr( $str, 0, $skip1 )            =~ s{baby}{respected colleague}g;
  substr( $str, $skip2, length($str) ) =~ s{baby}{respected colleague}g;

  say "---";
  say $str;
}






__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
