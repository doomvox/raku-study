#!/usr/bin/env raku



A flattening operation acts on some data, removing some structure. and
returning a "flatter" form with values preserved, for example a series
of nested lists becomes a simplified single list of all the values.

  << example, using "flat" >>

There are two variant forms of flat that make different exceptions in 
precisely what gets flattened.  

The default .flat (without the :hammer adverb) does not break into
containers or itemized lists, it preserves them as values to be passed
through. 

  << check, work up examples >>

The more extreme flattening operation .flat(:hammer) acts on
containers and will flatten out anything that is Iterable (which
includes Arrays, Hashes, etc.)  Note that this does not include Pairs,
which means, for example that a Hash will flatten out into a list of
Pairs.

  <<example>>    

Note: If instead you wanted to descend into Pairs and extract their
values (discarding the keys) you would need to do something else,
e.g. using deepmap:

  <<example>>
