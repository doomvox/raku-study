- [meeting notes August 07, 2022](#orga677f78)
  - [the raku study group](#org0717de0)
  - [current topics](#orgc369cc9)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#org176e6d1)
    - [raku for data science  (one for next time)](#org9f815da)
    - [rob ransbottom:](#org04b52b2)
    - [weekly challenge](#orga4583e1)
    - [negation with junctions goes outside the junction](#org2960dc6)
    - [william michels, corrupt json handling (maybe next week)](#org84d1147)
  - [earlier topics](#org509d3d8)
    - [regex feature: control what's captured with <( &#x2026; )>](#org145adb7)
  - [announcements](#orgf8cf2be)
    - [August 13th & 14th: online raku conference](#org8148e4c)
    - [August 21st: the next raku study group meeting&#x2026; but I might not make it.](#orga075b77)


<a id="orga677f78"></a>

# meeting notes August 07, 2022


<a id="org0717de0"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="orgc369cc9"></a>

## current topics


<a id="org176e6d1"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together


<a id="org9f815da"></a>

### TODO raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org04b52b2"></a>

### rob ransbottom:

1.  little things

2.  and why did they do this?


<a id="orga4583e1"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="org2960dc6"></a>

### negation with junctions goes outside the junction

1.  .none %% 2 vs  .all  !%% 2

2.  an issue marton cares about: gave us links to discussions


<a id="org84d1147"></a>

### TODO william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org509d3d8"></a>

## earlier topics


<a id="org145adb7"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="orgf8cf2be"></a>

## announcements


<a id="org8148e4c"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="orga075b77"></a>

### August 21st: the next raku study group meeting&#x2026; but I might not make it.
