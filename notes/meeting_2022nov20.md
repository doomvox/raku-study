- [meeting notes November 20, 2022](#org220294e)
  - [the raku study group](#orgf1f4df5)
  - [promotion](#org4178e9c)
    - [get on raku irc](#orgf175421)
    - [email liz, suggest a mention in raku weekly news?](#orgeea8251)
    - [post note to reddit/r/rakulang](#org12b14ef)
  - [topics](#org90a6c06)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#orgee5b644)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#org86886bb)
    - [jj merelo, "Raku Recipies"](#orgae88537)
  - [topics from last meeting (needs edit)](#org3e47bf5)
    - [revisiting this issue:](#orgcfda881)
    - [anonymous scalar variable (the plain $)](#org0303993)
    - [marton polgar has buggy things to talk about](#org22e4284)
    - [weekly challenge&#x2013; much activity](#orgdbef9cd)
  - [personal notes: follow-up](#orgaf675a2)
    - [find links to weekly challenge code presented](#org3be43e2)
    - [write some demo scripts exploring some details](#org01edf90)
    - [look at marton's code examples, explore the oddities of smartmaches](#org055ceb0)
    - [report docs bug: is there no precedence list **in order of precedence**](#orgcaecff6)
  - [announcements](#orge033eb9)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org54d9a6a)
    - [December 4th: the next raku study group meeting](#org1adbf32)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org6fd4221)


<a id="org220294e"></a>

# meeting notes November 20, 2022


<a id="orgf1f4df5"></a>

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


<a id="org4178e9c"></a>

## promotion


<a id="orgf175421"></a>

### get on raku irc


<a id="orgeea8251"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org12b14ef"></a>

### post note to reddit/r/rakulang


<a id="org90a6c06"></a>

## topics


<a id="orgee5b644"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="org86886bb"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="orgae88537"></a>

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


<a id="org3e47bf5"></a>

## topics from last meeting (needs edit)


<a id="orgcfda881"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="org0303993"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org22e4284"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="orgdbef9cd"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="orgaf675a2"></a>

## personal notes: follow-up


<a id="org3be43e2"></a>

### find links to weekly challenge code presented


<a id="org01edf90"></a>

### write some demo scripts exploring some details


<a id="org055ceb0"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="orgcaecff6"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orge033eb9"></a>

## announcements


<a id="org54d9a6a"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org1adbf32"></a>

### December 4th: the next raku study group meeting


<a id="org6fd4221"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
