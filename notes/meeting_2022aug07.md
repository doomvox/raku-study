- [meeting notes August 07, 2022](#org621228c)
  - [the raku study group](#orgd1c6e5d)
  - [current topics](#org1f9a8a2)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#orge81fc8c)
    - [raku for data science  (one for next time)](#orgc05f7d9)
    - [rob ransbottom:](#org7c5e1bf)
    - [weekly challenge](#org597760c)
    - [negation with junctions goes outside the junction](#org97368f4)
    - [william michels, corrupt json handling (maybe next week)](#org2ff8dc3)
  - [earlier topics](#org142c61c)
    - [regex feature: control what's captured with <( &#x2026; )>](#orga3254c5)
  - [announcements](#org2c67c92)
    - [August 13th & 14th: online raku conference](#orgb9775a3)
    - [August 21st: the next raku study group meeting&#x2026;](#org32ccc24)


<a id="org621228c"></a>

# meeting notes August 07, 2022


<a id="orgd1c6e5d"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="org1f9a8a2"></a>

## current topics


<a id="orge81fc8c"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together


<a id="orgc05f7d9"></a>

### TODO raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org7c5e1bf"></a>

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

3.  some error messages refer to a signature: ($?)

    ```raku
    say  infix:<=:=>(Mu); 
     # Cannot resolve caller infix:<=:=>(Mu:U); none of these signatures match:
     #     ($?)
     #     (Mu \a, Mu \b)
    ```
    
    1.  lizmat explains the ? isn't a twigil, it indicates it's **optional**
    
    2.  but there are cases where the ? **is** a twigil (nasty source of confusion)
    
        1.  <https://docs.raku.org/language/variables#Compile-time_variables>


<a id="org597760c"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="org97368f4"></a>

### negation with junctions goes outside the junction

1.  .none %% 2 vs  .all  !%% 2

2.  an issue marton cares about: gave us links to discussions


<a id="org2ff8dc3"></a>

### TODO william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org142c61c"></a>

## earlier topics


<a id="orga3254c5"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org2c67c92"></a>

## announcements


<a id="orgb9775a3"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org32ccc24"></a>

### August 21st: the next raku study group meeting&#x2026;

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
