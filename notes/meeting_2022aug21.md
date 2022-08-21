- [meeting notes August 07, 2022](#org9be2b7a)
  - [the raku study group](#orgc716479)
  - [current topics](#orgfabc241)
    - [one-line twiddle](#orge648d85)
    - [weekly challenge](#org2ad888a)
    - [substr-rw](#orgcd5f413)
    - [Grammar.nqp](#org3ba8e52)
  - [topics for next time](#org822df0f)
    - [raku for data science  (one for next time)](#org94e23d7)
    - [william michels, corrupt json handling (maybe next week)](#orgb56adae)
  - [earlier topics](#org2e3919f)
    - [regex feature: control what's captured with <( &#x2026; )>](#org166b1cc)
  - [announcements](#org4341f1b)
    - [August 13th & 14th: online raku conference](#org7509660)
    - [August 21st: the next raku study group meeting](#org3c7117d)


<a id="org9be2b7a"></a>

# meeting notes August 07, 2022


<a id="orgc716479"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug21.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21>


<a id="orgfabc241"></a>

## current topics


<a id="orge648d85"></a>

### one-line twiddle

```cperl
($b, $a) = ($a, $b);
```

1.  perl

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug2101-twiddle_vars.pl>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/01-twiddle<sub>vars.pl</sub>

2.  raku

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug2102-twiddle_vars.raku>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/02-twiddle<sub>vars.raku</sub>
    
    3.  but there are cases where the ? **is** a twigil (nasty source of confusion)
    
        1.  <https://docs.raku.org/language/variables#Compile-time_variables>
    
    4.  Márton Polgár: junctions and negated operators (a bad raku trap)
    
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


<a id="org2ad888a"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-176/#TASK1>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-176/challenge-176/bruce-gray>


<a id="orgcd5f413"></a>

### substr-rw

1.  like substr but you can use it on the left-hand side

    1.  as with perl's dual usage "substr"

2.  not to be confused with the deprecated

    1.  <https://docs.raku.org/routine/subst-mutate>


<a id="org3ba8e52"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly

4.  TODO tbr:

    1.  <https://vrurg.github.io/arfb.html>
    
    2.  <https://vrurg.github.io/arfb-publication/03-containers-and-symbols/>


<a id="org822df0f"></a>

## topics for next time


<a id="org94e23d7"></a>

### TODO raku for data science  (one for next time)

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgb56adae"></a>

### TODO william michels, corrupt json handling (maybe next week)

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org2e3919f"></a>

## earlier topics


<a id="org166b1cc"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org4341f1b"></a>

## announcements


<a id="org7509660"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org3c7117d"></a>

### August 21st: the next raku study group meeting

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
