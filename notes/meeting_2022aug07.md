- [meeting notes August 07, 2022](#org876f4fb)
  - [the raku study group](#orgd9b7a05)
  - [current topics](#org25834f0)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#orgf1c92d6)
    - [raku for data science](#org72e1601)
    - [rob ransbottom:](#org270db12)
    - [weekly challenge](#org92480ea)
    - [negation with junctions goes outside the junction](#orgb2cb3a6)
    - [<https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>](#orge3bf80b)
  - [earlier topics](#org067857e)
    - [regex feature: control what's captured with <( &#x2026; )>](#org41fef02)
  - [announcements](#org8eb4001)
    - [August 13th & 14th: online raku conference](#org5f6519b)
    - [August 21st: the next raku study group meeting&#x2026; but I might not make it.](#org03398cc)


<a id="org876f4fb"></a>

# meeting notes August 07, 2022


<a id="orgd9b7a05"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="org25834f0"></a>

## current topics


<a id="orgf1c92d6"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together


<a id="org72e1601"></a>

### raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org270db12"></a>

### rob ransbottom:

1.  little things

2.  and why did they do this?


<a id="org92480ea"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="orgb2cb3a6"></a>

### negation with junctions goes outside the junction

1.  .none %% 2 vs  .all  !%% 2

2.  an issue marton cares about: gave us links to discussions


<a id="orge3bf80b"></a>

### <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org067857e"></a>

## earlier topics


<a id="org41fef02"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org8eb4001"></a>

## announcements


<a id="org5f6519b"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org03398cc"></a>

### August 21st: the next raku study group meeting&#x2026; but I might not make it.
