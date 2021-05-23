#!/usr/bin/env perl6
# 
# file_find_with_junction_as_exclude-bills_attempt.raku            23 May 2021 

use v6;
use File::Find;

## create some files to find
my $HOME = %*ENV{'HOME'};
say $HOME;
my $loc = "$HOME/tmp/monster_island";
mkdir( $loc );
chdir( $loc );
my @monsters = < godzilla mothera rhodan >;
for @monsters -> $name {
    $name.IO.spurt("The $name attacks!");
}

{ # william michaels playing with "$junction>>.any"
    my $exclude3 = ( rx/<|w>mothera$/, rx/<|w>camel$/ );
    my @files3 = find( dir => $loc, type => 'file', exclude => $exclude3>>.any );
    say "Exclude3: ", @files3;
    # his output:
    # Exclude3: ["/Users/me/test_folder/.DS_Store".IO "/Users/me/test_folder/godzilla".IO "/Users/me/test_folder/mothera".IO "/Users/me/test_folder/rhodan".IO]
    #
    # my output:
    # Exclude3: ["/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/mothera".IO "/home/doom/tmp/monster_island/rhodan".IO]
}

## I wasn't really sure what bill was thinking there, because my
## impression was that junctions, by design aren't supposed to be
## treated as compound data structures, they're a *single* thing
## but with multiple values that co-exist with each other in "superposition"

say "---";
{
  my $junction = any( 'a', 'b', 'c' );
  say $junction.elems; # any(1, 1, 1)

  # But then, this actually works:
  $junction>>.say;
  # a
  # b
  # c

  my $values = < A B C >;
  my $junction2 = $values>>.any;
  say $junction2;

  
  my $char = 'b';
  say $char ~~ $junction; # True
  say $char eq $junction; # any(False, True, False)

  $char = 'e';
  say $char ~~ $junction; # False
  say $char eq $junction; # any(False, False, False)

  say $junction ~ 'z';
  # any(az, bz, cz)



}
