#!/usr/bin/env perl
#                                      2022/08/21 11:14:20

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

=head1 NAME

10-modify_substr_via_subst.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

10-modify_substr_via_subst.pl is a perl script 
that demos using a substr of a string as the target 
of a substitution command:  this is one method of 
restricting the range of a substitution command.

Inadvertantly, this also demos a number of perl's accumulated oddities, 
as well as a number of traps lurking in even the simplest programming 
task.

The task, is starting with the quote-of-the-week, replace the
condescending use of "honey" with a phrase more likely to be accepted
in our new era of modern englightenment.  





=cut

{
  my $str =<<'ENDSTR';
Look out honey, cause I'm using technology
FLAGGED: usage "honey"
Ain't got time to make no apology.
ENDSTR
  say length( $str );

  my $skip1 = index $str, 'FLAGGED:'; 
  my $skip2;
  if( $str =~ m{FLAGGED:.*?$}msg ) {
    say "   successful search for end of flagged line";
    $skip2 = pos($str);
  }
  say "   will skip from: $skip1 to $skip2";
  my $lskp = $skip2 - $skip1;
  say "   >>", substr( $str, $skip1, $lskp ), "<<"; # 

  ## modify region *after* skipped region first
  my $lrest = length($str) - $skip2;
  say "   skip2: $skip2, lrest: $lrest";
  say "   ", substr( $str, $skip2, $lrest );
  substr( $str, $skip2, $lrest )  =~ s{honey}{respected colleague}g;

  ## modify region before skipped region
  substr( $str, 0, $skip1 )                         =~ s{honey}{respected colleague}g;

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
