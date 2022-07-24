- [meeting notes July 24, 2022](#org73b82aa)
  - [the raku study group](#org0c46af8)
  - [current topics](#org5de6a0e)
    - [make/made](#org383458a)
    - [gather/take](#org852e647)
    - [william michels stackexchange responses](#org218f5b8)
    - [bruce gray weekly challenge](#org6a9f927)
    - [initialize attributes in subclass](#orga1cb0f0)
  - [earlier topics](#org193ada1)
    - [regex feature: control what's captured with <( &#x2026; )>](#org61203d8)
  - [announcements](#orgbf90eb7)
    - [August 7th: next raku study group meeting](#org4b83fb3)
    - [August 13th & 14th: online raku conference](#org80c3787)


<a id="org73b82aa"></a>

# meeting notes July 24, 2022


<a id="org0c46af8"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="org5de6a0e"></a>

## current topics


<a id="org383458a"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="org852e647"></a>

### gather/take

1.  for is a block like the for block, gather do

2.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="org218f5b8"></a>

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


<a id="org6a9f927"></a>

### bruce gray weekly challenge


<a id="orga1cb0f0"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="org193ada1"></a>

## earlier topics


<a id="org61203d8"></a>

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


<a id="orgbf90eb7"></a>

## announcements


<a id="org4b83fb3"></a>

### August 7th: next raku study group meeting


<a id="org80c3787"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
