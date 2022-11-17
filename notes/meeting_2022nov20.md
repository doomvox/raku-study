- [meeting notes November 20, 2022](#orgfe55d6e)
  - [the raku study group](#orgd6713b3)
  - [promotion](#orgf493d9e)
    - [get on raku irc](#orgdfb1214)
    - [email liz, suggest a mention in raku weekly news?](#orgf0b0c68)
    - [post note to reddit/r/rakulang](#orgae9773e)
  - [topics](#org71c0d2b)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#org50fe421)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#orgb1b712d)
    - [jj merelo, "Raku Recipies"](#org1f5f71a)
  - [topics from last meeting (needs edit)](#orge1197d4)
    - [revisiting this issue:](#org5dd7069)
    - [anonymous scalar variable (the plain $)](#org1db661a)
    - [marton polgar has buggy things to talk about](#orgdc0be40)
    - [weekly challenge&#x2013; much activity](#org9fc4a8a)
  - [personal notes: follow-up](#orgdac67b3)
    - [find links to weekly challenge code presented](#org22bd886)
    - [write some demo scripts exploring some details](#orgfc9d776)
    - [look at marton's code examples, explore the oddities of smartmaches](#org68fc1e2)
    - [report docs bug: is there no precedence list **in order of precedence**](#org267b6b9)
  - [announcements](#orgcfb21d1)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org5fee440)
    - [November 4th: the next raku study group meeting](#org7d7b869)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org7bd7edc)


<a id="orgfe55d6e"></a>

# meeting notes November 20, 2022


<a id="orgd6713b3"></a>

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


<a id="orgf493d9e"></a>

## promotion


<a id="orgdfb1214"></a>

### get on raku irc


<a id="orgf0b0c68"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgae9773e"></a>

### post note to reddit/r/rakulang


<a id="org71c0d2b"></a>

## topics


<a id="org50fe421"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="orgb1b712d"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="org1f5f71a"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer

5.  similar behavior with this R 4 tutorial

    1.  <https://link.springer.com/book/10.1007/978-1-4842-6053-1>


<a id="orge1197d4"></a>

## topics from last meeting (needs edit)


<a id="org5dd7069"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="org1db661a"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="orgdc0be40"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org9fc4a8a"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="orgdac67b3"></a>

## personal notes: follow-up


<a id="org22bd886"></a>

### find links to weekly challenge code presented


<a id="orgfc9d776"></a>

### write some demo scripts exploring some details


<a id="org68fc1e2"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org267b6b9"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orgcfb21d1"></a>

## announcements


<a id="org5fee440"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org7d7b869"></a>

### November 4th: the next raku study group meeting


<a id="org7bd7edc"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
