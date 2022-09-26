- [meeting notes September 25, 2022](#orgf447d38)
  - [the raku study group](#orgc1d7c70)
  - [saved for next time](#org082b70e)
    - [revisit: "eurorack": william michels interested in synthesized music](#orge52021f)
    - [classify](#orgd1d63ca)
  - [topics](#org486fe13)
    - [long discussion about community management etc](#orgbd47aa4)
    - [weekly challenge, current](#org9f2f696)
    - [another weekly challenge](#org178b2cf)
    - [william michels  // prefix as definedness operator, going in 6.e](#org427375d)
    - [substr uses first<sub>position</sub> and length](#orgad50d05)
  - [announcements](#org41a16b1)
    - [October 9th: the next raku study group meeting](#orgb312df2)
    - [My Bali vacation pics, cleaned up still further:](#org2aa7485)


<a id="orgf447d38"></a>

# meeting notes September 25, 2022


<a id="orgc1d7c70"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org082b70e"></a>

## saved for next time


<a id="orge52021f"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="orgd1d63ca"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org486fe13"></a>

## topics


<a id="orgbd47aa4"></a>

### long discussion about community management etc

1.  marton polgar

    1.  raku needs an actual manager?
    
        1.  not so welcoming to new work?
    
    2.  good raku people lost to rust?
    
    3.  how public is the study group
    
        1.  mention on community page
        
        2.  get lizmat to include
    
    4.  idea for a "raku hermit" blog: unofficial but technically useful info

2.  william michels raises old issue:

    1.  <https://www.theregister.com/2021/05/26/freenode_irc_takeover/>


<a id="org9f2f696"></a>

### weekly challenge, current

1.  <https://theweeklychallenge.org/>

2.  what's an "arrayref"? (A perlism, without obvious raku equivalent)

3.  summary

    1.  
    
        ```text
        TASK #1: Unique Array
        
        You are given list of arrayrefs. Write a script to remove the duplicate arrayrefs from the given list.
        
        TASK #2: Date Difference
        
        You are given two dates, $date1 and $date2 in the format YYYY-MM-DD. 
        Write a script to find the difference between the given dates in terms on years and days only.
        ```


<a id="org178b2cf"></a>

### another weekly challenge

1.  longest common prefix in directory names

2.  rob's code treats as strings, then ensures it stops at a '/'

3.  the lcp code on rosettacode has problems: old style 2015

    1.  bruce gray makes point it doesn't stop when it's found divergence
    
        1.  instead of ords should use cars
        
        2.  no need for vertbar
        
        3.  should use eq not eqv
        
        4.  coming out of [\and] you'll see T, T, F, F, &#x2026;
        
        5.  use first to bail out when F found?


<a id="org427375d"></a>

### william michels  // prefix as definedness operator, going in 6.e

1.  <https://github.com/rakudo/rakudo/pull/5040>

2.  if leon likes it, sokay with me

    ```raku
    my $success = // $result;
    ```


<a id="orgad50d05"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?

    1.  duh, use a range
    
    2.  <https://docs.raku.org/routine/substr>
    
    3.  say substr("Long string", 3..6);     # OUTPUT: «g st␤»
    
    4.  
    
        ```raku
        my $str = 'godzilla';
        $str.substr-rw(3,6) = '66666666';
        say $str; # god66666666
        ```
    
    5.  bruce gray will report docs bug substr-rw


<a id="org41a16b1"></a>

## announcements


<a id="orgb312df2"></a>

### October 9th: the next raku study group meeting


<a id="org2aa7485"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
