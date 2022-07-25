- [meeting notes July 24, 2022](#org0443046)
  - [the raku study group](#orgc5544c5)
  - [current topics](#org8d3e446)
    - [make/made](#org0807ad6)
    - [gather/take](#org194cebf)
    - [jonathan worthington: } as a statement terminator sans semicolon](#orgc49d269)
    - [william michels stackexchange responses](#org6cdca97)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#org9bd2761)
    - [initialize attributes in subclass](#orge0a72fa)
  - [earlier topics](#orgacd146f)
    - [regex feature: control what's captured with <( &#x2026; )>](#org11ca2da)
  - [announcements](#orga53fd4b)
    - [August 7th: next raku study group meeting](#org7e4f75e)
    - [August 13th & 14th: online raku conference](#org076e14d)
    - [looking ahead: need to skip August 24th, will be August 31st](#org894bc87)


<a id="org0443046"></a>

# meeting notes July 24, 2022


<a id="orgc5544c5"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="org8d3e446"></a>

## current topics


<a id="org0807ad6"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="org194cebf"></a>

### gather/take

1.  for is a block like the for block, gather do


<a id="orgc49d269"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="org6cdca97"></a>

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


<a id="org9bd2761"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>

2.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-174/bruce-gray/raku>


<a id="orge0a72fa"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="orgacd146f"></a>

## earlier topics


<a id="org11ca2da"></a>

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


<a id="orga53fd4b"></a>

## announcements


<a id="org7e4f75e"></a>

### August 7th: next raku study group meeting


<a id="org076e14d"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>


<a id="org894bc87"></a>

### looking ahead: need to skip August 24th, will be August 31st
