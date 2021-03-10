- [meeting notes Mar 14, 2021](#orgb45da36)
    - [the usual meeting links:](#orgbe004c2)
  - [agenda (?)](#orgb3c12f1)
    - [69 cent tours](#org829713e)
    - [bits from last week:](#orgacb13ef)
    - [possible topics (carried over)](#orga34640e)


<a id="orgb45da36"></a>

# meeting notes Mar 14, 2021


<a id="orgbe004c2"></a>

### the usual meeting links:

1.  the code examples usually go here:

    <https://github.com/doomvox/raku-study/tree/main/bin/2021mar14>

2.  the meeting notes (this file) gets automatically exported here:

    <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar14.md>

3.  The SF Perl mailing list is good for general discussion.  Subscription info is here:

    1.  <http://sf.pm.org/>

4.  A lot of us hang out on the perl6-users mailing list


<a id="orgb3c12f1"></a>

## agenda (?)


<a id="org829713e"></a>

### 69 cent tours

1.  git

    1.  github

2.  regexs

    1.  quoting, interpolating, matching

3.  grammars


<a id="orgacb13ef"></a>

### bits from last week:

1.  back to that regex problem, munging sudoers lines via a sysadmin tool

    1.  raku translation
    
        1.  <https://github.com/doomvox/raku-study/blob/main/bin/2021feb28/regex_append_to_sudoers_line.raku>
        
        2.  Q: what is up with $0.  When does it work?
        
        3.  <https://github.com/doomvox/raku-study/blob/main/bin/2021feb28/sudoers_append_regexes.rectpara>
    
    2.  regex character classes example
    
        <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>

2.  books

    1.  Aristotle's "Categories" (the first book of the Organon)
    
        1.  the way programmer's think, the source of it all (maybe)
    
    2.  shadow novel where the bad guys speak esperanto
    
        1.  "Crime Under Cover" (1941) by Maxwell Grant
        
        2.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>

3.  linux

    1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"
    
        1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
        
        2.  About the "Lenovo Solution Center".  Installing linux would've blown it away in any case.


<a id="orga34640e"></a>

### possible topics (carried over)

1.  a stupid mistake that isn't: naming a method with a leading ^

    1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>
    
        1.  should this generate a warning/error?

2.  Steven<sub>lembark</sub>

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
