- [meeting notes July 24, 2022](#org911825c)
  - [the raku study group](#org07376dd)
  - [current topics](#orgd8082cb)
    - [make/made](#org86988c1)
    - [gather/take](#orgbab7e69)
    - [jonathan worthington: } as a statement terminator sans semicolon](#orgf843e43)
    - [william michels stackexchange responses](#orgbf2f03c)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#org646712f)
    - [initialize attributes in subclass](#org449a46b)
  - [earlier topics](#org8284613)
    - [regex feature: control what's captured with <( &#x2026; )>](#org6f9da1b)
  - [announcements](#org4bf3b17)
    - [August 7th: next raku study group meeting](#org0cdae35)
    - [August 13th & 14th: online raku conference](#orge321f4e)


<a id="org911825c"></a>

# meeting notes July 24, 2022


<a id="org07376dd"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="orgd8082cb"></a>

## current topics


<a id="org86988c1"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="orgbab7e69"></a>

### gather/take

1.  for is a block like the for block, gather do


<a id="orgf843e43"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="orgbf2f03c"></a>

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


<a id="org646712f"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>

2.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-174/bruce-gray/raku>


<a id="org449a46b"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="org8284613"></a>

## earlier topics


<a id="org6f9da1b"></a>

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


<a id="org4bf3b17"></a>

## announcements


<a id="org0cdae35"></a>

### August 7th: next raku study group meeting


<a id="orge321f4e"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
