- [What's good about Raku?](#org48ef341)
  - [saner numerics built-in](#org3002f5a)
    - [big integers](#org0c64f60)
    - [rational numbers](#orgdb3a3d6)
  - [custom parsing via grammars and regexs](#orgc81e1d8)
    - [regexps redesigned and cleaned up](#org189912a)
    - [flexible pattern decomposition via grammars](#org08911d0)
    - [raku uses these grammars to parse itself: they **have** to work well](#org4476f92)
  - [very good object system (built-in, of course)](#org3352a3e)
    - [style similar to moose/moo](#orge327e54)
    - [raku's design uses this extensively: "objects all the way down"](#orgfd4f117)
  - [type system using the object system, also built-in](#orgfb5e38e)
    - [strong typing is possible (though optional)](#org9af6463)
    - [very useful for multidispatch](#orgb613afb)
  - [cap (concurrency, asynchrony, parallelism)](#org40741cd)
    - [very convenient: might be the easiest to use of any language](#org6fdb06f)
  - [unicode](#orgf709891)
    - [fully supported: characters are what you think of as characters (glyphs)](#orgb2ac196)
    - [speaks utf-8 by default (unlike perl)](#org0ffe71b)
- [Killer app?](#org755700d)
  - [no particular "killer app" has emerged](#orga1b16df)
    - [but when perl5 was released no one expected it would be critical for](#org33f79bb)
    - [the design goal is to be useful for everything](#org07a0082)


<a id="org48ef341"></a>

# What's good about Raku?


<a id="org3002f5a"></a>

## saner numerics built-in


<a id="org0c64f60"></a>

### big integers


<a id="orgdb3a3d6"></a>

### rational numbers

1.  reduce chances of floating-point weirdness


<a id="orgc81e1d8"></a>

## custom parsing via grammars and regexs


<a id="org189912a"></a>

### regexps redesigned and cleaned up


<a id="org08911d0"></a>

### flexible pattern decomposition via grammars

1.  better than perl's interpolated qrs


<a id="org4476f92"></a>

### raku uses these grammars to parse itself: they **have** to work well


<a id="org3352a3e"></a>

## very good object system (built-in, of course)


<a id="orge327e54"></a>

### style similar to moose/moo


<a id="orgfd4f117"></a>

### raku's design uses this extensively: "objects all the way down"

1.  again: it **has** to perform well


<a id="orgfb5e38e"></a>

## type system using the object system, also built-in


<a id="org9af6463"></a>

### strong typing is possible (though optional)


<a id="orgb613afb"></a>

### very useful for multidispatch


<a id="org40741cd"></a>

## cap (concurrency, asynchrony, parallelism)


<a id="org6fdb06f"></a>

### very convenient: might be the easiest to use of any language


<a id="orgf709891"></a>

## unicode


<a id="orgb2ac196"></a>

### fully supported: characters are what you think of as characters (glyphs)


<a id="org0ffe71b"></a>

### speaks utf-8 by default (unlike perl)


<a id="org755700d"></a>

# Killer app?


<a id="orga1b16df"></a>

## no particular "killer app" has emerged


<a id="org33f79bb"></a>

### but when perl5 was released no one expected it would be critical for

1.  web 1.0

2.  human genome project


<a id="org07a0082"></a>

### the design goal is to be useful for everything

1.  contender for the "100 year language"
