- [meeting notes August 07, 2022](#org444de79)
  - [the raku study group](#org4ab0b9b)
  - [current topics](#org4711a4c)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#orgc089a9d)
    - [rob ransbottom:](#orgbe6b2d3)
    - [weekly challenge](#orgd6ce68e)
    - [Grammar.nqp](#org332bfee)
  - [topics for next time](#orgaa74c2d)
    - [raku for data science  (one for next time)](#orgc5d50cf)
    - [william michels, corrupt json handling (maybe next week)](#org8d4dda5)
  - [earlier topics](#org3c2292f)
    - [regex feature: control what's captured with <( &#x2026; )>](#orgebbbc81)
  - [announcements](#orgf648111)
    - [August 13th & 14th: online raku conference](#org64db009)
    - [August 21st: the next raku study group meeting](#orgc18fa1d)


<a id="org444de79"></a>

# meeting notes August 07, 2022


<a id="org4ab0b9b"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug07.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07>


<a id="org4711a4c"></a>

## current topics


<a id="orgc089a9d"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together

1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug07/case<sub>change</sub><sub>via</sub><sub>interpolation.pl</sub>


<a id="orgbe6b2d3"></a>

### rob ransbottom:

1.  a little thing: inadvertantly calling a method on $\_, forgot the variable

    1.  a raku drawback: that can't be a bug, because there's always a $\_
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07rob_using_topic_vs_named_var.raku>

2.  and why did they do this: you can use container comparison with a single argument

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07container_comparison_op.raku>
    
    2.  using notation infix:< &#x2026; >
    
        ```raku
        say infix:<=:=>(42);    # True
        ```
        
        1.  <https://docs.raku.org/language/operators#infix>\_=:=

3.  some error messages refer to a signature: ($?)

    ```raku
    say  infix:<=:=>(Mu); 
     # Cannot resolve caller infix:<=:=>(Mu:U); none of these signatures match:
     #     ($?)
     #     (Mu \a, Mu \b)
    ```
    
    1.  lizmat explains the ? isn't a twigil, it indicates it's **optional**
    
        1.  one example: <https://github.com/rakudo/rakudo/blob/master/src/core.c/hash_slice.pm6>
    
    2.  but there are cases where the ? **is** a twigil (nasty source of confusion)
    
        1.  <https://docs.raku.org/language/variables#Compile-time_variables>
    
    3.  Márton Polgár: junctions and negated operators (a bad raku trap)
    
        1.  negation with junctions goes outside the junction
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07/issue_with_negated_operators_and_junctions.raku>
        
        3.  really should be docummented on the traps page
        
        4.  these aren't equivalent:
        
            ```raku
            .none %% 2 
            ```
            
            ```raku
            .all  !%% 2 
            ```


<a id="orgd6ce68e"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>


<a id="org332bfee"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly

4.  TODO tbr:

    1.  <https://vrurg.github.io/arfb.html>
    
    2.  <https://vrurg.github.io/arfb-publication/03-containers-and-symbols/>


<a id="orgaa74c2d"></a>

## topics for next time


<a id="orgc5d50cf"></a>

### TODO raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org8d4dda5"></a>

### TODO william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org3c2292f"></a>

## earlier topics


<a id="orgebbbc81"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="orgf648111"></a>

## announcements


<a id="org64db009"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="orgc18fa1d"></a>

### August 21st: the next raku study group meeting

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
