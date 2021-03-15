- [meeting notes Mar 14, 2021](#orgd2d0756)
  - [the usual meeting links:](#org32193ea)
    - [the code examples usually go here:](#orgb655e35)
    - [the meeting notes (this \*.org file) gets automatically exported:](#org4d58e27)
    - [The SF Perl mailing list is good for general discussion.  Subscription info:](#orgc35c107)
    - [A lot of us hang out on the perl6-users mailing list.  Subscription info:](#org4604077)
  - [quick bits from last week:](#org78f11b2)
  - [agenda this week](#org72dc595)
    - [reduce (Bruce Gray)](#org74a1c2c)
    - [Chinese zodiac problem and raku's pairwise](#org923cc5f)
    - [regexs, a 69 cent tour:](#org0320a13)
  - [other topics:](#org0dfd92b)
    - [yet another alternative raku documentation project?](#org0cb9362)
  - [more parody book covers](#orgbcf50ed)
    - [<https://datavizblog.com/2018/12/21/dataviz-humor-oreilly-programming-book-parody-covers/>](#org469c7f9)
  - [possible topics (carried over)](#org8199254)


<a id="orgd2d0756"></a>

# meeting notes Mar 14, 2021


<a id="org32193ea"></a>

## the usual meeting links:


<a id="orgb655e35"></a>

### the code examples usually go here:

<https://github.com/doomvox/raku-study/tree/main/bin/2021mar14>


<a id="org4d58e27"></a>

### the meeting notes (this \*.org file) gets automatically exported:

<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar14.md>


<a id="orgc35c107"></a>

### The SF Perl mailing list is good for general discussion.  Subscription info:

1.  <http://sf.pm.org/>


<a id="org4604077"></a>

### A lot of us hang out on the perl6-users mailing list.  Subscription info:

1.  <https://raku.org/community/>


<a id="org78f11b2"></a>

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


<a id="org72dc595"></a>

## agenda this week


<a id="org74a1c2c"></a>

### reduce (Bruce Gray)

1.  <https://github.com/Raku/doc/issues/3817>

2.  <http://rosettacode.org/wiki/Horner%27s_rule_for_polynomial_evaluation>


<a id="org923cc5f"></a>

### Chinese zodiac problem and raku's pairwise

1.  <http://rosettacode.org/wiki/Chinese_zodiac#Raku>

2.  <https://raku-musings.com/playing-zodiac.html>


<a id="org0320a13"></a>

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


<a id="org0dfd92b"></a>

## other topics:


<a id="org0cb9362"></a>

### yet another alternative raku documentation project?

1.  <https://www.reddit.com/r/rakulang/comments/m3jt6e/looking_for_volunteers/>


<a id="orgbcf50ed"></a>

## more parody book covers


<a id="org469c7f9"></a>

### <https://datavizblog.com/2018/12/21/dataviz-humor-oreilly-programming-book-parody-covers/>


<a id="org8199254"></a>

## possible topics (carried over)

1.  a stupid mistake that isn't: naming a method with a leading ^

    1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>
    
        1.  should this generate a warning/error?

2.  Steven Lembark

    1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>
    
        1.  slide21:  "unit sub MAIN { &#x2026;"  unit?
    
    2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>

3.  adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

    1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>

4.  andrew shitov "Perl 6 at a Glance"

    1.  <https://andrewshitov.com/perl6-at-a-glance/>
    
    2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>

5.  perl weekly challenge:

    1.  <https://perlweeklychallenge.org/>

6.  promises and threads

    1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>
    
    2.  Jonathan Worthington
    
        1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
        
        2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
