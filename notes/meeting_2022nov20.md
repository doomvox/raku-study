- [meeting notes November 20, 2022](#org99027d2)
  - [the raku study group](#org7b15a01)
  - [promotion](#orgc6eb4dd)
    - [get on raku irc](#org1de7c28)
    - [email liz, suggest a mention in raku weekly news?](#orga03775d)
    - [post note to reddit/r/rakulang](#orge75f620)
  - [topics](#org6dc8a01)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#org6488e2b)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#org27c59ad)
    - [jj merelo, "Raku Recipies"](#org8d3db2f)
  - [topics from last meeting (needs edit)](#orgff5e6b4)
    - [revisiting this issue:](#orgd42520d)
    - [anonymous scalar variable (the plain $)](#orgf25d188)
    - [marton polgar has buggy things to talk about](#orgf6003f2)
    - [weekly challenge&#x2013; much activity](#orgeef027b)
  - [personal notes: follow-up](#org5caf46f)
    - [find links to weekly challenge code presented](#orgebc58eb)
    - [write some demo scripts exploring some details](#org5f1c5bf)
    - [look at marton's code examples, explore the oddities of smartmaches](#orgae9eb09)
    - [report docs bug: is there no precedence list **in order of precedence**](#org9a53b5c)
  - [announcements](#orgd52d63d)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgb0695e9)
    - [November 4th: the next raku study group meeting](#orgea9052d)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#orgd6888db)


<a id="org99027d2"></a>

# meeting notes November 20, 2022


<a id="org7b15a01"></a>

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


<a id="orgc6eb4dd"></a>

## promotion


<a id="org1de7c28"></a>

### get on raku irc


<a id="orga03775d"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orge75f620"></a>

### post note to reddit/r/rakulang


<a id="org6dc8a01"></a>

## topics


<a id="org6488e2b"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="org27c59ad"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="org8d3db2f"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer

5.  saw similar things with this R 4 tutorial book

    1.  <https://link.springer.com/book/10.1007/978-1-4842-6053-1>
    
    2.  by the way, R 4.0 is out
    
        1.  <https://analyticsindiamag.com/r-4-0-released-whats-in-it-for-data-scientists/>
        
            1.  the regexs use the PCRE2 library now
            
            2.  uses reference counting on objects
            
            3.  getting rid of braindead strings-as-factors behavior


<a id="orgff5e6b4"></a>

## topics from last meeting (needs edit)


<a id="orgd42520d"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orgf25d188"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="orgf6003f2"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="orgeef027b"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org5caf46f"></a>

## personal notes: follow-up


<a id="orgebc58eb"></a>

### find links to weekly challenge code presented


<a id="org5f1c5bf"></a>

### write some demo scripts exploring some details


<a id="orgae9eb09"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org9a53b5c"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orgd52d63d"></a>

## announcements


<a id="orgb0695e9"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgea9052d"></a>

### November 4th: the next raku study group meeting


<a id="orgd6888db"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
