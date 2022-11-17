- [meeting notes November 20, 2022](#orgda22f1e)
  - [the raku study group](#org9336f8b)
  - [promotion](#org8c818ab)
    - [get on raku irc](#org1112b05)
    - [email liz, suggest a mention in raku weekly news?](#org28c6ea3)
    - [post note to reddit/r/rakulang](#org11e4465)
  - [topics](#org917daf2)
    - [revisiting this issue:](#org19ad7df)
    - [anonymous scalar variable (the plain $)](#orgd4cc3e4)
    - [marton polgar has buggy things to talk about](#org40874c4)
    - [weekly challenge&#x2013; much activity](#org3e10efe)
  - [personal notes: follow-up](#org03ed0ba)
    - [find links to weekly challenge code presented](#orgbfa2e9a)
    - [write some demo scripts exploring some details](#org846c425)
    - [look at marton's code examples, explore the oddities of smartmaches](#org31c42eb)
    - [report docs bug: is there no precedence list **in order of precedence**](#org7ee0795)
  - [announcements](#org4d7cfc2)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgb14ac14)
    - [November 20th: the next raku study group meeting](#org9b1da40)
    - [By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?](#orgd5c4b78)


<a id="orgda22f1e"></a>

# meeting notes November 20, 2022


<a id="org9336f8b"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022nov20.md>
        
        2.  source file (for corrections, etc)
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022nov20.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022nov20>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022nov06.md>


<a id="org8c818ab"></a>

## promotion


<a id="org1112b05"></a>

### get on raku irc


<a id="org28c6ea3"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org11e4465"></a>

### post note to reddit/r/rakulang


<a id="org917daf2"></a>

## topics


<a id="org19ad7df"></a>

### revisiting this issue:

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  Rob likes Marton's explanation, but suggests an error message would be good


<a id="orgd4cc3e4"></a>

### anonymous scalar variable (the plain $)

1.  but what if you use a Capture object?


<a id="org40874c4"></a>

### marton polgar has buggy things to talk about

1.  smarmatches against match/substitution expressions behave strangely

2.  smartmatch sometimes acts like a given, loads $\_ when you don't expect.

3.  <https://github.com/Raku/problem-solving/issues/250>

4.  <https://github.com/Raku/problem-solving/issues/346>

5.  bruce gray aside:

    1.  docker run -v c:/Users/bruce:/mnt/me &#x2013;rm -it jjmerelo/alpine-raku:2020.01    /mnt/me/bb02<sub>c6.raku</sub>

6.  marton likes "bisectable" feature on irc


<a id="org3e10efe"></a>

### weekly challenge&#x2013; much activity

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-189/>


<a id="org03ed0ba"></a>

## personal notes: follow-up


<a id="orgbfa2e9a"></a>

### find links to weekly challenge code presented


<a id="org846c425"></a>

### write some demo scripts exploring some details


<a id="org31c42eb"></a>

### look at marton's code examples, explore the oddities of smartmaches


<a id="org7ee0795"></a>

### report docs bug: is there no precedence list **in order of precedence**


<a id="org4d7cfc2"></a>

## announcements


<a id="orgb14ac14"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org9b1da40"></a>

### November 20th: the next raku study group meeting


<a id="orgd5c4b78"></a>

### By the way: I've upgraded my internet to at&t fiber.  Anyone see any freezes, etc?

1.  at&t 500: seeing 560Mbs download **and** upload
