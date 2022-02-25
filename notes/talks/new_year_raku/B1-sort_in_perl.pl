#!/usr/bin/env perl
#                                      2022/01/05 14:39:59

use 5.10.0;
use warnings;
use strict;

=head1 DESCRIPTION

B1-sort_in_perl.pl shows a basic perl sort command.

Several points:
  o  sort and join both take two args, but join gets a comma and sort doesn't

  o  the curly braces do contain perl code, but it only works with sort

  o  passing two args as $a and $b is special-cased
     o   not easy to write your own code that  imitates this (there's no prototype for it)
     o   things like List::MoreUtils pairwise are sneaky/sleazy 
         (they reach up the callstack one level)

  o  And by the way, the need to do a join on arrays when printing is silly

=cut

my @monsters = qw( godzilla blob tingler garuda horta fenacrone wormface oogie-boogie kaido );

my @orderly_monsters = sort {$a cmp $b} @monsters;  ## two args, but no comma between
say join " ", @orderly_monsters;                    ## unlike join, which needs a comma
# blob fenacrone garuda godzilla horta kaido oogie-boogie tingler wormface

# It's perl code inside the block: let's spy on sort as it works
my @orderly_monsters_too = sort { my $c = $a cmp $b; say "$c\t $a & $b"; $c } @monsters;
say join " ", @orderly_monsters_too;
# 1	 godzilla & blob
# 1	 tingler & garuda
# 1	 horta & fenacrone
#  ...
# -1	 kaido & tingler
# 1	 tingler & oogie-boogie
# -1	 tingler & wormface
# blob fenacrone garuda godzilla horta kaido oogie-boogie tingler wormface

## by the way, this works also, just as with Raku:
my $comparator = sub { my $c = $a cmp $b; say "$c\t $a & $b"; $c };
my @orderly_monsters_foah = sort $comparator @monsters;
say join " ", @orderly_monsters_foah;


{
  ## But this DOESN'T WORK:
    $comparator->("a", "b");
  ## passing to $a and $b only works with sort
}


__END__

=head1 NOTES

printf gets you neater output, but obscures the code too much:

   my @orderly_monsters_too = sort { my $c = $a cmp $b; printf "%-15s %-15s => %3d\n", $a, $b, $c; $c } @monsters;


=head1 AUTHOR

Joseph Brenner, E<lt>doom@fandango.obsidianrook.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
