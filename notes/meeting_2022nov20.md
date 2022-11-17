- [meeting notes November 20, 2022](#org22bf189)
  - [the raku study group](#orge8cf944)
  - [promotion](#orgc587f50)
    - [get on raku irc](#org19a7efa)
    - [email liz, suggest a mention in raku weekly news?](#org3143c88)
    - [post note to reddit/r/rakulang](#org1e7458a)
  - [topics](#org0816c45)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#org589742f)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#orgddbaa9f)
    - [jj merelo, "Raku Recipies"](#orgf35968b)
  - [topics from last meeting (needs edit)](#org850631e)
    - [revisiting this issue:](#orgfce6a6f)
    - [anonymous scalar variable (the plain $)](#org3bbaecb)
    - [marton polgar has buggy things to talk about](#org10e3cab)
    - [weekly challenge&#x2013; much activity](#org6215345)
  - [personal notes: follow-up](#org3f20ab1)
    - [find links to weekly challenge code presented](#orgbd43608)
    - [write some demo scripts exploring some details](#org607348c)
    - [look at marton's code examples, explore the oddities of smartmaches](#org9d6442e)
    - [report docs bug: is there no precedence list **in order of precedence**](#org4e05d99)
  - [announcements](#org8eef371)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org60242a3)
    - [November 4th: the next raku study group meeting](#orgd32c458)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#orgaf8cc96)


<a id="org22bf189"></a>

# meeting notes November 20, 2022


<a id="orge8cf944"></a>

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


<a id="orgc587f50"></a>

## promotion


<a id="org19a7efa"></a>

### get on raku irc


<a id="org3143c88"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org1e7458a"></a>

### post note to reddit/r/rakulang


<a id="org0816c45"></a>

## topics


<a id="org589742f"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="orgddbaa9f"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="orgf35968b"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer

5.  similar behavior with this R 4 tutorial book

    1.  <https://link.springer.com/book/10.1007/978-1-4842-6053-1>


<a id="org850631e"></a>

## topics from last meeting (needs edit)


<a id="orgfce6a6f"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="org3bbaecb"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org10e3cab"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org6215345"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org3f20ab1"></a>

## personal notes: follow-up


<a id="orgbd43608"></a>

### find links to weekly challenge code presented


<a id="org607348c"></a>

### write some demo scripts exploring some details


<a id="org9d6442e"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org4e05d99"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="org8eef371"></a>

## announcements


<a id="org60242a3"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgd32c458"></a>

### November 4th: the next raku study group meeting


<a id="orgaf8cc96"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
