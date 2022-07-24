- [meeting notes July 24, 2022](#org60e9363)
  - [the raku study group](#org9e249cc)
  - [current topics](#orgb187e7e)
    - [make/made](#org173e1ba)
    - [gather/take](#orgf74e548)
    - [jonathan worthington: } as a statement terminator sans semicolon](#orgd651bf7)
    - [william michels stackexchange responses](#orgd334d60)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#org52864ba)
    - [initialize attributes in subclass](#org8bb46e8)
  - [earlier topics](#orgaaba872)
    - [regex feature: control what's captured with <( &#x2026; )>](#org70182f5)
  - [announcements](#orgaaa5a45)
    - [August 7th: next raku study group meeting](#orgfdc3d94)
    - [August 13th & 14th: online raku conference](#orgedfb2a6)
    - [looking ahead: need to skip August 24th, will be August 31st](#org7c89a6a)


<a id="org60e9363"></a>

# meeting notes July 24, 2022


<a id="org9e249cc"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="orgb187e7e"></a>

## current topics


<a id="org173e1ba"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="orgf74e548"></a>

### gather/take

1.  for is a block like the for block, gather do


<a id="orgd651bf7"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="orgd334d60"></a>

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


<a id="org52864ba"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>

2.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-174/bruce-gray/raku>


<a id="org8bb46e8"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="orgaaba872"></a>

## earlier topics


<a id="org70182f5"></a>

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


<a id="orgaaa5a45"></a>

## announcements


<a id="orgfdc3d94"></a>

### August 7th: next raku study group meeting


<a id="orgedfb2a6"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>


<a id="org7c89a6a"></a>

### looking ahead: need to skip August 24th, will be August 31st
