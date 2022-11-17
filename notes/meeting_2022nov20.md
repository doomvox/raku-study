- [meeting notes November 20, 2022](#org832beb9)
  - [the raku study group](#orga139a48)
  - [promotion](#orgd5e4a4b)
    - [get on raku irc](#orgacaa02f)
    - [email liz, suggest a mention in raku weekly news?](#org811f246)
    - [post note to reddit/r/rakulang](#orgf1c271c)
  - [topics](#org91d3dda)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#orgea93a72)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#orgbea5cc4)
    - [jj merelo, "Raku Recipies"](#org6ca0999)
  - [topics from last meeting (needs edit)](#org8ba860e)
    - [revisiting this issue:](#org06e4613)
    - [anonymous scalar variable (the plain $)](#orgcbb1303)
    - [marton polgar has buggy things to talk about](#orgb7628fc)
    - [weekly challenge&#x2013; much activity](#org3e9cf6f)
  - [personal notes: follow-up](#org61b664d)
    - [find links to weekly challenge code presented](#org13cd7d0)
    - [write some demo scripts exploring some details](#org5af5201)
    - [look at marton's code examples, explore the oddities of smartmaches](#org391fdb3)
    - [report docs bug: is there no precedence list **in order of precedence**](#org44916d8)
  - [announcements](#orgb16fbae)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org64e2f7e)
    - [November 4th: the next raku study group meeting](#org217b108)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org0dd20a0)


<a id="org832beb9"></a>

# meeting notes November 20, 2022


<a id="orga139a48"></a>

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


<a id="orgd5e4a4b"></a>

## promotion


<a id="orgacaa02f"></a>

### get on raku irc


<a id="org811f246"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgf1c271c"></a>

### post note to reddit/r/rakulang


<a id="org91d3dda"></a>

## topics


<a id="orgea93a72"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="orgbea5cc4"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="org6ca0999"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer

5.  saw similar things with this R 4 tutorial book

    1.  <https://link.springer.com/book/10.1007/978-1-4842-6053-1>
    
    2.  by the way, R 4.0 is out
    
        1.  <https://analyticsindiamag.com/r-4-0-released-whats-in-it-for-data-scientists/>


<a id="org8ba860e"></a>

## topics from last meeting (needs edit)


<a id="org06e4613"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orgcbb1303"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="orgb7628fc"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org3e9cf6f"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org61b664d"></a>

## personal notes: follow-up


<a id="org13cd7d0"></a>

### find links to weekly challenge code presented


<a id="org5af5201"></a>

### write some demo scripts exploring some details


<a id="org391fdb3"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org44916d8"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orgb16fbae"></a>

## announcements


<a id="org64e2f7e"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org217b108"></a>

### November 4th: the next raku study group meeting


<a id="org0dd20a0"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
