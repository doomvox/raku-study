- [meeting notes November 20, 2022](#org8c716ac)
  - [the raku study group](#orgcdb3396)
  - [promotion](#orgff636f4)
    - [get on raku irc](#org90c649a)
    - [email liz, suggest a mention in raku weekly news?](#orgde02312)
    - [post note to reddit/r/rakulang](#org6c6b89e)
  - [topics](#org16847bd)
    - [jj merelo, "Raku Recipies"](#orga5a1daf)
  - [topics from last meeting (needs edit)](#orgb049bbe)
    - [revisiting this issue:](#orgfdf82f3)
    - [anonymous scalar variable (the plain $)](#orga440757)
    - [marton polgar has buggy things to talk about](#orgd80f7fa)
    - [weekly challenge&#x2013; much activity](#orgb4ea26e)
  - [personal notes: follow-up](#org4ca5ff5)
    - [find links to weekly challenge code presented](#org27cda89)
    - [write some demo scripts exploring some details](#org1ff8bf9)
    - [look at marton's code examples, explore the oddities of smartmaches](#orgf2b79b3)
    - [report docs bug: is there no precedence list **in order of precedence**](#orgedef43c)
  - [announcements](#orgba227ba)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org6540d8f)
    - [November 4th: the next raku study group meeting](#orga3bc6b2)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#org7cb60cb)


<a id="org8c716ac"></a>

# meeting notes November 20, 2022


<a id="orgcdb3396"></a>

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


<a id="orgff636f4"></a>

## promotion


<a id="org90c649a"></a>

### get on raku irc


<a id="orgde02312"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org6c6b89e"></a>

### post note to reddit/r/rakulang


<a id="org16847bd"></a>

## topics


<a id="orga5a1daf"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer


<a id="orgb049bbe"></a>

## topics from last meeting (needs edit)


<a id="orgfdf82f3"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orga440757"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="orgd80f7fa"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="orgb4ea26e"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org4ca5ff5"></a>

## personal notes: follow-up


<a id="org27cda89"></a>

### find links to weekly challenge code presented


<a id="org1ff8bf9"></a>

### write some demo scripts exploring some details


<a id="orgf2b79b3"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="orgedef43c"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="orgba227ba"></a>

## announcements


<a id="org6540d8f"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orga3bc6b2"></a>

### November 4th: the next raku study group meeting


<a id="org7cb60cb"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
