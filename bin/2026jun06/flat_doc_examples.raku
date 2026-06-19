#!/home/doom/End/Cave/Raku/bin/raku_gh
##   that's a recent build from github: v2026.04-47-g386eb023d

# #!/usr/bin/env raku

# This doesn't seem to be necessary for :hammer:
#   use v6.e.PREVIEW;

## Making a stab at flat documentation:

# Flattening operations reduce the depth of a data structure while preserving the values.
# For example, Raku's .flat method can take a nested list of list and return all the values 
# in one list:

  say (((1, 3), 7), 9).flat; # OUTPUT: (1 3 7 9)

# A sublist can be protected from flattening by making it itemized ((link)):

  say (($(1, 3), 7), 9).flat; # OUTPUT: ((1 3) 7 9)

# And by default .flat does not descend into containers ((link)), so turning a sublist into an array
# (note the square brackets: []) shields it's individual elements from flattening:

  say ([(1, 3), 7], 9).flat; # OUTPUT: ((1 3) 7 9)

# But more aggressive flattening is available by using the :hammer
# adverb (since version ___) which does not ignore containers:

  say ([(1, 3), 7], 9).flat(:hammer); # OUTPUT: (1 3 7 9)

# You can also specify a numeric limit for the depth to which you want to flatten:
# (( example from lifted from the *.t? ))
  say "===";

  my @a = 1,[2,[3,[4,5]]];
  my $hammered := (1,2,3,4,5);

  say @a.flat(:hammer); # (1 2 3 4 5)

  say @a.flat(0, :hammer); # (1 [2 [3 [4 5]]])
  say @a.flat(1, :hammer); # (1 2 [3 [4 5]])
  say @a.flat(2, :hammer); # (1 2 3 [4 5])
  say @a.flat(3, :hammer); # (1 2 3 4 5)

  say "---";

  ## Actually, can use recursion limit without the :hammer
  say (1,(2,(3,(4,5)))).flat(1); # OUTPUT: (1 2 (3 (4 5)))
  say (1,(2,(3,(4,5)))).flat(2); # OUTPUT: (1 2 3 (4 5))
   
  ## There's a function call form of flat that works much like the
  ## method call form, except that you can't use the recursion limit
  ## with it:
  say flat (1,(2,(3,(4,5)))); # OUTPUT: (1 2 3 4 5)
  say flat 2, (1,(2,(3,(4,5)))); # OUTPUT: (2 1 2 3 4 5)

  say "===";

  ## With :hammer set, flat descends into any Iterable type,
  ## which includes Hash and Map: flat extracts lists of Pairs
  ## from those types.

  ## (( Example ))

  ## Since a Pair is not Iterable, any data structure included as
  ## value of a pair will not be flattened.

  ## (( Example ))

  ## Note that to flatten a Pair, you would need to use an alternate
  ## technique, such as deepmap:

  ## (( Example ))



