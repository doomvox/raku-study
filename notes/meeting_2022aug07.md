- [meeting notes August 07, 2022](#org5278441)
  - [the raku study group](#orgdd8d476)
  - [current topics](#orgbf72a2b)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#orgf2e4e27)
    - [raku for data science](#org87e7758)
    - [rob ransbottom:](#orga815052)
    - [weekly challenge](#orge5412ae)
    - [negation with junctions goes outside the junction](#orgcef86b1)
    - [william michels, corrupt json handling](#org6319569)
  - [earlier topics](#orge2f98c3)
    - [regex feature: control what's captured with <( &#x2026; )>](#org4f866c2)
  - [announcements](#org2b97e70)
    - [August 13th & 14th: online raku conference](#orgd1f8448)
    - [August 21st: the next raku study group meeting&#x2026; but I might not make it.](#org95edfce)


<a id="org5278441"></a>

# meeting notes August 07, 2022


<a id="orgdd8d476"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="orgbf72a2b"></a>

## current topics


<a id="orgf2e4e27"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together


<a id="org87e7758"></a>

### raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orga815052"></a>

### rob ransbottom:

1.  little things

2.  and why did they do this?


<a id="orge5412ae"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="orgcef86b1"></a>

### negation with junctions goes outside the junction

1.  .none %% 2 vs  .all  !%% 2

2.  an issue marton cares about: gave us links to discussions


<a id="org6319569"></a>

### william michels, corrupt json handling

<https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orge2f98c3"></a>

## earlier topics


<a id="org4f866c2"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org2b97e70"></a>

## announcements


<a id="orgd1f8448"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org95edfce"></a>

### August 21st: the next raku study group meeting&#x2026; but I might not make it.
