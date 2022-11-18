- [meeting notes November 20, 2022](#org5b98710)
  - [the raku study group](#org6cb022f)
  - [promotion](#org4e9f7d2)
    - [get on raku irc](#org4be9487)
    - [email liz, suggest a mention in raku weekly news?](#org08fb092)
    - [post note to reddit/r/rakulang](#orgc61c89c)
  - [topics](#org0a082b1)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#orgcff703a)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#org1b54bbd)
    - [jj merelo, "Raku Recipies"](#org9f0dbd0)
  - [topics from last meeting (needs edit)](#orgcfd26a7)
    - [revisiting this issue:](#org4752d29)
    - [anonymous scalar variable (the plain $)](#orgb9e173e)
    - [marton polgar has buggy things to talk about](#orgcc7954a)
    - [weekly challenge&#x2013; much activity](#org2fb7097)
  - [personal notes: follow-up](#orgcffef86)
    - [find links to weekly challenge code presented](#org3eb7475)
    - [write some demo scripts exploring some details](#org073063a)
    - [look at marton's code examples, explore the oddities of smartmaches](#org1e366b4)
    - [report docs bug: is there no precedence list **in order of precedence**](#org258b3d4)
  - [announcements](#orgba3919d)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org945e3b3)
    - [November 4th: the next raku study group meeting](#org64d16ca)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org260d50b)


<a id="org5b98710"></a>

# meeting notes November 20, 2022


<a id="org6cb022f"></a>

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


<a id="org4e9f7d2"></a>

## promotion


<a id="org4be9487"></a>

### get on raku irc


<a id="org08fb092"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgc61c89c"></a>

### post note to reddit/r/rakulang


<a id="org0a082b1"></a>

## topics


<a id="orgcff703a"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="org1b54bbd"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="org9f0dbd0"></a>

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


<a id="orgcfd26a7"></a>

## topics from last meeting (needs edit)


<a id="org4752d29"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orgb9e173e"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="orgcc7954a"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org2fb7097"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="orgcffef86"></a>

## personal notes: follow-up


<a id="org3eb7475"></a>

### find links to weekly challenge code presented


<a id="org073063a"></a>

### write some demo scripts exploring some details


<a id="org1e366b4"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org258b3d4"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orgba3919d"></a>

## announcements


<a id="org945e3b3"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org64d16ca"></a>

### November 4th: the next raku study group meeting


<a id="org260d50b"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
