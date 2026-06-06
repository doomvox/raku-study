#!/usr/bin/env raku

## Making a stab at flat documentation:

# Flatenning operations reduce the depth of a data structure while preserving the values.
# For example, Raku's .flat method can take a nested list of list and return all the values 
# in one list:


#   << example, using "flat" >>

  say (((1, 3), 7), 9).flat; # OUTPUT: (1 3 7 9)

# A sublist could be protected from flattening by making it itemized (link):

  say (($(1, 3), 7), 9).flat; # OUTPUT: ((1 3) 7 9)



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
