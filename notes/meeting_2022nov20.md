- [meeting notes November 20, 2022](#org8524159)
  - [the raku study group](#org8335478)
  - [promotion](#orge08d720)
    - [get on raku irc](#org9a3c9d1)
    - [email liz, suggest a mention in raku weekly news?](#org7d74954)
    - [post note to reddit/r/rakulang](#org1ad491b)
  - [topics](#org7276e47)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#orgcc5871f)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#orgf9206b7)
    - [jj merelo, "Raku Recipies"](#org0d3dd4b)
  - [topics from last meeting (needs edit)](#orgc03361a)
    - [revisiting this issue:](#org716f511)
    - [anonymous scalar variable (the plain $)](#org40bbf37)
    - [marton polgar has buggy things to talk about](#org3a8ff1f)
    - [weekly challenge&#x2013; much activity](#org13644ab)
  - [personal notes: follow-up](#orgbba55ff)
    - [find links to weekly challenge code presented](#org9342a89)
    - [write some demo scripts exploring some details](#orgd820cca)
    - [look at marton's code examples, explore the oddities of smartmaches](#org05f9386)
    - [report docs bug: is there no precedence list **in order of precedence**](#org68ad2dc)
  - [announcements](#org0e3890c)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org6c0c69a)
    - [December 4th: the next raku study group meeting](#org615e26a)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org00665f4)


<a id="org8524159"></a>

# meeting notes November 20, 2022


<a id="org8335478"></a>

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


<a id="orge08d720"></a>

## promotion


<a id="org9a3c9d1"></a>

### get on raku irc


<a id="org7d74954"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org1ad491b"></a>

### post note to reddit/r/rakulang


<a id="org7276e47"></a>

## topics


<a id="orgcc5871f"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="orgf9206b7"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="org0d3dd4b"></a>

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


<a id="orgc03361a"></a>

## topics from last meeting (needs edit)


<a id="org716f511"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="org40bbf37"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org3a8ff1f"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org13644ab"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="orgbba55ff"></a>

## personal notes: follow-up


<a id="org9342a89"></a>

### find links to weekly challenge code presented


<a id="orgd820cca"></a>

### write some demo scripts exploring some details


<a id="org05f9386"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org68ad2dc"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="org0e3890c"></a>

## announcements


<a id="org6c0c69a"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org615e26a"></a>

### December 4th: the next raku study group meeting


<a id="org00665f4"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
