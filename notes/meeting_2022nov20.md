- [meeting notes November 20, 2022](#org31b6d18)
  - [the raku study group](#org8086848)
  - [promotion](#orgd666b4e)
    - [get on raku irc](#org31cd1c1)
    - [email liz, suggest a mention in raku weekly news?](#org6b1d06d)
    - [post note to reddit/r/rakulang](#orgd4c87a7)
  - [topics](#org1ab4881)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#org1ca60be)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#orgdde6aa6)
    - [jj merelo, "Raku Recipies"](#org2041ef9)
  - [topics from last meeting (needs edit)](#orgb9596d9)
    - [revisiting this issue:](#orgc442f30)
    - [anonymous scalar variable (the plain $)](#org7b3e95e)
    - [marton polgar has buggy things to talk about](#org6ddd970)
    - [weekly challenge&#x2013; much activity](#org6cf2bc1)
  - [personal notes: follow-up](#orgc4b478d)
    - [find links to weekly challenge code presented](#org70ff967)
    - [write some demo scripts exploring some details](#orgd2eaf09)
    - [look at marton's code examples, explore the oddities of smartmaches](#org6ccbe44)
    - [report docs bug: is there no precedence list **in order of precedence**](#org3a34251)
  - [announcements](#org00a2acb)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orga40afa5)
    - [December 4th: the next raku study group meeting](#org2d767ca)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#orgfd08674)


<a id="org31b6d18"></a>

# meeting notes November 20, 2022


<a id="org8086848"></a>

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


<a id="orgd666b4e"></a>

## promotion


<a id="org31cd1c1"></a>

### get on raku irc


<a id="org6b1d06d"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgd4c87a7"></a>

### post note to reddit/r/rakulang


<a id="org1ab4881"></a>

## topics


<a id="org1ca60be"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="orgdde6aa6"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="org2041ef9"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer

5.  notes: code examples up at github

    1.  TODO go through some in advance of having the text?

6.  saw similar things with this R 4 tutorial book

    1.  <https://link.springer.com/book/10.1007/978-1-4842-6053-1>
    
    2.  by the way, R 4.0 came out in 2020
    
        1.  <https://analyticsindiamag.com/r-4-0-released-whats-in-it-for-data-scientists/>
        
            1.  the regexs use the PCRE2 library now
            
            2.  uses reference counting on objects
            
            3.  getting rid of braindead strings-as-factors behavior


<a id="orgb9596d9"></a>

## topics from last meeting (needs edit)


<a id="orgc442f30"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="org7b3e95e"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org6ddd970"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org6cf2bc1"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="orgc4b478d"></a>

## personal notes: follow-up


<a id="org70ff967"></a>

### find links to weekly challenge code presented


<a id="orgd2eaf09"></a>

### write some demo scripts exploring some details


<a id="org6ccbe44"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org3a34251"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="org00a2acb"></a>

## announcements


<a id="orga40afa5"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org2d767ca"></a>

### December 4th: the next raku study group meeting


<a id="orgfd08674"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
