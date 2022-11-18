- [meeting notes November 20, 2022](#orgc603332)
  - [the raku study group](#orgec57b55)
  - [promotion](#orgbf94944)
    - [get on raku irc](#orga445204)
    - [email liz, suggest a mention in raku weekly news?](#orgb857b27)
    - [post note to reddit/r/rakulang](#orgb6e97a5)
  - [topics](#org2bcc4c6)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#org2d06cd1)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#orgc4e0d22)
    - [jj merelo, "Raku Recipies"](#org1dd2053)
  - [topics from last meeting (needs edit)](#org88cb0c8)
    - [revisiting this issue:](#org6ab2235)
    - [anonymous scalar variable (the plain $)](#org1ed9e1c)
    - [marton polgar has buggy things to talk about](#org5d3b219)
    - [weekly challenge&#x2013; much activity](#orgbfb8d72)
  - [personal notes: follow-up](#orgb909526)
    - [find links to weekly challenge code presented](#orgc7ef7dc)
    - [write some demo scripts exploring some details](#orgbdebb07)
    - [look at marton's code examples, explore the oddities of smartmaches](#orgb38df3f)
    - [report docs bug: is there no precedence list **in order of precedence**](#orgb30ad03)
  - [announcements](#org2792e9f)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org42cf3b0)
    - [December 4th: the next raku study group meeting](#org3d3b308)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#orgce9a844)


<a id="orgc603332"></a>

# meeting notes November 20, 2022


<a id="orgec57b55"></a>

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


<a id="orgbf94944"></a>

## promotion


<a id="orga445204"></a>

### get on raku irc


<a id="orgb857b27"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgb6e97a5"></a>

### post note to reddit/r/rakulang


<a id="org2bcc4c6"></a>

## topics


<a id="org2d06cd1"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="orgc4e0d22"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="org1dd2053"></a>

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


<a id="org88cb0c8"></a>

## topics from last meeting (needs edit)


<a id="org6ab2235"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="org1ed9e1c"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org5d3b219"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="orgbfb8d72"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="orgb909526"></a>

## personal notes: follow-up


<a id="orgc7ef7dc"></a>

### find links to weekly challenge code presented


<a id="orgbdebb07"></a>

### write some demo scripts exploring some details


<a id="orgb38df3f"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="orgb30ad03"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="org2792e9f"></a>

## announcements


<a id="org42cf3b0"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org3d3b308"></a>

### December 4th: the next raku study group meeting


<a id="orgce9a844"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
