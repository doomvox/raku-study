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

  # But this idiom creates an array of multiple any junctions
  # with single values, so they'd behave just like the individual
  # values themselves:
  my $values = < A B C >;
  my $junction2 = $values>>.any;
  say $junction2;
  # (any(A) any(B) any(C))
}

{  
  my $junction = any( 'a', 'b', 'c' );

  ## junctions continue to surprise me:
  my $char = 'b';
  say $char ~~ $junction; # True
  say $char eq $junction; # any(False, True, False)

  $char = 'e';
  say $char ~~ $junction; # False
  say $char eq $junction; # any(False, False, False)

  my $ret1 = "b" eq $junction; # any(False, True, False)  => True 
  my $ret2 = "c" eq $junction; # any(False, False, False) => False
  say so $ret1;  # False (??) expected a True.
  say so $ret2;

  if any(False, True, False) { say "yup, truthiness confirmed"; } else { say "el nope, kinda falsie"; }
  # yup, truthiness confirmed

  if $char eq $junction { say "yup, truthiness confirmed"; } else { say "el nope, kinda falsie"; }


  #
  # I would've thought that there'd be no difference there
  # The smartmatch checks that it's comparing string types,
  # and does something like an eq on them, right?

  # But then, there are other cases where junction-in,
  # junction-out is the only thing that makes sense:
  say $junction ~ 'z';
  # any(az, bz, cz)

}
