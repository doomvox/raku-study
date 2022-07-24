- [meeting notes July 24, 2022](#org3807f03)
  - [the raku study group](#org7f07dbb)
  - [current topics](#org3900171)
    - [make/made](#org8438e9c)
    - [gather/take](#org367ae77)
    - [jonathan worthington: } as a statement terminator sans semicolon](#org4ef381f)
    - [william michels stackexchange responses](#org535dfde)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#orgc11ce3d)
    - [initialize attributes in subclass](#orgb1448af)
  - [earlier topics](#orgbd1ad6a)
    - [regex feature: control what's captured with <( &#x2026; )>](#org1ce2e3d)
  - [announcements](#org142ed06)
    - [August 7th: next raku study group meeting](#org3d87538)
    - [August 13th & 14th: online raku conference](#org37143a1)


<a id="org3807f03"></a>

# meeting notes July 24, 2022


<a id="org7f07dbb"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="org3900171"></a>

## current topics


<a id="org8438e9c"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="org367ae77"></a>

### gather/take

1.  for is a block like the for block, gather do


<a id="org4ef381f"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="org535dfde"></a>

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


<a id="orgc11ce3d"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>


<a id="orgb1448af"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="orgbd1ad6a"></a>

## earlier topics


<a id="org1ce2e3d"></a>

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


<a id="org142ed06"></a>

## announcements


<a id="org3d87538"></a>

### August 7th: next raku study group meeting


<a id="org37143a1"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
