#!/home/doom/End/Cave/Raku/bin/raku_gh
##   that's a recent build from github: v2026.04-47-g386eb023d

# #!/usr/bin/env raku

# This doesn't seem to be necessary for :hammer:
#   use v6.e.PREVIEW;

## Making a stab at flat documentation:

# Flatenning operations reduce the depth of a data structure while preserving the values.
# For example, Raku's .flat method can take a nested list of list and return all the values 
# in one list:

  say (((1, 3), 7), 9).flat; # OUTPUT: (1 3 7 9)

# A sublist could be protected from flattening by making it itemized ((link)):

  say (($(1, 3), 7), 9).flat; # OUTPUT: ((1 3) 7 9)

# And by default .flat does not break into containers ((link)), so turning a sublist into an array
# (note the square brackets: []) shields it's individual elements from flattening:

  say ([(1, 3), 7], 9).flat; # OUTPUT: ((1 3) 7 9)

# More aggressive flattening is available (since version ___) that
# does not ignore containers, by using .flat with the :hammer adverb:

  say ([(1, 3), 7], 9).flat(:hammer); # OUTPUT: (1 3 7 9)

# When using the :hammer adverb, you can also specify a numeric limit for the depth to which you want to flatten:

# << steal example from *.t? >>
  say "===";

  my @a = 1,[2,[3,[4,5]]];
  my $hammered := (1,2,3,4,5);

  say @a.flat(:hammer); # (1 2 3 4 5)

  say @a.flat(0, :hammer); # (1 [2 [3 [4 5]]])
  say @a.flat(1, :hammer); # (1 2 [3 [4 5]])
  say @a.flat(2, :hammer); # (1 2 3 [4 5])
  say @a.flat(3, :hammer); # (1 2 3 4 5)

  say "---";


  say (1,(2,(3,(4,5)))).flat(1); # OUTPUT: (1 2 (3 (4 5)))
  say (1,(2,(3,(4,5)))).flat(2); # OUTPUT: (1 2 3 (4 5))


  say "===";

# is-deeply @a.flat(:hammer), $hammered, 'array.flat(:hammer)';
# is-deeply @a.flat(1, :hammer), (1, 2, [3, [4, 5]]),
#   'array.flat(1, :hammer)';
# is-deeply @a.flat(2, :hammer), (1, 2, 3, [4, 5]),
#   'array.flat(2, :hammer)';
# is-deeply @a.flat(3, :hammer), (1,2,3,4,5),
#   'array.flat(3, :hammer)';
# is-deeply @a.flat(4, :hammer), (1,2,3,4,5),
#   'array.flat(4, :hammer)';




# There are two variant forms of flat that make different exceptions in 
# precisely what gets flattened.  

# The default .flat (without the :hammer adverb) does not break into
# containers or itemized lists, it preserves them as values to be passed
# through. 

#   << check, work up examples >>

# The more extreme flattening operation .flat(:hammer) acts on
# containers and will flatten out anything that is Iterable (which
# includes Arrays, Hashes, etc.)  Note that this does not include Pairs,
# which means, for example that a Hash will flatten out into a list of
# Pairs.

#   <<example>>    

# Note: If instead you wanted to descend into Pairs and extract their
# values (discarding the keys) you would need to do something else,
# e.g. using deepmap:

#   <<example>>
