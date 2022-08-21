- [meeting notes August 07, 2022](#org2f9e446)
  - [the raku study group](#org4c015d2)
  - [current topics](#org878419f)
    - [one-line twiddle](#org3f90118)
    - [strings modifications](#org51bc7a0)
    - [aside: issues with .match](#orgf3b6d45)
    - [the revenge of the son of the return of junction gotchas](#org447281a)
    - [review of some suggested reading](#org351fc9f)
  - [topics for next time](#orgd6cc5ec)
    - [raku for data science](#org1bab652)
    - [william michels, corrupt json handling](#orgc95dbc7)
  - [earlier topics](#org7a63604)
    - [Grammar.nqp](#org95a54de)
    - [regex feature: control what's captured with <( &#x2026; )>](#org55a5229)
  - [announcements](#org5a00fb1)
    - [August 13th & 14th: online raku conference](#org9757b7c)
    - [August 21st: the next raku study group meeting](#org466c9e0)


<a id="org2f9e446"></a>

# meeting notes August 07, 2022


<a id="org4c015d2"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug21.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21>


<a id="org878419f"></a>

## current topics


<a id="org3f90118"></a>

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


<a id="org51bc7a0"></a>

### strings modifications

1.  can be based on

    1.  locations
    
        1.  substr
    
    2.  contents (what the string is)
    
        1.  s///
    
    3.  combinations of the two

2.  last time we discussed:

3.  substr-rw

    1.  like substr but you can use it on the left-hand side
    
        1.  as with perl's dual usage "substr"

4.  perl

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21/10-modify_substr_via_subst.pl>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/10-modify<sub>substr</sub><sub>via</sub><sub>subst.pl</sub>

5.  raku

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21/11-modify_substr_via_subst.raku>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/11-modify<sub>substr</sub><sub>via</sub><sub>subst.raku</sub>


<a id="orgf3b6d45"></a>

### aside: issues with .match

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21/match_basics_sigh.raku>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/match<sub>basics</sub><sub>sigh.raku</sub>

3.  <https://docs.raku.org/routine/match>

4.  But see HACK in "11-modify<sub>substr</sub><sub>via</sub><sub>subst.raku</sub>" linked to above


<a id="org447281a"></a>

### the revenge of the son of the return of junction gotchas

1.  our story thus far:

    1.  Márton Polgár: junctions and negated operators (a bad raku trap)
    
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


<a id="org351fc9f"></a>

### review of some suggested reading

1.  <https://vrurg.github.io/arfb.html>

2.  <https://vrurg.github.io/arfb-publication/03-containers-and-symbols/>


<a id="orgd6cc5ec"></a>

## topics for next time


<a id="org1bab652"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgc95dbc7"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org7a63604"></a>

## earlier topics


<a id="org95a54de"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org55a5229"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org5a00fb1"></a>

## announcements


<a id="org9757b7c"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="org466c9e0"></a>

### August 21st: the next raku study group meeting

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
