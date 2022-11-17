- [meeting notes November 20, 2022](#org90473c2)
  - [the raku study group](#org59aea2a)
  - [promotion](#org9a28432)
    - [get on raku irc](#org856a6a9)
    - [email liz, suggest a mention in raku weekly news?](#orgd852eb7)
    - [post note to reddit/r/rakulang](#org92203fd)
  - [topics](#org9fbba19)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#orgffb0685)
    - [jj merelo, "Raku Recipies"](#org12b7635)
  - [topics from last meeting (needs edit)](#orgc7e9edb)
    - [revisiting this issue:](#orgfbbe051)
    - [anonymous scalar variable (the plain $)](#orga1d36c5)
    - [marton polgar has buggy things to talk about](#org5510abf)
    - [weekly challenge&#x2013; much activity](#orgb9dfb78)
  - [personal notes: follow-up](#org1c8398c)
    - [find links to weekly challenge code presented](#orge3e9930)
    - [write some demo scripts exploring some details](#org7e0676a)
    - [look at marton's code examples, explore the oddities of smartmaches](#orgea90406)
    - [report docs bug: is there no precedence list **in order of precedence**](#org12f36ca)
  - [announcements](#orgfe59081)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orge8c73fe)
    - [November 4th: the next raku study group meeting](#org7ab3cf3)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org910f5d7)


<a id="org90473c2"></a>

# meeting notes November 20, 2022


<a id="org59aea2a"></a>

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


<a id="org9a28432"></a>

## promotion


<a id="org856a6a9"></a>

### get on raku irc


<a id="orgd852eb7"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org92203fd"></a>

### post note to reddit/r/rakulang


<a id="org9fbba19"></a>

## topics


<a id="orgffb0685"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="org12b7635"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer


<a id="orgc7e9edb"></a>

## topics from last meeting (needs edit)


<a id="orgfbbe051"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orga1d36c5"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org5510abf"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="orgb9dfb78"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org1c8398c"></a>

## personal notes: follow-up


<a id="orge3e9930"></a>

### find links to weekly challenge code presented


<a id="org7e0676a"></a>

### write some demo scripts exploring some details


<a id="orgea90406"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org12f36ca"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orgfe59081"></a>

## announcements


<a id="orge8c73fe"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org7ab3cf3"></a>

### November 4th: the next raku study group meeting


<a id="org910f5d7"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
