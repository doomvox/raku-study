- [meeting notes July 24, 2022](#org71cedf8)
  - [the raku study group](#orgecd50b6)
  - [current topics](#org1420102)
    - [make/made](#org407d642)
    - [gather/take](#org0de7b9e)
    - [jonathan worthington: } as a statement terminator sans semicolon](#orga5d9349)
    - [william michels stackexchange responses](#org5de9636)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#orgb0f4f56)
    - [initialize attributes in subclass](#org069799b)
  - [earlier topics](#orgc6f8085)
    - [regex feature: control what's captured with <( &#x2026; )>](#org7d14bf9)
  - [announcements](#org5030abd)
    - [August 7th: next raku study group meeting](#orgfaa8115)
    - [August 13th & 14th: online raku conference](#org01281e4)


<a id="org71cedf8"></a>

# meeting notes July 24, 2022


<a id="orgecd50b6"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="org1420102"></a>

## current topics


<a id="org407d642"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="org0de7b9e"></a>

### gather/take

1.  gather for idioms, any "do" is ignored


<a id="orga5d9349"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="org5de9636"></a>

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


<a id="orgb0f4f56"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>

2.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-174/bruce-gray/raku>


<a id="org069799b"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="orgc6f8085"></a>

## earlier topics


<a id="org7d14bf9"></a>

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


<a id="org5030abd"></a>

## announcements


<a id="orgfaa8115"></a>

### August 7th: next raku study group meeting


<a id="org01281e4"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
