- [meeting notes November 20, 2022](#org2815709)
  - [the raku study group](#org6e859a4)
  - [promotion](#org832331e)
    - [get on raku irc](#org03536ab)
    - [email liz, suggest a mention in raku weekly news?](#org66e9252)
    - [post note to reddit/r/rakulang](#org59089d8)
  - [topics](#org0131d5e)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#orgc2bf49b)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#org385d796)
    - [jj merelo, "Raku Recipies"](#org98f845b)
  - [topics from last meeting (needs edit)](#orgc7aac44)
    - [revisiting this issue:](#org6c27933)
    - [anonymous scalar variable (the plain $)](#org0732e6d)
    - [marton polgar has buggy things to talk about](#orge2d658e)
    - [weekly challenge&#x2013; much activity](#org8b71c7d)
  - [personal notes: follow-up](#orgdbec1a9)
    - [find links to weekly challenge code presented](#org7fc3f2c)
    - [write some demo scripts exploring some details](#org20d8b83)
    - [look at marton's code examples, explore the oddities of smartmaches](#org68c82c7)
    - [report docs bug: is there no precedence list **in order of precedence**](#orgd49899a)
  - [announcements](#orgba2b2a4)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org384d750)
    - [November 4th: the next raku study group meeting](#org7a6bc8b)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org831d910)


<a id="org2815709"></a>

# meeting notes November 20, 2022


<a id="org6e859a4"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022nov20.md>
        
        2.  source file (for corrections, etc)
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022nov20.org>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022nov20>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022nov06.md>


<a id="org832331e"></a>

## promotion


<a id="org03536ab"></a>

### get on raku irc


<a id="org66e9252"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org59089d8"></a>

### post note to reddit/r/rakulang


<a id="org0131d5e"></a>

## topics


<a id="orgc2bf49b"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="org385d796"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="org98f845b"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer

5.  saw similar things with this R 4 tutorial book

    1.  <https://link.springer.com/book/10.1007/978-1-4842-6053-1>
    
    2.  by the way, R 4.0 came out in 2020
    
        1.  <https://analyticsindiamag.com/r-4-0-released-whats-in-it-for-data-scientists/>
        
            1.  the regexs use the PCRE2 library now
            
            2.  uses reference counting on objects
            
            3.  getting rid of braindead strings-as-factors behavior


<a id="orgc7aac44"></a>

## topics from last meeting (needs edit)


<a id="org6c27933"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="org0732e6d"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="orge2d658e"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org8b71c7d"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="orgdbec1a9"></a>

## personal notes: follow-up


<a id="org7fc3f2c"></a>

### find links to weekly challenge code presented


<a id="org20d8b83"></a>

### write some demo scripts exploring some details


<a id="org68c82c7"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="orgd49899a"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orgba2b2a4"></a>

## announcements


<a id="org384d750"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org7a6bc8b"></a>

### November 4th: the next raku study group meeting


<a id="org831d910"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
