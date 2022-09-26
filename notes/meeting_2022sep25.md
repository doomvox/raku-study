- [meeting notes September 25, 2022](#org6aa5472)
  - [the raku study group](#org1e7e62d)
  - [topics](#orgdb142fc)
    - [revisit: "eurorack": william michels interested in synthesized music](#org0a91ebd)
    - [long discussion about community management etc](#org52b480b)
    - [weekly challenge, current](#org8a10cc0)
    - [another weekly challenge](#org9f0390d)
    - [william michels  // prefix as definedness operator, going in 6.e](#orge752cae)
    - [substr uses first<sub>position</sub> and length](#org669c12b)
  - [announcements](#org29bcedd)
    - [October 9th: the next raku study group meeting](#orgdf94243)
    - [My Bali vacation pics, cleaned up still further:](#org1f3b83e)


<a id="org6aa5472"></a>

# meeting notes September 25, 2022


<a id="org1e7e62d"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="orgdb142fc"></a>

## topics


<a id="org0a91ebd"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org52b480b"></a>

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


<a id="org8a10cc0"></a>

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


<a id="org9f0390d"></a>

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


<a id="orge752cae"></a>

### william michels  // prefix as definedness operator, going in 6.e

1.  <https://github.com/rakudo/rakudo/pull/5040>

2.  if leon likes it, sokay with me

    ```raku
    my $success = // $result;
    ```


<a id="org669c12b"></a>

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


<a id="org29bcedd"></a>

## announcements


<a id="orgdf94243"></a>

### October 9th: the next raku study group meeting


<a id="org1f3b83e"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
