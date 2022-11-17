- [meeting notes November 20, 2022](#org8e914bc)
  - [the raku study group](#org8314050)
  - [promotion](#orgee797be)
    - [get on raku irc](#org43746e2)
    - [email liz, suggest a mention in raku weekly news?](#orgfb2e9d2)
    - [post note to reddit/r/rakulang](#org056980a)
  - [topics](#orgf5a28e8)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#org9bc7b25)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#org1af101d)
    - [jj merelo, "Raku Recipies"](#orgbc500d8)
  - [topics from last meeting (needs edit)](#org982202e)
    - [revisiting this issue:](#orgd4028b6)
    - [anonymous scalar variable (the plain $)](#orge1d17f3)
    - [marton polgar has buggy things to talk about](#orgd0f3193)
    - [weekly challenge&#x2013; much activity](#org8155475)
  - [personal notes: follow-up](#org32bba7e)
    - [find links to weekly challenge code presented](#org89d7cda)
    - [write some demo scripts exploring some details](#org910fffe)
    - [look at marton's code examples, explore the oddities of smartmaches](#orge414d5f)
    - [report docs bug: is there no precedence list **in order of precedence**](#org03e6cb5)
  - [announcements](#org755c5e2)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org92bb083)
    - [November 4th: the next raku study group meeting](#orga5d2631)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org7f37cc7)


<a id="org8e914bc"></a>

# meeting notes November 20, 2022


<a id="org8314050"></a>

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


<a id="orgee797be"></a>

## promotion


<a id="org43746e2"></a>

### get on raku irc


<a id="orgfb2e9d2"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org056980a"></a>

### post note to reddit/r/rakulang


<a id="orgf5a28e8"></a>

## topics


<a id="org9bc7b25"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="org1af101d"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="orgbc500d8"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer


<a id="org982202e"></a>

## topics from last meeting (needs edit)


<a id="orgd4028b6"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orge1d17f3"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="orgd0f3193"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org8155475"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org32bba7e"></a>

## personal notes: follow-up


<a id="org89d7cda"></a>

### find links to weekly challenge code presented


<a id="org910fffe"></a>

### write some demo scripts exploring some details


<a id="orge414d5f"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org03e6cb5"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="org755c5e2"></a>

## announcements


<a id="org92bb083"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orga5d2631"></a>

### November 4th: the next raku study group meeting


<a id="org7f37cc7"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
