- [meeting notes August 07, 2022](#org552df55)
  - [the raku study group](#orgff8ab3e)
  - [current topics](#org82eb597)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#orgd88a98b)
    - [raku for data science  (one for next time)](#orgac38497)
    - [rob ransbottom:](#orge370f76)
    - [weekly challenge](#org99743e4)
    - [negation with junctions goes outside the junction](#org2d81fb5)
    - [william michels, corrupt json handling (maybe next week)](#org1414ab1)
  - [earlier topics](#org65a7f98)
    - [regex feature: control what's captured with <( &#x2026; )>](#org43f14c5)
  - [announcements](#orge567515)
    - [August 13th & 14th: online raku conference](#orgd3e8c49)
    - [August 21st: the next raku study group meeting&#x2026;](#org5abf0e2)


<a id="org552df55"></a>

# meeting notes August 07, 2022


<a id="orgff8ab3e"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="org82eb597"></a>

## current topics


<a id="orgd88a98b"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together


<a id="orgac38497"></a>

### TODO raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orge370f76"></a>

### rob ransbottom:

1.  little things

2.  and why did they do this?


<a id="org99743e4"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="org2d81fb5"></a>

### negation with junctions goes outside the junction

1.  .none %% 2 vs  .all  !%% 2

2.  an issue marton cares about: gave us links to discussions


<a id="org1414ab1"></a>

### TODO william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org65a7f98"></a>

## earlier topics


<a id="org43f14c5"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="orge567515"></a>

## announcements


<a id="orgd3e8c49"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org5abf0e2"></a>

### August 21st: the next raku study group meeting&#x2026;

1.  If I can't make it, feel free to show up and do what you like with the meeting&#x2026;
