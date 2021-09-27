#!/usr/bin/env perl
#                                                                   k
#                                      2021/09/26 11:31:58

=head1 NAME

playing_with_dualvars.pl

=head1 SYNOPSIS

=head1 DESCRIPTION

Playing with perl's dualvar feature, an internal
performance hack that you can access explicitly 
via Scalar::Util's dualvar, because this is perl.

Mostly just a perl oddity: not particularly useful.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;
use Scalar::Util qw( dualvar );

## man Scalar::Util
#    dualvar
#            my $var = dualvar( $num, $string );

#        Returns a scalar that has the value $num in a numeric context and the value $string in a string
#        context.

#            $foo = dualvar 10, "Hello";
#            $num = $foo + 2;                    # 12

#            $str = $foo . " world";             # Hello world

## perl being perl, it let's you hi-jack the normally hidden "dualvar" cache
## and assign custom values to the numeric and string slots
my $n = dualvar( 5, "five" );  # 5 , "five", normally it's 5 and "5"

say "The number is $n";                # The number is five
say "Twice the number is: ", $n * 2;   # Twice the number is: 10

# perl being perl, you can assign something else to this variable, and 
# it does what it can with it (gives you normal behavior).
$n = 7;   # now this is like:  7, "7" 
say "The number is $n";                # The number is 7
say "Twice the number is: ", $n * 2;   # Twice the number is: 14

$n = dualvar( 8, "ate" );
say $n+0;                              # 8
say "$n";                              # ate

## Can't easily set one slot at a time:
$n = 7;
$n = dualvar( undef, "sacred seven" );
# Use of uninitialized value in subroutine entry at /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021sep26/playing_with_dualvars.pl line 45.
say $n+0;  # 0
say "$n";  # sacred seven

## Note: no one can think of anything useful to do with this trick.
## e.g. months that are numbers and month names?
## better to translate them explicitly (lookup array or hash)





__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2021 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
