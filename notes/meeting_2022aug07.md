- [meeting notes August 07, 2022](#orgc45886e)
  - [the raku study group](#org52a1750)
  - [current topics](#orgab4d76f)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#org22dc947)
    - [raku for data science  (one for next time)](#orgddf809f)
    - [rob ransbottom:](#org9a30283)
    - [weekly challenge](#org7a93164)
    - [negation with junctions goes outside the junction](#org5e83da6)
    - [william michels, corrupt json handling (maybe next week)](#orga7b578b)
  - [earlier topics](#orgcf1cfa1)
    - [regex feature: control what's captured with <( &#x2026; )>](#orgd1e1393)
  - [announcements](#orge512ec3)
    - [August 13th & 14th: online raku conference](#org00beecc)
    - [August 21st: the next raku study group meeting&#x2026;](#orga9d34c2)


<a id="orgc45886e"></a>

# meeting notes August 07, 2022


<a id="org52a1750"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="orgab4d76f"></a>

## current topics


<a id="org22dc947"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together


<a id="orgddf809f"></a>

### TODO raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org9a30283"></a>

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

3.  

    ```raku
    say  infix:<=:=>(Mu); 
     # Cannot resolve caller infix:<=:=>(Mu:U); none of these signatures match:
     #     ($?)
     #     (Mu \a, Mu \b)
    ```


<a id="org7a93164"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="org5e83da6"></a>

### negation with junctions goes outside the junction

1.  .none %% 2 vs  .all  !%% 2

2.  an issue marton cares about: gave us links to discussions


<a id="orga7b578b"></a>

### TODO william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgcf1cfa1"></a>

## earlier topics


<a id="orgd1e1393"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="orge512ec3"></a>

## announcements


<a id="org00beecc"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="orga9d34c2"></a>

### August 21st: the next raku study group meeting&#x2026;

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
