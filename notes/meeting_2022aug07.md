- [meeting notes August 07, 2022](#org0769165)
  - [the raku study group](#org0048dd5)
  - [current topics](#org998b51b)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#org16c7eda)
    - [raku for data science  (one for next time)](#orgadbb779)
    - [rob ransbottom:](#org88c45b4)
    - [weekly challenge](#orgc57a16d)
    - [negation with junctions goes outside the junction](#org142595e)
    - [william michels, corrupt json handling (maybe next week)](#orgcc63555)
  - [earlier topics](#orgf421c5c)
    - [regex feature: control what's captured with <( &#x2026; )>](#org630359b)
  - [announcements](#org3aa9cc9)
    - [August 13th & 14th: online raku conference](#org7afb40b)
    - [August 21st: the next raku study group meeting&#x2026;](#org4dcc4cd)


<a id="org0769165"></a>

# meeting notes August 07, 2022


<a id="org0048dd5"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="org998b51b"></a>

## current topics


<a id="org16c7eda"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together


<a id="orgadbb779"></a>

### TODO raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org88c45b4"></a>

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


<a id="orgc57a16d"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="org142595e"></a>

### negation with junctions goes outside the junction

1.  .none %% 2 vs  .all  !%% 2

2.  an issue marton cares about: gave us links to discussions


<a id="orgcc63555"></a>

### TODO william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgf421c5c"></a>

## earlier topics


<a id="org630359b"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org3aa9cc9"></a>

## announcements


<a id="org7afb40b"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org4dcc4cd"></a>

### August 21st: the next raku study group meeting&#x2026;

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
