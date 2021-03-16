- [meeting notes Mar 14, 2021](#orgf3db7e8)
  - [the usual meeting links:](#orge600bc6)
    - [the code examples usually go here:](#org0c4b32c)
    - [the meeting notes (this \*.org file) gets automatically exported:](#org1f7bb0c)
    - [The SF Perl mailing list is good for general discussion.  Subscription info:](#orgc85b19c)
    - [A lot of us hang out on the perl6-users mailing list.  Subscription info:](#org428f1e4)
  - [quick bits from last week:](#org369fd47)
  - [stuff for this week](#org7126deb)
    - [reduce (Bruce Gray)](#org689224a)
    - [Chinese zodiac problem and raku's pairwise](#orgf6e72e9)
    - [regexs, a 69 cent tour:](#org7581b29)
  - [other topics:](#org36cdbd7)
    - [yet another alternative raku documentation project?](#org0f5625c)
  - [more parody book covers](#org8ddc76e)
    - [<https://datavizblog.com/2018/12/21/dataviz-humor-oreilly-programming-book-parody-covers/>](#orgf21d406)


<a id="orgf3db7e8"></a>

# meeting notes Mar 14, 2021


<a id="orge600bc6"></a>

## the usual meeting links:


<a id="org0c4b32c"></a>

### the code examples usually go here:

<https://github.com/doomvox/raku-study/tree/main/bin/2021mar14>


<a id="org1f7bb0c"></a>

### the meeting notes (this \*.org file) gets automatically exported:

<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar14.md>


<a id="orgc85b19c"></a>

### The SF Perl mailing list is good for general discussion.  Subscription info:

1.  <http://sf.pm.org/>


<a id="org428f1e4"></a>

### A lot of us hang out on the perl6-users mailing list.  Subscription info:

1.  <https://raku.org/community/>


<a id="org369fd47"></a>

## quick bits from last week:

1.  linux

    1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"
    
        1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
        
        2.  The vulnerability is in the "Lenovo Solution Center", but installing linux first blows that crap away

2.  books

    1.  shadow novel where the bad guys speak esperanto
    
        1.  "Crime Under Cover" (1941) by Maxwell Grant
        
        2.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>
    
    2.  regex character classes example (hm?)
    
        <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>
    
    3.  Q: is there a raku equivalent of \K?  A: yes, it's done with "capture markers", <( &#x2026; )>


<a id="org7126deb"></a>

## stuff for this week


<a id="org689224a"></a>

### reduce (Bruce Gray)

1.  <https://github.com/Raku/doc/issues/3817>

2.  <http://rosettacode.org/wiki/Horner%27s_rule_for_polynomial_evaluation>


<a id="orgf6e72e9"></a>

### Chinese zodiac problem and raku's pairwise

1.  <http://rosettacode.org/wiki/Chinese_zodiac#Raku>

2.  <https://raku-musings.com/playing-zodiac.html>


<a id="org7581b29"></a>

### regexs, a 69 cent tour:

1.  that regex problem: munging sudoers lines via a sysadmin tool

    1.  raku translation
    
        1.  <https://github.com/doomvox/raku-study/blob/main/bin/2021feb28/regex_append_to_sudoers_line.raku>
        
        2.  comparison of p5 and raku regexes
        
            1.  <https://github.com/doomvox/raku-study/blob/main/bin/2021feb28/sudoers_append_regexes.rectpara>

2.  quoting, interpolating, matching

    1.  question about regex interpolation and captures
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/03/msg9786.html>
        
        2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/03/msg9791.html>

1.  grammars

    1.  Brad Gilbert complains about reaching for grammars too soon
    
        <https://stackoverflow.com/questions/66266790/the-token-of-raku-grammar-doesnt-not-hit-the-first-occurences-of-a-document-but>
    
    2.  zoffix talk july 28, 2018 intro p6 regexes and grammars
    
        1.  <https://www.youtube.com/watch?v=TUmFAPvssrk>


<a id="org36cdbd7"></a>

## other topics:


<a id="org0f5625c"></a>

### yet another alternative raku documentation project?

1.  <https://www.reddit.com/r/rakulang/comments/m3jt6e/looking_for_volunteers/>


<a id="org8ddc76e"></a>

## more parody book covers


<a id="orgf21d406"></a>

### <https://datavizblog.com/2018/12/21/dataviz-humor-oreilly-programming-book-parody-covers/>
