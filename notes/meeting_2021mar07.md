- [meeting notes Mar 07, 2021](#orgedc92ed)
  - [announcments](#org5ac5b7c)
    - [richard hainsworth: alternative pod6 processing](#org689d089)
  - [the usual meeting links:](#org6a75d3a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgec78b62)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgeb1b8fb)
    - [SF Perl site for mailing list subscription info:](#orgb7e4ece)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orgd24cab9)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org7d45f5d)
    - [jeff had questions about compiler options, etc](#orgfd6cd98)
    - [William Michels suggests doing this simple shell problem in Raku:](#org17512ce)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#org296dcdd)
    - [linux kernel module to shut up damn bell](#org38f800a)
    - [Bash, etc](#org9a8e4af)
    - [bash books. modern bash has new features](#org3465b26)
    - [books in general](#orgca04e8e)
    - [linux](#org315a810)
  - [possible topics (not covered this time)](#org14796fb)
    - [andrew shitov's raku course on-line:](#orgb0c262e)
    - [the great "say Set.<sup>methods</sup>" affair](#orge0ebf82)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org665eaa7)
    - [69 cent tour of raku regexs](#org73c5ba2)
    - [some simple grammar demos](#org31b21c6)
  - [more possible topics (carried over from earlier meetings)](#org39af932)
    - [Steven<sub>lembark</sub>](#orgcbd7fa4)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org953ac06)
    - [andrew shitov "Perl 6 at a Glance"](#orgf614852)
    - [perl weekly challenge:](#org648f947)
    - [promises and threads](#org7c78128)


<a id="orgedc92ed"></a>

# meeting notes Mar 07, 2021


<a id="org5ac5b7c"></a>

## announcments


<a id="org689d089"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org6a75d3a"></a>

## the usual meeting links:


<a id="orgec78b62"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgeb1b8fb"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgb7e4ece"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orgd24cab9"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org7d45f5d"></a>

### back to last weeks regex problem, munging sudoers lines via a sysadmin tool

1.  problem posed by lambert lum, who revealed his solution

    1.  \(line =~ s{(^Defaults\s+secure_path\s*(?:.(?!/usr/local/bin))*\))}{$1:/usr/local/bin};

2.  yary approach, with some doomvox additons:

    1.  <https://github.com/doomvox/raku-study/blob/main/bin/2021feb28/pcre_regex_to_append_path_non_redundantly.t>
    
    2.  "\K" regex code is Trick #7: <https://blogs.oracle.com/linux/the-top-10-tricks-of-perl-one-liners-v2>
    
    3.  Bruce Gray confirms "PCRE does understand \K"

3.  david christensen variation, showed a scripted solution

    1.  virtue of handling cases like escaped continuation lines with trailing comments

4.  raku translation&#x2013; still has problems

    1.  <https://github.com/doomvox/raku-study/blob/main/bin/2021feb28/regex_append_to_sudoers_line.raku>


<a id="orgfd6cd98"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org17512ce"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org296dcdd"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org38f800a"></a>

### linux kernel module to shut up damn bell

1.  15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org9a8e4af"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="org3465b26"></a>

### bash books. modern bash has new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgca04e8e"></a>

### books in general

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes

2.  humble bundle promotion: oreilley pocket references

    1.  <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books>

3.  lapping against the sapir wharf

    1.  16:23:35	 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban.
    
    2.  16:23:45	 From Joseph Brenner : (And I'll invariably bring up Babel-17).
    
    3.  17:06:41	 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A>
    
    4.  17:09:18	 From Joseph Brenner : categories
    
    5.  17:09:20	 From Joseph Brenner : organon
    
    6.  17:09:22	 From Joseph Brenner : aristotle

1.  shadow novel where the bad guys speak esperanto

    1.  "Crime Under Cover" (1941) by Maxwell Grant
    
    2.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="org315a810"></a>

### linux

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
    
    2.  About the "Lenovo Solution Center".  Installing linux would've blown it away in any case.

2.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="org14796fb"></a>

## possible topics (not covered this time)


<a id="orgb0c262e"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="orge0ebf82"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org665eaa7"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org73c5ba2"></a>

### 69 cent tour of raku regexs


<a id="org31b21c6"></a>

### some simple grammar demos


<a id="org39af932"></a>

## more possible topics (carried over from earlier meetings)


<a id="orgcbd7fa4"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org953ac06"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgf614852"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org648f947"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org7c78128"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
