#!/usr/bin/env perl
#                                      2020/10/11 16:34:28

=head1 NAME

p5_for_loops.pl

=head1 SYNOPSIS

=head1 DESCRIPTION

When you want to loop over one item at a time from an array,
it's pretty obvious what to do.  Doing two at a time isn't
quite so obvious.

Compare to the raku versions:

  for_loops_in_raku.pl6

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

my @main_monsters = qw( godzilla wolfman blob mothera garuda );

# In perl processing one element at a time is trivial:
my @monsters = @main_monsters;
for my $m ( @monsters ) {
  say $m;
}

# Processing two at a time takes some thought.  I've done it like this:
@monsters = @main_monsters;
while ( @monsters ) {
  my ($a, $b) = ( shift( @monsters ) || '', shift( @monsters ) || '' );
  say "1st: $a";
  say "2nd: $b";
}

## I had the idea there was an "each" solution, but I don't know where that came from.
##   perlfunc:  each ARRAY   return the index and value for the next element of an array
@monsters = @main_monsters;
my ($idx, $val) = each @monsters;
say "idx: $idx  val: $val"; # idx: 0  val: godzilla

## David Christensen suggests using List::Util. Perhaps "all"? But there's a "pairs"
use List::Util qw( pairs );
@monsters = @main_monsters;
foreach my $pair ( pairs @monsters ) {
  my ( $a, $b ) = @{ $pair };
  say "1: $a  2: $b";
}
## But this doesn't handle the last loop that's short a value:
## "Odd number of elements in pairs"

# Bruce Gray solution, using splice
@monsters = @main_monsters;
while (@monsters) {
  no warnings 'uninitialized';  # if the last element is empty just shut up about it
  my ($x, $y) = splice @monsters, 0, 2;
  say "1: $x   2: $y";
}

## The point is that this is a pretty simple thing to want to do,
## but it takes a bit of thought (in contrast to raku,
## where it's as trivial as looping over one element at a time).


__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2020 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
