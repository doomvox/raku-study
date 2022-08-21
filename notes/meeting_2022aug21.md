- [meeting notes August 07, 2022](#org1343902)
  - [the raku study group](#org92229bc)
  - [current topics](#orga3a91d7)
    - [one-line twiddle](#orgeb27e0d)
    - [strings modifications](#org658b1d0)
    - [aside: issues with .match](#orgdc33b03)
    - [the revenge of the son of the return of junction gotchas](#org094103d)
    - [review of some suggested reading](#org4981d31)
  - [topics for next time](#orgc7640f9)
    - [raku for data science](#orge43df2e)
    - [william michels, corrupt json handling](#org5b35966)
  - [earlier topics](#org7a69cb6)
    - [Grammar.nqp](#org2b6af78)
    - [regex feature: control what's captured with <( &#x2026; )>](#orgf1f4a41)
  - [announcements](#org9621fcf)
    - [August 13th & 14th: online raku conference](#org857ac70)
    - [August 21st: the next raku study group meeting](#orgd82a907)


<a id="org1343902"></a>

# meeting notes August 07, 2022


<a id="org92229bc"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug21.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21>


<a id="orga3a91d7"></a>

## current topics


<a id="orgeb27e0d"></a>

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


<a id="org658b1d0"></a>

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


<a id="orgdc33b03"></a>

### aside: issues with .match

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21/match_basics_sigh.raku>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/match<sub>basics</sub><sub>sigh.raku</sub>

3.  <https://docs.raku.org/routine/match>

4.  But see HACK in "11-modify<sub>substr</sub><sub>via</sub><sub>subst.raku</sub>" linked to above


<a id="org094103d"></a>

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
        
            1.  Hint, these are equivalent:
            
                1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study
                
                2.  <https://github.com/doomvox/raku-study/>
            
            2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug07/issue<sub>with</sub><sub>negated</sub><sub>operators</sub><sub>and</sub><sub>junctions.raku</sub>
            
            3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/basic<sub>junctions.pl6</sub>
            
            4.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb21/simon<sub>proctor</sub><sub>range</sub><sub>setops.pl6</sub>
            
            5.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021may16/file<sub>find.raku</sub>
            
            6.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021may30/file<sub>find</sub><sub>with</sub><sub>junction</sub><sub>as</sub><sub>exclude.raku</sub>
            
            7.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021may30/file<sub>find</sub><sub>with</sub><sub>junction</sub><sub>as</sub><sub>exclude</sub>-bills<sub>attempt.raku</sub>
            
            8.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021may30/question<sub>about</sub><sub>if</sub><sub>vs</sub><sub>ternary.raku</sub>
            
            9.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021may30/smartmatches<sub>and</sub><sub>junctions.raku</sub>
            
            10. /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021jun20/passing<sub>junctions</sub><sub>to</sub><sub>subs.raku</sub>
            
            11. /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021jun20/junctionism.raku
            
            12. /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021sep26/multi<sub>dispatch</sub><sub>with</sub><sub>overlapping</sub><sub>subset</sub><sub>types.raku</sub>
            
            13. /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021nov07/junctions<sub>sans</sub><sub>petticoats.raku</sub>
            
            14. /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jan30/whispering<sub>nothings.raku</sub>


<a id="org4981d31"></a>

### review of some suggested reading

1.  <https://vrurg.github.io/arfb.html>

2.  <https://vrurg.github.io/arfb-publication/03-containers-and-symbols/>


<a id="orgc7640f9"></a>

## topics for next time


<a id="orge43df2e"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org5b35966"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org7a69cb6"></a>

## earlier topics


<a id="org2b6af78"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgf1f4a41"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org9621fcf"></a>

## announcements


<a id="org857ac70"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="orgd82a907"></a>

### August 21st: the next raku study group meeting

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
