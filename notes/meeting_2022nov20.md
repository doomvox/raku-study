- [meeting notes November 20, 2022](#org9716d94)
  - [the raku study group](#org4911562)
  - [promotion](#orge0c602e)
    - [get on raku irc](#orga8de088)
    - [other](#orgdcf66e4)
  - [topics](#orgaeb169b)
    - [next meeting in 3 weeks, December 4th (skip thanksgiving weekend)](#org376c31d)
    - [Q: how would people feel about a new years day meeting, Jan 1st, 2023?](#orgd141c57)
    - [jj merelo, "Raku Recipies"](#org02ad3b5)
  - [topics from last meeting (needs edit)](#orgf0337ed)
    - [revisiting this issue:](#org23fb755)
    - [anonymous scalar variable (the plain $)](#orga3db427)
    - [marton polgar has buggy things to talk about](#org347b3a5)
    - [weekly challenge&#x2013; much activity](#org3c4fa92)
  - [personal notes: follow-up](#orgd54ecc8)
    - [find links to weekly challenge code presented](#orga7b4d11)
    - [write some demo scripts exploring some details](#orgc26f609)
    - [look at marton's code examples, explore the oddities of smartmaches](#org60da6b5)
    - [report docs bug: is there no precedence list **in order of precedence**](#org2c1620b)
  - [announcements](#orgcf16005)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org305e32a)
    - [December 4th: the next raku study group meeting](#org35cb18d)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org8195559)


<a id="org9716d94"></a>

# meeting notes November 20, 2022


<a id="org4911562"></a>

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


<a id="orge0c602e"></a>

## promotion


<a id="orga8de088"></a>

### get on raku irc


<a id="orgdcf66e4"></a>

### other

1.  email liz, suggest a mention in raku weekly news?

2.  post note to reddit/r/rakulang


<a id="orgaeb169b"></a>

## topics


<a id="org376c31d"></a>

### next meeting in 3 weeks, December 4th (skip thanksgiving weekend)


<a id="orgd141c57"></a>

### Q: how would people feel about a new years day meeting, Jan 1st, 2023?


<a id="org02ad3b5"></a>

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


<a id="orgf0337ed"></a>

## topics from last meeting (needs edit)


<a id="org23fb755"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orga3db427"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org347b3a5"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org3c4fa92"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="orgd54ecc8"></a>

## personal notes: follow-up


<a id="orga7b4d11"></a>

### find links to weekly challenge code presented


<a id="orgc26f609"></a>

### write some demo scripts exploring some details


<a id="org60da6b5"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org2c1620b"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orgcf16005"></a>

## announcements


<a id="org305e32a"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org35cb18d"></a>

### December 4th: the next raku study group meeting


<a id="org8195559"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
