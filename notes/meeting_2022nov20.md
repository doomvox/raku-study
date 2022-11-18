- [meeting notes November 20, 2022](#org77506fa)
  - [the raku study group](#org915c1b0)
  - [promotion](#orgb313fa4)
    - [get on raku irc](#orgeea674c)
    - [email liz, suggest a mention in raku weekly news?](#org3404789)
    - [post note to reddit/r/rakulang](#orgba80b80)
  - [topics](#org90314ae)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#org54d3859)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#org065bc08)
    - [jj merelo, "Raku Recipies"](#orgc239b80)
  - [topics from last meeting (needs edit)](#org43da6c5)
    - [revisiting this issue:](#orgfe928c0)
    - [anonymous scalar variable (the plain $)](#org2cc0e3c)
    - [marton polgar has buggy things to talk about](#orge4662e8)
    - [weekly challenge&#x2013; much activity](#org02912cc)
  - [personal notes: follow-up](#org21c6c4b)
    - [find links to weekly challenge code presented](#org17cd452)
    - [write some demo scripts exploring some details](#org1ad0ad9)
    - [look at marton's code examples, explore the oddities of smartmaches](#orgaccd442)
    - [report docs bug: is there no precedence list **in order of precedence**](#org5dbb06a)
  - [announcements](#orgb6c0ac1)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org265259d)
    - [November 4th: the next raku study group meeting](#orgc024b22)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#orgac3cad9)


<a id="org77506fa"></a>

# meeting notes November 20, 2022


<a id="org915c1b0"></a>

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


<a id="orgb313fa4"></a>

## promotion


<a id="orgeea674c"></a>

### get on raku irc


<a id="org3404789"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgba80b80"></a>

### post note to reddit/r/rakulang


<a id="org90314ae"></a>

## topics


<a id="org54d3859"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="org065bc08"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="orgc239b80"></a>

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


<a id="org43da6c5"></a>

## topics from last meeting (needs edit)


<a id="orgfe928c0"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="org2cc0e3c"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="orge4662e8"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org02912cc"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org21c6c4b"></a>

## personal notes: follow-up


<a id="org17cd452"></a>

### find links to weekly challenge code presented


<a id="org1ad0ad9"></a>

### write some demo scripts exploring some details


<a id="orgaccd442"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org5dbb06a"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orgb6c0ac1"></a>

## announcements


<a id="org265259d"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgc024b22"></a>

### November 4th: the next raku study group meeting


<a id="orgac3cad9"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
