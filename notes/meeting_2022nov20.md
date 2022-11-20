- [meeting notes November 20, 2022](#org5cbaba6)
  - [the raku study group](#org8099382)
  - [promotion](#org13fce61)
    - [get on raku irc](#org7d81d45)
    - [other](#org4f614cc)
  - [topics](#org911b3ef)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#orgcbe348f)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#org1c39b00)
    - [jj merelo, "Raku Recipies"](#orgf13c000)
  - [topics from last meeting (needs edit)](#orga147b3d)
    - [revisiting this issue:](#org518fa10)
    - [anonymous scalar variable (the plain $)](#orgdb9a4f6)
    - [marton polgar has buggy things to talk about](#org95910e4)
    - [weekly challenge&#x2013; much activity](#org18a06da)
  - [personal notes: follow-up](#orgbe35d4a)
    - [find links to weekly challenge code presented](#orgaf43e92)
    - [write some demo scripts exploring some details](#org392ce68)
    - [look at marton's code examples, explore the oddities of smartmaches](#org876ad6b)
    - [report docs bug: is there no precedence list **in order of precedence**](#org9915569)
  - [announcements](#org2884a86)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org38b249e)
    - [December 4th: the next raku study group meeting](#org0682192)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org7de42b9)


<a id="org5cbaba6"></a>

# meeting notes November 20, 2022


<a id="org8099382"></a>

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


<a id="org13fce61"></a>

## promotion


<a id="org7d81d45"></a>

### get on raku irc


<a id="org4f614cc"></a>

### other

1.  email liz, suggest a mention in raku weekly news?

2.  post note to reddit/r/rakulang


<a id="org911b3ef"></a>

## topics


<a id="orgcbe348f"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="org1c39b00"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="orgf13c000"></a>

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

7.  Perl5: William Michels question about a perl rest-api demo

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022nov20/rest_api_demo.pl>
    
    2.  local: /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022nov20/rest<sub>api</sub><sub>demo.pl</sub>


<a id="orga147b3d"></a>

## topics from last meeting (needs edit)


<a id="org518fa10"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orgdb9a4f6"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org95910e4"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org18a06da"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="orgbe35d4a"></a>

## personal notes: follow-up


<a id="orgaf43e92"></a>

### find links to weekly challenge code presented


<a id="org392ce68"></a>

### write some demo scripts exploring some details


<a id="org876ad6b"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org9915569"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="org2884a86"></a>

## announcements


<a id="org38b249e"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org0682192"></a>

### December 4th: the next raku study group meeting


<a id="org7de42b9"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
