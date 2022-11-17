- [meeting notes November 20, 2022](#orgbbf5127)
  - [the raku study group](#org971f8fc)
  - [promotion](#orgbc885d0)
    - [get on raku irc](#orgdc018b2)
    - [email liz, suggest a mention in raku weekly news?](#org5605d48)
    - [post note to reddit/r/rakulang](#org90938a4)
  - [topics](#org2b9d524)
    - [jj merelo, "Raku Recipies"](#org5d443da)
  - [topics from last meeting (needs edit)](#org0632715)
    - [revisiting this issue:](#orgc6c765f)
    - [anonymous scalar variable (the plain $)](#org0edd311)
    - [marton polgar has buggy things to talk about](#orgb73beb9)
    - [weekly challenge&#x2013; much activity](#orgacd0871)
  - [personal notes: follow-up](#org8345748)
    - [find links to weekly challenge code presented](#org8127063)
    - [write some demo scripts exploring some details](#org4b0b068)
    - [look at marton's code examples, explore the oddities of smartmaches](#org2c45d9f)
    - [report docs bug: is there no precedence list **in order of precedence**](#org0ad3ddf)
  - [announcements](#org2a0ddc9)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org831c247)
    - [November 20th: the next raku study group meeting](#org0a2dc23)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#orga52c00b)


<a id="orgbbf5127"></a>

# meeting notes November 20, 2022


<a id="org971f8fc"></a>

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


<a id="orgbc885d0"></a>

## promotion


<a id="orgdc018b2"></a>

### get on raku irc


<a id="org5605d48"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org90938a4"></a>

### post note to reddit/r/rakulang


<a id="org2b9d524"></a>

## topics


<a id="org5d443da"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer


<a id="org0632715"></a>

## topics from last meeting (needs edit)


<a id="orgc6c765f"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="org0edd311"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="orgb73beb9"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="orgacd0871"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org8345748"></a>

## personal notes: follow-up


<a id="org8127063"></a>

### find links to weekly challenge code presented


<a id="org4b0b068"></a>

### write some demo scripts exploring some details


<a id="org2c45d9f"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org0ad3ddf"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="org2a0ddc9"></a>

## announcements


<a id="org831c247"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org0a2dc23"></a>

### November 20th: the next raku study group meeting


<a id="orga52c00b"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
