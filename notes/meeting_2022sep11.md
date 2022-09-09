- [meeting notes September 11, 2022](#org5e6db9a)
  - [the raku study group](#org2f7cf0e)
  - [current topics](#org5d2ff6e)
    - [Raku conference vids, e.g. jonathan worthington](#org722cd29)
  - [topics to revisit, from last meeting](#orga3787d7)
    - [the revenge of the son of the return of junction gotchas](#orgeaaed0c)
  - [additional topics, for someday](#org7d85d49)
    - [raku for data science](#org7394fa6)
    - [william michels, corrupt json handling](#orgdbbc329)
  - [earlier topics](#orgf4d93ac)
    - [Grammar.nqp](#org29e0dcb)
  - [announcements](#org325dfe0)
    - [September 11th: the next raku study group meeting](#org22a1024)


<a id="org5e6db9a"></a>

# meeting notes September 11, 2022


<a id="org2f7cf0e"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org5d2ff6e"></a>

## current topics


<a id="org722cd29"></a>

### Raku conference vids, e.g. jonathan worthington


<a id="orga3787d7"></a>

## topics to revisit, from last meeting


<a id="orgeaaed0c"></a>

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


<a id="org7d85d49"></a>

## additional topics, for someday


<a id="org7394fa6"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgdbbc329"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgf4d93ac"></a>

## earlier topics


<a id="org29e0dcb"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org325dfe0"></a>

## announcements


<a id="org22a1024"></a>

### September 11th: the next raku study group meeting

1.  note: we're skipping labor day weekend
