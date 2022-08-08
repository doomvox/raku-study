- [meeting notes August 07, 2022](#org155f281)
  - [the raku study group](#orgc6f47c5)
  - [current topics](#orgc0ea755)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#org2192313)
    - [raku for data science  (one for next time)](#org20f46d0)
    - [rob ransbottom:](#org5962c7f)
    - [weekly challenge](#orgbd095f7)
    - [negation with junctions goes outside the junction](#orga5e962b)
    - [william michels, corrupt json handling (maybe next week)](#orgaf0e902)
  - [earlier topics](#orgc7c023c)
    - [regex feature: control what's captured with <( &#x2026; )>](#org37d22dd)
  - [announcements](#org596b505)
    - [August 13th & 14th: online raku conference](#orgdf79cad)
    - [August 21st: the next raku study group meeting&#x2026;](#org823d288)


<a id="org155f281"></a>

# meeting notes August 07, 2022


<a id="orgc6f47c5"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="orgc0ea755"></a>

## current topics


<a id="org2192313"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together


<a id="org20f46d0"></a>

### TODO raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org5962c7f"></a>

### rob ransbottom:

1.  a little thing: inadvertantly calling a method on $\_, forgot the variable

    1.  a raku drawback: that can't be a bug, because there's always a $\_
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug07/rob<sub>using</sub><sub>topic</sub><sub>vs</sub><sub>named</sub><sub>var.raku</sub>

2.  and why did they do this: you can use container comparison with a single argument

    1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug07/container<sub>comparison</sub><sub>op.raku</sub>
    
    2.  using notation infix:< &#x2026; >
    
        ```raku
        say infix:<=:=>(42);    # True
        ```


<a id="orgbd095f7"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="orga5e962b"></a>

### negation with junctions goes outside the junction

1.  .none %% 2 vs  .all  !%% 2

2.  an issue marton cares about: gave us links to discussions


<a id="orgaf0e902"></a>

### TODO william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgc7c023c"></a>

## earlier topics


<a id="org37d22dd"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org596b505"></a>

## announcements


<a id="orgdf79cad"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org823d288"></a>

### August 21st: the next raku study group meeting&#x2026;

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
