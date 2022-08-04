- [meeting notes August 07, 2022](#org111722a)
  - [the raku study group](#org0c9027d)
  - [current topics](#org357b790)
    - [make/made](#org9c9f977)
    - [gather/take](#org9b37811)
    - [jonathan worthington: } as a statement terminator sans semicolon](#org33c23fe)
    - [william michels stackexchange responses](#org9b464ac)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#org2efb967)
    - [initialize attributes in subclass](#orgdc3421d)
  - [earlier topics](#org673f977)
    - [regex feature: control what's captured with <( &#x2026; )>](#org35fae9f)
  - [announcements](#orgc9aa36b)
    - [August 7th: next raku study group meeting](#org0fabdc5)
    - [August 13th & 14th: online raku conference](#orgf688a49)


<a id="org111722a"></a>

# meeting notes August 07, 2022


<a id="org0c9027d"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="org357b790"></a>

## current topics


<a id="org9c9f977"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="org9b37811"></a>

### gather/take

1.  gather for idioms, any "do" is ignored


<a id="org33c23fe"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="org9b464ac"></a>

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


<a id="org2efb967"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>

2.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-174/bruce-gray/raku>


<a id="orgdc3421d"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="org673f977"></a>

## earlier topics


<a id="org35fae9f"></a>

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


<a id="orgc9aa36b"></a>

## announcements


<a id="org0fabdc5"></a>

### August 7th: next raku study group meeting


<a id="orgf688a49"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
