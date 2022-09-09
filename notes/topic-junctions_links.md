- [topics to revisit, from last meeting](#org718e773)
    - [the revenge of the son of the return of junction gotchas](#org2769fe4)
      - [our story thus far:](#org0fbb3b3)


<a id="org718e773"></a>

# topics to revisit, from last meeting


<a id="org2769fe4"></a>

## the revenge of the son of the return of junction gotchas


<a id="org0fbb3b3"></a>

### our story thus far:

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
