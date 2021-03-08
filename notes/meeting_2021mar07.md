- [meeting notes Mar 07, 2021](#org449ef32)
  - [announcments](#orgd069b87)
    - [richard hainsworth: alternative pod6 processing](#orga0197b4)
  - [the usual meeting links:](#org1effafb)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org5d6befc)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org38d71d6)
    - [SF Perl site for mailing list subscription info:](#orgc732fdd)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org7522110)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org4536549)
    - [jeff had questions about compiler options, etc](#org0e74834)
    - [William Michels suggests doing this simple shell problem in Raku:](#orga8c992f)
  - [linux kernel module to shut up damn bell](#org9a1eb32)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#org0e1b0f6)
  - [bash books, much new features](#orgbdccb1b)
    - [bash          (d christensen pick)](#org8f592e2)
    - [bash cookbook (d christensen mention, weak writing)](#orge20213b)
    - [unix shells (jeff pick)](#orgca74f91)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org69821ce)
    - [book on the hidden logic of english:](#org7a70e08)
    - [humble bundle promotion: oreilley pocket references](#orga32a9da)
    - [bruce gray discussion](#org626e76d)
    - [shadow novel where esperanto was spoken](#orgbfed88c)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#orgffcf052)
    - [misc elements from chat](#org20c3662)
  - [possible topics (not covered this time)](#orgc6c149a)
    - [andrew shitov's raku course on-line:](#org0926f62)
    - [the great "say Set.<sup>methods</sup>" affair](#org24581f7)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org526ecab)
    - [69 cent tour of raku regexs](#org6715559)
    - [some simple grammar demos](#org2597d33)
  - [more possible topics (carried over from earlier meetings)](#orgacc9708)
    - [Steven<sub>lembark</sub>](#org8b20f9b)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org61f65fb)
    - [andrew shitov "Perl 6 at a Glance"](#orgfa7ebe7)
    - [perl weekly challenge:](#orge4c327b)
    - [promises and threads](#org91dbee0)


<a id="org449ef32"></a>

# meeting notes Mar 07, 2021


<a id="orgd069b87"></a>

## announcments


<a id="orga0197b4"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org1effafb"></a>

## the usual meeting links:


<a id="org5d6befc"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org38d71d6"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgc732fdd"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="org7522110"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org4536549"></a>

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


<a id="org0e74834"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="orga8c992f"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org9a1eb32"></a>

## linux kernel module to shut up damn bell


<a id="org0e1b0f6"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="orgbdccb1b"></a>

## bash books, much new features


<a id="org8f592e2"></a>

### bash          (d christensen pick)


<a id="orge20213b"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="orgca74f91"></a>

### unix shells (jeff pick)


<a id="org69821ce"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org7a70e08"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="orga32a9da"></a>

### humble bundle promotion: oreilley pocket references


<a id="org626e76d"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgbfed88c"></a>

### shadow novel where esperanto was spoken


<a id="orgffcf052"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="org20c3662"></a>

### misc elements from chat

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>

2.  Bash

    Bruce Gray : <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>
    
    16:02:47 From Bruce Gray : <http://rosettacode.org/wiki/Modified_random_distribution#Raku> 16:04:21 From Jeff : wu 16:10:20 From Bill Michels : <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books> 16:12:13 From Joseph Brenner : ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg) 16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle


<a id="orgc6c149a"></a>

## possible topics (not covered this time)


<a id="org0926f62"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org24581f7"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org526ecab"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org6715559"></a>

### 69 cent tour of raku regexs


<a id="org2597d33"></a>

### some simple grammar demos


<a id="orgacc9708"></a>

## more possible topics (carried over from earlier meetings)


<a id="org8b20f9b"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org61f65fb"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgfa7ebe7"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orge4c327b"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org91dbee0"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
