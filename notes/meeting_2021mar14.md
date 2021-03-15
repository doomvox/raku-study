- [meeting notes Mar 14, 2021](#org51a6e72)
  - [the plan:](#org5c5c7e5)
    - [hellos; put links in chat; regexs/grammars this week (anything else?); do old bits first](#org4d3c435)
    - [the usual meeting links:](#orgbfadaed)
  - [quick bits from last week:](#org307dfab)
  - [agenda this week](#orgfadf5a0)
    - [reduce (Bruce Gray)](#org9558969)
    - [Chinese zodiac and pairwise](#org93bfb3e)
    - [regexs, a 69 cent tour:](#orga4e1f4a)
  - [other topics:](#orgb3d1d7e)
    - [yet another alternative raku documentation project?](#orgca03bad)
  - [more parody book covers](#org1736051)
    - [<https://datavizblog.com/2018/12/21/dataviz-humor-oreilly-programming-book-parody-covers/>](#orgb578ed7)
    - [possible topics (carried over)](#org205fa94)


<a id="org51a6e72"></a>

# meeting notes Mar 14, 2021


<a id="org5c5c7e5"></a>

## the plan:


<a id="org4d3c435"></a>

### hellos; put links in chat; regexs/grammars this week (anything else?); do old bits first


<a id="orgbfadaed"></a>

### the usual meeting links:

1.  the code examples usually go here:

    <https://github.com/doomvox/raku-study/tree/main/bin/2021mar14>

2.  the meeting notes (this \*.org file) gets automatically exported:

    <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar14.md>

3.  The SF Perl mailing list is good for general discussion.  Subscription info:

    1.  <http://sf.pm.org/>

4.  A lot of us hang out on the perl6-users mailing list.  Subscription info:

    1.  <https://raku.org/community/>


<a id="org307dfab"></a>

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


<a id="orgfadf5a0"></a>

## agenda this week


<a id="org9558969"></a>

### reduce (Bruce Gray)

1.  <https://github.com/Raku/doc/issues/3817>

2.  <http://rosettacode.org/wiki/Horner%27s_rule_for_polynomial_evaluation>


<a id="org93bfb3e"></a>

### Chinese zodiac and pairwise

1.  <http://rosettacode.org/wiki/Chinese_zodiac#Raku>

2.  <https://raku-musings.com/playing-zodiac.html>


<a id="orga4e1f4a"></a>

### regexs, a 69 cent tour:

1.  the regex problem, munging sudoers lines via a sysadmin tool

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


<a id="orgb3d1d7e"></a>

## other topics:


<a id="orgca03bad"></a>

### yet another alternative raku documentation project?

1.  <https://www.reddit.com/r/rakulang/comments/m3jt6e/looking_for_volunteers/>


<a id="org1736051"></a>

## more parody book covers


<a id="orgb578ed7"></a>

### <https://datavizblog.com/2018/12/21/dataviz-humor-oreilly-programming-book-parody-covers/>


<a id="org205fa94"></a>

### possible topics (carried over)

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
