- [meeting notes September 25, 2022](#orgdd84c6d)
  - [the raku study group](#org6d96697)
  - [topics](#org0417c0c)
    - [long discussion about community management etc](#orgb72df9b)
    - [weekly challenge, current](#org56f4b7a)
    - [another weekly challenge](#org4ea7a65)
    - [revisit: "eurorack": william michels interested in synthesized music](#orgdc32454)
    - [william michels  // prefix as definedness operator, going in 6.e](#org4c6d46a)
    - [substr uses first<sub>position</sub> and length](#org209b4ee)
  - [announcements](#orgf792c30)
    - [October 9th: the next raku study group meeting](#orgde9100b)
    - [My Bali vacation pics, cleaned up still further:](#org9bebb4e)


<a id="orgdd84c6d"></a>

# meeting notes September 25, 2022


<a id="org6d96697"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org0417c0c"></a>

## topics


<a id="orgb72df9b"></a>

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


<a id="org56f4b7a"></a>

### weekly challenge, current

1.  <https://theweeklychallenge.org/>

2.  what's an "arrayref"? (A perlism, without obvious raku equivalent)

3.  text:

    ```text
    TASK #1: Unique Array
    
    You are given list of arrayrefs. Write a script to remove the duplicate arrayrefs from the given list.
    
    TASK #2: Date Difference
    
    You are given two dates, $date1 and $date2 in the format YYYY-MM-DD. 
    Write a script to find the difference between the given dates in terms on years and days only.
    ```


<a id="org4ea7a65"></a>

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


<a id="orgdc32454"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org4c6d46a"></a>

### william michels  // prefix as definedness operator, going in 6.e

1.  <https://github.com/rakudo/rakudo/pull/5040>

2.  if leon likes it, sokay with me

    ```raku
    my $success = // $result;
    ```


<a id="org209b4ee"></a>

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


<a id="orgf792c30"></a>

## announcements


<a id="orgde9100b"></a>

### October 9th: the next raku study group meeting


<a id="org9bebb4e"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
