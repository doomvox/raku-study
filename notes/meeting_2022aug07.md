- [meeting notes August 07, 2022](#orgcddc9cb)
  - [the raku study group](#org2ba2347)
  - [current topics](#org30fa78c)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#org6ae7e91)
    - [raku for data science  (one for next time)](#org7dc021d)
    - [rob ransbottom:](#orgfe705b3)
    - [weekly challenge](#orgbe2bb21)
    - [negation with junctions goes outside the junction](#org07175b7)
    - [william michels, corrupt json handling (maybe next week)](#org484ad61)
  - [earlier topics](#org8f268aa)
    - [regex feature: control what's captured with <( &#x2026; )>](#org2e5221d)
  - [announcements](#orgeb69e37)
    - [August 13th & 14th: online raku conference](#org1f6584e)
    - [August 21st: the next raku study group meeting&#x2026; but I might not make it.](#org17e95ec)


<a id="orgcddc9cb"></a>

# meeting notes August 07, 2022


<a id="org2ba2347"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="org30fa78c"></a>

## current topics


<a id="org6ae7e91"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together


<a id="org7dc021d"></a>

### raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgfe705b3"></a>

### rob ransbottom:

1.  little things

2.  and why did they do this?


<a id="orgbe2bb21"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="org07175b7"></a>

### negation with junctions goes outside the junction

1.  .none %% 2 vs  .all  !%% 2

2.  an issue marton cares about: gave us links to discussions


<a id="org484ad61"></a>

### william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org8f268aa"></a>

## earlier topics


<a id="org2e5221d"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="orgeb69e37"></a>

## announcements


<a id="org1f6584e"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org17e95ec"></a>

### August 21st: the next raku study group meeting&#x2026; but I might not make it.
