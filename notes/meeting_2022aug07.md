- [meeting notes August 07, 2022](#orgd88d156)
  - [the raku study group](#org2beb1d5)
  - [current topics](#org1029111)
    - [make/made](#org4bf038f)
    - [gather/take](#orgeb6141e)
    - [jonathan worthington: } as a statement terminator sans semicolon](#org50d767b)
    - [william michels stackexchange responses](#org5cf100e)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#orge63d43a)
    - [initialize attributes in subclass](#org1238560)
  - [earlier topics](#org8d2d1c0)
    - [regex feature: control what's captured with <( &#x2026; )>](#orgd2abc8d)
  - [announcements](#org63d808b)
    - [August 7th: next raku study group meeting](#org5a59c0c)
    - [August 13th & 14th: online raku conference](#org9de3234)


<a id="orgd88d156"></a>

# meeting notes August 07, 2022


<a id="org2beb1d5"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="org1029111"></a>

## current topics


<a id="org4bf038f"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="orgeb6141e"></a>

### gather/take

1.  gather for idioms, any "do" is ignored


<a id="org50d767b"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="org5cf100e"></a>

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


<a id="orge63d43a"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>

2.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-174/bruce-gray/raku>


<a id="org1238560"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="org8d2d1c0"></a>

## earlier topics


<a id="orgd2abc8d"></a>

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


<a id="org63d808b"></a>

## announcements


<a id="org5a59c0c"></a>

### August 7th: next raku study group meeting


<a id="org9de3234"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
