#!/usr/bin/env perl
#                                      2022/08/21 11:14:20

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

my $DEBUG = 0;

=head1 NAME

10-modify_substr_via_subst.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

10-modify_substr_via_subst.pl is a perl script that demos using a
substr of a string as the target of a substitution command: this is
one method of restricting the range of a substitution.

Inadvertantly, this also demos a number of perl's accumulated oddities, 
as well as a number of traps lurking in even the simplest programming 
task.

The task is that starting with the quote-of-the-week, replace the
condescending term "honey" with a phrase more likely to be accepted
in our new era of modern englightenment.  There's also a line 
beginning with the key phrase "FLAGGED:" that we want to exclude 
from this change.  The task is done by 

   (1) locating where the FLAGGED line begins

   (2) locating where the FLAGGED line ends

   (3) doing a s/// on the chunk *after* the FLAGGED line

   (4) doing a s/// on the chunk *before* the FLAGGED line
   

Some notes:

  o  (3) and (4) are done in the reverse order of what you might expect so 
     that the locations of things don't change due to the previous s/// 

  o  Everytime I reach for substr (which isn't often) I expect that both 
     numeric arguments are *positions*, really the first is a position, the 
     second is a length

  o  to search for the end of the FLAGGED line we use the 'msg' modifiers.
     o   we want '$' to match end-of-line not end-of-string
     o   'g' lets us access the position after the match via pos


  o  in perl's favor: you can use substr to simply extract a substring, 
     or to refer to a range in the string you want to act on.

     o  internally these are very different cases, but to the user, 
        this makes intuitive sense, so perl hides the differences.


=cut

{
  my $str =<<'ENDSTR';
Look out honey, cause I'm using technology
FLAGGED: usage "honey"
Ain't got time to make no apology.
ENDSTR

  my $new_str = 
    de_sweeten( $str, 'respected colleague' );

 ($DEBUG) && say "---";
  say $new_str;

# Look out respected colleague, cause I'm using technology
# Ain't got time to make no apology.
# FLAGGED: usage "honey"
}

sub de_sweeten {
  my $str = shift;
  my $fix = shift || 'xx';
  ($DEBUG) && say "length of str: ", length( $str );

  ## Find where FLAGGED line begins
  my $skip1 = index $str, 'FLAGGED:'; 
  ## Find where FLAGGED line ends
  my $skip2;
  if ( $str =~ m{FLAGGED:.*?$}msg ) {
    ($DEBUG) && say "   successful search for end of flagged line";
    $skip2 = pos($str);
  }
  ($DEBUG) && say "   will skip from: $skip1 to $skip2";
  my $lskp = $skip2 - $skip1;
  ($DEBUG) && say "   >>", substr( $str, $skip1, $lskp ), "<<"; # 

  ## modify region *after* skipped region first
  my $lafter = length($str) - $skip2;
  ($DEBUG) && say "   skip2: $skip2, lafter: $lafter";
  ($DEBUG) && say "   ", substr( $str, $skip2, $lafter );
  substr( $str, $skip2, $lafter )  =~ s{honey}{$fix}g;

  ## modify region before skipped region
  substr( $str, 0, $skip1 )        =~ s{honey}{$fix}g;

  return $str;
}


{
  # the above code is general enough it doesn't care where the FLAGGED line is
  say "===";
  my $str =<<'ENDSTR';
Look out honey, cause I'm using technology
Ain't got time to make no apology.
FLAGGED: usage "honey"
ENDSTR

  my $new_str = 
    de_sweeten( $str, 'respected colleague' );

 ($DEBUG) && say "---";
  say $new_str;
}

{
  # the above code is lame enough it only handles the case of a single FLAGGED line
  say "===";
  my $str =<<'ENDSTR';
Look out honey, cause I'm using technology
FLAGGED: usage "honey"
Ain't got time to make no apology.
FLAGGED: "Ain't" ain't no good, honey
ENDSTR

  my $new_str = 
    de_sweeten( $str, 'respected colleague' );


 ($DEBUG) && say "---";
  say $new_str;
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
