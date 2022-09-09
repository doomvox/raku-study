- [meeting notes September 11, 2022](#orga0aef83)
  - [the raku study group](#org216308d)
  - [current topics](#org7c0f7e4)
    - [Raku conference vids, e.g. jonathan worthington](#org9c7b7ff)
  - [topics to revisit, from last meeting](#org99cbf40)
    - [the revenge of the son of the return of junction gotchas](#org80535ab)
    - [review of some suggested reading](#org4f3209e)
  - [topics for next time](#org63d5513)
    - [raku for data science](#org36f4ed6)
    - [william michels, corrupt json handling](#org3fed6c9)
  - [earlier topics](#org35cc36e)
    - [Grammar.nqp](#org002d35c)
    - [regex feature: control what's captured with <( &#x2026; )>](#org763507d)
  - [announcements](#org94c68d9)
    - [September 11th: the next raku study group meeting](#orgd471c85)


<a id="orga0aef83"></a>

# meeting notes September 11, 2022


<a id="org216308d"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org7c0f7e4"></a>

## current topics


<a id="org9c7b7ff"></a>

### Raku conference vids, e.g. jonathan worthington


<a id="org99cbf40"></a>

## topics to revisit, from last meeting


<a id="org80535ab"></a>

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
        
        8.  Ralph's remarks on the left-hand junction with smartmatch issue:
        
            1.  <https://github.com/rakudo/rakudo/issues/4615>
        
        9.  follow-up: passing junctions as an argument
        
            1.  <:Find> exclude
            
                1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
                
                2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>
                
                3.  is this the canonical <:Find> repo?  (brian d foy has one, too, but it looks stale)
                
                    <https://github.com/tadzik/File-Find>
                    
                    1.  DONE open issue / submit pull request to Mu the name and exclude arguments
        
        10. junctions
        
            1.  basics
            
                1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
                
                2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org4f3209e"></a>

### review of some suggested reading

1.  <https://vrurg.github.io/arfb.html>

2.  <https://vrurg.github.io/arfb-publication/03-containers-and-symbols/>


<a id="org63d5513"></a>

## topics for next time


<a id="org36f4ed6"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org3fed6c9"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org35cc36e"></a>

## earlier topics


<a id="org002d35c"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org763507d"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org94c68d9"></a>

## announcements


<a id="orgd471c85"></a>

### September 11th: the next raku study group meeting

1.  note: we're skipping labor day weekend
