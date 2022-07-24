- [meeting notes July 24, 2022](#org607b384)
  - [the raku study group](#org677519b)
  - [current topics](#org41b6c4c)
    - [make/made](#org3ff1d3f)
    - [gather for is a block like the for block, gather do](#orgc93e034)
    - [william michels stackexchange responses](#orge27eeb0)
    - [bruce gray weekly challenge](#orgc55bd26)
    - [initialize attributes in subclass](#org3cca02b)
  - [earlier topics](#org8c87578)
    - [regex feature: control what's captured with <( &#x2026; )>](#org7741ab6)
  - [announcements](#org3d289b8)
    - [August 7th: next raku study group meeting](#org0346f35)
    - [August 13th & 14th: online raku conference](#orgf1226d9)


<a id="org607b384"></a>

# meeting notes July 24, 2022


<a id="org677519b"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="org41b6c4c"></a>

## current topics


<a id="org3ff1d3f"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="orgc93e034"></a>

### gather for is a block like the for block, gather do

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="orge27eeb0"></a>

### william michels stackexchange responses

1.  <https://unix.stackexchange.com/a/710954/227738>

    1.  matrix math

2.  <https://unix.stackexchange.com/a/709981/227738>

    1.  min and max

3.  <https://unix.stackexchange.com/a/711073/227738>

4.  <https://unix.stackexchange.com/a/711047/227738>

5.  <https://unix.stackexchange.com/a/711023/227738>

6.  <https://unix.stackexchange.com/a/710771/227738>

7.  <https://unix.stackexchange.com/a/710771/227738>

8.  <https://unix.stackexchange.com/a/710724/227738>

9.  <https://unix.stackexchange.com/a/710624/227738>

10. <https://unix.stackexchange.com/a/710604/227738>

11. <https://unix.stackexchange.com/a/710345/227738>


<a id="orgc55bd26"></a>

### bruce gray weekly challenge


<a id="org3cca02b"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="org8c87578"></a>

## earlier topics


<a id="org7741ab6"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>

1.  the double-asterix non-flattening slurpy array signature

    1.  so the single asterix is flattening?
    
    2.  TODO investigate further, for next time

2.  rob ramsbottom

    1.  rob opened a github issue, no action:
    
        1.  <https://github.com/rakudo/rakudo/issues/4945>
        
        2.  TODO add some comments, at the very least confirm the behavior.


<a id="org3d289b8"></a>

## announcements


<a id="org0346f35"></a>

### August 7th: next raku study group meeting


<a id="orgf1226d9"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
