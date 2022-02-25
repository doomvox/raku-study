- [What's good about Raku?](#org5aabe15)
  - [saner numerics built-in](#org78720a2)
    - [big integers](#org1ea86d7)
    - [rational numbers](#orgf335def)
  - [custom parsing via grammars and regexs](#orgeed1507)
    - [regexps redesigned and cleaned up](#org37da870)
    - [flexible pattern decomposition via grammars](#org0c6e058)
    - [raku uses these grammars to parse itself: they **have** to work well](#org692b37f)
  - [very good object system (built-in, of course)](#orgc42fb2a)
    - [style similar to moose/moo](#orge6a9224)
    - [raku's design uses this extensively: "objects all the way down"](#orgb94e996)
  - [type system using the object system, also built-in](#org1459983)
    - [strong typing is possible (though optional)](#orgb807409)
    - [very useful for multidispatch](#orgcda1dcd)
  - [cap (concurrency, asynchrony, parallelism)](#org788c3ed)
    - [very convenient: might be the easiest to use of any language](#org9459cd2)
  - [unicode](#org36b95fe)
    - [fully supported: characters are what you think of as characters (glyphs)](#org2b275d7)
    - [speaks utf-8 by default (unlike perl)](#org2d3f167)
- [Killer app?](#org5767644)
  - [no particular "killer app" has emerged](#orgee99b37)
    - [but when perl5 was released no one expected it would be critical for:](#org7d70808)
    - [the design goal is to be useful for everything](#org1f0b0e1)


<a id="org5aabe15"></a>

# What's good about Raku?


<a id="org78720a2"></a>

## saner numerics built-in


<a id="org1ea86d7"></a>

### big integers


<a id="orgf335def"></a>

### rational numbers

1.  reduce chances of floating-point weirdness


<a id="orgeed1507"></a>

## custom parsing via grammars and regexs


<a id="org37da870"></a>

### regexps redesigned and cleaned up


<a id="org0c6e058"></a>

### flexible pattern decomposition via grammars

1.  better than perl's interpolated qrs


<a id="org692b37f"></a>

### raku uses these grammars to parse itself: they **have** to work well


<a id="orgc42fb2a"></a>

## very good object system (built-in, of course)


<a id="orge6a9224"></a>

### style similar to moose/moo


<a id="orgb94e996"></a>

### raku's design uses this extensively: "objects all the way down"

1.  again: it **has** to perform well


<a id="org1459983"></a>

## type system using the object system, also built-in


<a id="orgb807409"></a>

### strong typing is possible (though optional)


<a id="orgcda1dcd"></a>

### very useful for multidispatch


<a id="org788c3ed"></a>

## cap (concurrency, asynchrony, parallelism)


<a id="org9459cd2"></a>

### very convenient: might be the easiest to use of any language


<a id="org36b95fe"></a>

## unicode


<a id="org2b275d7"></a>

### fully supported: characters are what you think of as characters (glyphs)


<a id="org2d3f167"></a>

### speaks utf-8 by default (unlike perl)


<a id="org5767644"></a>

# Killer app?


<a id="orgee99b37"></a>

## no particular "killer app" has emerged


<a id="org7d70808"></a>

### but when perl5 was released no one expected it would be critical for:

1.  web 1.0

2.  human genome project


<a id="org1f0b0e1"></a>

### the design goal is to be useful for everything

1.  contender for the "100 year language"
