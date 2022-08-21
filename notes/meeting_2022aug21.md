- [meeting notes August 07, 2022](#orgd9db838)
  - [the raku study group](#orge539ec4)
  - [current topics](#orgadc58f6)
    - [one-line twiddle](#org64587ec)
    - [perl5 perl-porters: \U\L interpolation contructs don't work well together](#orgee424bc)
    - [rob ransbottom:](#org31f6fa1)
    - [weekly challenge](#org251f16d)
    - [substr-rw](#orgafa0863)
    - [Grammar.nqp](#org1b0993c)
  - [topics for next time](#orgedd3de5)
    - [raku for data science  (one for next time)](#org8b5e771)
    - [william michels, corrupt json handling (maybe next week)](#org54d5000)
  - [earlier topics](#org43e0b8c)
    - [regex feature: control what's captured with <( &#x2026; )>](#org2473643)
  - [announcements](#org9ff7e6c)
    - [August 13th & 14th: online raku conference](#org815d1a8)
    - [August 21st: the next raku study group meeting](#org66ae36e)


<a id="orgd9db838"></a>

# meeting notes August 07, 2022


<a id="orge539ec4"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug21.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21>


<a id="orgadc58f6"></a>

## current topics


<a id="org64587ec"></a>

### one-line twiddle

```cperl
($b, $a) = ($a, $b);
```


<a id="orgee424bc"></a>

### perl5 perl-porters: \U\L interpolation contructs don't work well together

1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/case<sub>change</sub><sub>via</sub><sub>interpolation.pl</sub>

    1.  tried to play with the "sharp s"
    
        1.  <https://medium.com/@typefacts/the-german-capital-letter-eszett-e0936c1388f8>


<a id="org31f6fa1"></a>

### rob ransbottom:

1.  a little thing: inadvertantly calling a method on $\_, forgot the variable

    1.  a raku drawback: that can't be a bug, because there's always a $\_
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07/rob_using_topic_vs_named_var.raku>

2.  and why did they do this: you can use container comparison with a single argument

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07/container_comparison_op.raku>
    
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
        
            1.  "$ means a required positional in which we're not interested, so we didn't bother to give it a name'
            
            2.  "$? is an optional positional in which we're not interested, also without name"
    
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
        
        5.  archived irc discussion, larry wall on "english" understanding:
        
            1.  <https://colabti.org/irclogger/irclogger_log/perl6?date=2016-08-21#l51>
        
        6.  github issue:
        
            1.  <https://github.com/rakudo/rakudo/issues/3748>


<a id="org251f16d"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-176/challenge-176/bruce-gray>


<a id="orgafa0863"></a>

### substr-rw

1.  like substr but you can use it on the left-hand side

    1.  as with perl's dual usage "substr"

2.  not to be confused with the deprecated

    1.  <https://docs.raku.org/routine/subst-mutate>


<a id="org1b0993c"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly

4.  TODO tbr:

    1.  <https://vrurg.github.io/arfb.html>
    
    2.  <https://vrurg.github.io/arfb-publication/03-containers-and-symbols/>


<a id="orgedd3de5"></a>

## topics for next time


<a id="org8b5e771"></a>

### TODO raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org54d5000"></a>

### TODO william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org43e0b8c"></a>

## earlier topics


<a id="org2473643"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org9ff7e6c"></a>

## announcements


<a id="org815d1a8"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org66ae36e"></a>

### August 21st: the next raku study group meeting

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
