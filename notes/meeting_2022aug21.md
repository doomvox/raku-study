- [meeting notes August 07, 2022](#orgc36def6)
  - [the raku study group](#orgbc87550)
  - [current topics](#org2975177)
    - [one-line twiddle](#orgf5589e7)
    - [strings modifications](#org10635af)
    - [aside: issues with .match](#orga6b6f60)
    - [the revenge of the son of the return of junction gotchas](#org91d1fb9)
    - [review of some suggested reading](#org5bea9f0)
  - [topics for next time](#orge04b3aa)
    - [raku for data science](#orgfe4b3cf)
    - [william michels, corrupt json handling](#orgad3c38f)
  - [earlier topics](#orgf1175f4)
    - [Grammar.nqp](#org9c1bd3b)
    - [regex feature: control what's captured with <( &#x2026; )>](#org82310fe)
  - [announcements](#org7ee624e)
    - [August 13th & 14th: online raku conference](#org7fbc9d9)
    - [August 21st: the next raku study group meeting](#orgc2eee4a)


<a id="orgc36def6"></a>

# meeting notes August 07, 2022


<a id="orgbc87550"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug21.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21>


<a id="org2975177"></a>

## current topics


<a id="orgf5589e7"></a>

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


<a id="org10635af"></a>

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


<a id="orga6b6f60"></a>

### aside: issues with .match

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21/match_basics_sigh.raku>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/match<sub>basics</sub><sub>sigh.raku</sub>

3.  <https://docs.raku.org/routine/match>

4.  But see HACK in "11-modify<sub>substr</sub><sub>via</sub><sub>subst.raku</sub>" linked to above


<a id="org91d1fb9"></a>

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
        
        7.  examples of messing with junctions (local links for now, github left as an exercise):
        
            1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/basic<sub>junctions.pl6</sub>
            
            2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb21/simon<sub>proctor</sub><sub>range</sub><sub>setops.pl6</sub>
            
            3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021may16/file<sub>find.raku</sub>
            
            4.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021may30/file<sub>find</sub><sub>with</sub><sub>junction</sub><sub>as</sub><sub>exclude.raku</sub>


<a id="org5bea9f0"></a>

### review of some suggested reading

1.  <https://vrurg.github.io/arfb.html>

2.  <https://vrurg.github.io/arfb-publication/03-containers-and-symbols/>


<a id="orge04b3aa"></a>

## topics for next time


<a id="orgfe4b3cf"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgad3c38f"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgf1175f4"></a>

## earlier topics


<a id="org9c1bd3b"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org82310fe"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org7ee624e"></a>

## announcements


<a id="org7fbc9d9"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="orgc2eee4a"></a>

### August 21st: the next raku study group meeting

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
