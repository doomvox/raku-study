- [meeting notes July 24, 2022](#orgc4ce77c)
  - [the raku study group](#org8910c15)
  - [current topics](#org67dbe8a)
    - [make/made](#org643d9f5)
    - [gather/take](#org2befb4a)
    - [jonathan worthington: } as a statement terminator sans semicolon](#orgf73c191)
    - [william michels stackexchange responses](#org8e5a5ab)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#orgf5a151c)
    - [initialize attributes in subclass](#org21ef6f4)
  - [earlier topics](#org1fd58d6)
    - [regex feature: control what's captured with <( &#x2026; )>](#org5f8be21)
  - [announcements](#orgee6b0c7)
    - [August 7th: next raku study group meeting](#orgbdf63f9)
    - [August 13th & 14th: online raku conference](#org3fcb025)
    - [looking ahead: need to skip August 24th, will be August 31st](#org769d29a)


<a id="orgc4ce77c"></a>

# meeting notes July 24, 2022


<a id="org8910c15"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="org67dbe8a"></a>

## current topics


<a id="org643d9f5"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="org2befb4a"></a>

### gather/take

1.  for is a block like the for block, gather do


<a id="orgf73c191"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="org8e5a5ab"></a>

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


<a id="orgf5a151c"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>

2.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-174/bruce-gray/raku>


<a id="org21ef6f4"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="org1fd58d6"></a>

## earlier topics


<a id="org5f8be21"></a>

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


<a id="orgee6b0c7"></a>

## announcements


<a id="orgbdf63f9"></a>

### August 7th: next raku study group meeting


<a id="org3fcb025"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>


<a id="org769d29a"></a>

### looking ahead: need to skip August 24th, will be August 31st
