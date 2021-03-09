- [meeting notes Mar 14, 2021](#orgc7c899e)
    - [the usual meeting links:](#org69a33e6)
  - [agenda (?)](#org7f4b2b6)
    - [69 cent tours](#org0fb10f9)
    - [bits from last week:](#org043126c)


<a id="orgc7c899e"></a>

# meeting notes Mar 14, 2021


<a id="org69a33e6"></a>

### the usual meeting links:

1.  the code examples usually go here:

    <https://github.com/doomvox/raku-study/tree/main/bin/2021mar14>

2.  the meeting notes (this file) gets automatically exported here:

    <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar14.md>

3.  The SF Perl mailing list is good for general discussion.  Subscription info is here:

    1.  <http://sf.pm.org/>

4.  A lot of us hang out on the perl6-users mailing list


<a id="org7f4b2b6"></a>

## agenda (?)


<a id="org0fb10f9"></a>

### 69 cent tours

1.  git

    1.  github

2.  regexs

    1.  quoting, interpolating, matching

3.  grammars


<a id="org043126c"></a>

### bits from last week:

1.  back to the regex problem, munging sudoers lines via a sysadmin tool

    1.  raku translation&#x2013; still has problems
    
        1.  <https://github.com/doomvox/raku-study/blob/main/bin/2021feb28/regex_append_to_sudoers_line.raku>
    
    2.  regex character classes example
    
        <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>

2.  books in general

    1.  "uncovering the logic of english" (jeff pick)
    
        1.  clusters of morphemes
    
    2.  humble bundle promotion: oreilley pocket references
    
        1.  <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books>
    
    3.  lapping against the sapir wharf
    
        1.  16:23:35	 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban.
        
        2.  16:23:45	 From Joseph Brenner : (And I'll invariably bring up Babel-17).
        
        3.  17:06:41	 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A>
        
        4.  Aristotle's "Categories" (the first book of the Organon)
        
            1.  the way programmer's think, the source of it all (maybe)
    
    1.  shadow novel where the bad guys speak esperanto
    
        1.  "Crime Under Cover" (1941) by Maxwell Grant
        
        2.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>

3.  linux

    1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"
    
        1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
        
        2.  About the "Lenovo Solution Center".  Installing linux would've blown it away in any case.
    
    2.  perl 6 snark
    
        1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)

1.  possible topics (not covered this time)

    1.  andrew shitov's raku course on-line:
    
        <https://course.raku.org/>
    
    2.  the great "say Set.<sup>methods</sup>" affair
    
        1.  the issue (bug report and discussion):
        
            <https://github.com/rakudo/rakudo/issues/4207>
        
        2.  the roast test, aka the spec:
        
            <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
            
            1.  it checks the case of inheritence, but not roles
    
    3.  a stupid mistake that isn't: naming a method with a leading ^
    
        1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>
        
            1.  should this generate a warning/error?
    
    4.  69 cent tour of raku regexs
    
    5.  some simple grammar demos

2.  more possible topics (carried over from earlier meetings)

    1.  Steven<sub>lembark</sub>
    
        1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>
        
            1.  slide21:  "unit sub MAIN { &#x2026;"  unit?
        
        2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>
    
    2.  adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)
    
        1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>
    
    3.  andrew shitov "Perl 6 at a Glance"
    
        1.  <https://andrewshitov.com/perl6-at-a-glance/>
        
        2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>
    
    4.  perl weekly challenge:
    
        1.  <https://perlweeklychallenge.org/>
    
    5.  promises and threads
    
        1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>
        
        2.  Jonathan Worthington
        
            1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
            
            2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
