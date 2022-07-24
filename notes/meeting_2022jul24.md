- [meeting notes July 24, 2022](#org0bc9437)
  - [the raku study group](#orgec30cdf)
  - [current topics](#org83c5a6b)
    - [make/made](#orga691643)
    - [gather for is a block like the for block, gather do](#org16547bb)
    - [william michels stackexchange responses](#orgad90283)
    - [bruce gray weekly challenge](#org1b82e1e)
  - [earlier topics](#orgcf7e6e8)
    - [regex feature: control what's captured with <( &#x2026; )>](#org780f903)
  - [announcements](#orgfef54d9)
    - [August 7th: next raku study group meeting](#org7c72e59)
    - [August 13th & 14th: online raku conference](#org4e4706a)


<a id="org0bc9437"></a>

# meeting notes July 24, 2022


<a id="orgec30cdf"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="org83c5a6b"></a>

## current topics


<a id="orga691643"></a>

### make/made

1.  grammars again


<a id="org16547bb"></a>

### gather for is a block like the for block, gather do

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="orgad90283"></a>

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


<a id="org1b82e1e"></a>

### bruce gray weekly challenge


<a id="orgcf7e6e8"></a>

## earlier topics


<a id="org780f903"></a>

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


<a id="orgfef54d9"></a>

## announcements


<a id="org7c72e59"></a>

### August 7th: next raku study group meeting


<a id="org4e4706a"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
