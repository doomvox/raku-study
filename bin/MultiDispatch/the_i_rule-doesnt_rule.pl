#!/usr/bin/env perl
#                                      2024/08/25 19:47:18

=head1 NAME

the_i_rule-doesnt_rule.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for the_i_rule-doesnt_rule.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.31.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

use List::Util      qw( first max maxstr min minstr reduce shuffle sum any );
use List::MoreUtils qw( zip uniq );

use feature "signatures";
no warnings 'experimental::signatures';  ## needed up to perl 5.36

use Multi::Dispatch;

multi talk_to_me ( Str $a ) {
  say "we got ONE argument";
}

multi talk_to_me ( Str $a ) {
  say "we got JUST ONE arg again.";
}

talk_to_me( "hey" );  
talk_to_me( "ho" );

# No suitable variant for call to multi talk_to_me()
# with arguments: ("hey")
# at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/MultiDispatch/the_i_rule-doesnt_rule.pl line 45







__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2024 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
