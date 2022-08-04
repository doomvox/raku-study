- [meeting notes August 07, 2022](#org32eb655)
  - [the raku study group](#orgd49efdb)
  - [current topics](#org5726a28)
    - [make/made](#org781d7ed)
    - [gather/take](#orgc1f1e41)
    - [jonathan worthington: } as a statement terminator sans semicolon](#org7282952)
    - [william michels stackexchange responses](#org4fa8f4e)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#org9a14e32)
    - [initialize attributes in subclass](#org457eddb)
  - [earlier topics](#org159fe26)
    - [regex feature: control what's captured with <( &#x2026; )>](#org0cb5553)
  - [announcements](#orgb7a2cc0)
    - [August 7th: next raku study group meeting](#orgf7ee84a)
    - [August 13th & 14th: online raku conference](#org89eafdc)


<a id="org32eb655"></a>

# meeting notes August 07, 2022


<a id="orgd49efdb"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="org5726a28"></a>

## current topics


<a id="org781d7ed"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="orgc1f1e41"></a>

### gather/take

1.  gather for idioms, any "do" is ignored


<a id="org7282952"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="org4fa8f4e"></a>

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


<a id="org9a14e32"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>

2.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-174/bruce-gray/raku>


<a id="org457eddb"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="org159fe26"></a>

## earlier topics


<a id="org0cb5553"></a>

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


<a id="orgb7a2cc0"></a>

## announcements


<a id="orgf7ee84a"></a>

### August 7th: next raku study group meeting


<a id="org89eafdc"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
