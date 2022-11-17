- [meeting notes November 20, 2022](#orgf93fd0b)
  - [the raku study group](#org7e381ee)
  - [promotion](#org4a0e29f)
    - [get on raku irc](#org4fe1082)
    - [email liz, suggest a mention in raku weekly news?](#orgc27c4bf)
    - [post note to reddit/r/rakulang](#org462fd68)
  - [topics](#org7ec3f3d)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#org9877a8c)
    - [q: how would people feel about a new years day meeting?](#orgc22f814)
    - [jj merelo, "Raku Recipies"](#org007a6cc)
  - [topics from last meeting (needs edit)](#orgf0cd44e)
    - [revisiting this issue:](#org94e33e2)
    - [anonymous scalar variable (the plain $)](#orge41982f)
    - [marton polgar has buggy things to talk about](#org5ca1fe6)
    - [weekly challenge&#x2013; much activity](#org6a4871c)
  - [personal notes: follow-up](#org56eb5a8)
    - [find links to weekly challenge code presented](#orgf80aab0)
    - [write some demo scripts exploring some details](#orgedf520e)
    - [look at marton's code examples, explore the oddities of smartmaches](#org2673b10)
    - [report docs bug: is there no precedence list **in order of precedence**](#org45f9d29)
  - [announcements](#org8d50973)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgeb07dc1)
    - [November 4th: the next raku study group meeting](#orgbfaf930)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#orge0fb9de)


<a id="orgf93fd0b"></a>

# meeting notes November 20, 2022


<a id="org7e381ee"></a>

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


<a id="org4a0e29f"></a>

## promotion


<a id="org4fe1082"></a>

### get on raku irc


<a id="orgc27c4bf"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org462fd68"></a>

### post note to reddit/r/rakulang


<a id="org7ec3f3d"></a>

## topics


<a id="org9877a8c"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="orgc22f814"></a>

### q: how would people feel about a new years day meeting?


<a id="org007a6cc"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer


<a id="orgf0cd44e"></a>

## topics from last meeting (needs edit)


<a id="org94e33e2"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orge41982f"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org5ca1fe6"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org6a4871c"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org56eb5a8"></a>

## personal notes: follow-up


<a id="orgf80aab0"></a>

### find links to weekly challenge code presented


<a id="orgedf520e"></a>

### write some demo scripts exploring some details


<a id="org2673b10"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org45f9d29"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="org8d50973"></a>

## announcements


<a id="orgeb07dc1"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgbfaf930"></a>

### November 4th: the next raku study group meeting


<a id="orge0fb9de"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
