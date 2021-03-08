- [meeting notes Mar 07, 2021](#orgf8c8eb1)
  - [announcments](#org4eb8030)
    - [richard hainsworth: alternative pod6 processing](#org609dc10)
  - [the usual meeting links:](#org0a7fa69)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgeb36f44)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgb6e6aa0)
    - [SF Perl site for mailing list subscription info:](#org4915952)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orgc2dc640)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#orge804b8e)
    - [jeff had questions about compiler options, etc](#org5617393)
    - [William Michels suggests doing this simple shell problem in Raku:](#orgb9d0648)
  - [linux kernel module to shut up damn bell](#org64c371a)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#org1427511)
  - [bash books, much new features](#orgb3d27a2)
    - [bash          (d christensen pick)](#org1fbed45)
    - [bash cookbook (d christensen mention, weak writing)](#orgf471103)
    - [unix shells (jeff pick)](#orge64b74a)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgcb87e00)
    - [book on the hidden logic of english:](#org8189b52)
    - [humble bundle promotion: oreilley pocket references](#org84ffdcf)
    - [bruce gray discussion](#org84957cf)
    - [shadow novel where esperanto was spoken](#orgbb13127)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#org4f23456)
    - [misc elements from chat](#orgb963570)
  - [possible topics (not covered this time)](#org77f2c5d)
    - [andrew shitov's raku course on-line:](#org1edc125)
    - [the great "say Set.<sup>methods</sup>" affair](#org3e52226)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org5ae339e)
    - [69 cent tour of raku regexs](#org5170c94)
    - [some simple grammar demos](#orge92780f)
  - [more possible topics (carried over from earlier meetings)](#orge702a4f)
    - [Steven<sub>lembark</sub>](#org088a782)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgdb31f03)
    - [andrew shitov "Perl 6 at a Glance"](#org5988257)
    - [perl weekly challenge:](#org3c6bbce)
    - [promises and threads](#orgb35421c)


<a id="orgf8c8eb1"></a>

# meeting notes Mar 07, 2021


<a id="org4eb8030"></a>

## announcments


<a id="org609dc10"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org0a7fa69"></a>

## the usual meeting links:


<a id="orgeb36f44"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgb6e6aa0"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org4915952"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orgc2dc640"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="orge804b8e"></a>

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


<a id="org5617393"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="orgb9d0648"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org64c371a"></a>

## linux kernel module to shut up damn bell


<a id="org1427511"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="orgb3d27a2"></a>

## bash books, much new features


<a id="org1fbed45"></a>

### bash          (d christensen pick)


<a id="orgf471103"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="orge64b74a"></a>

### unix shells (jeff pick)


<a id="orgcb87e00"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org8189b52"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org84ffdcf"></a>

### humble bundle promotion: oreilley pocket references


<a id="org84957cf"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgbb13127"></a>

### shadow novel where esperanto was spoken


<a id="org4f23456"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="orgb963570"></a>

### misc elements from chat

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>

2.  Bash

    Bruce Gray : <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>
    
    16:02:47 From Bruce Gray : <http://rosettacode.org/wiki/Modified_random_distribution#Raku> 16:04:21 From Jeff : wu 16:10:20 From Bill Michels : <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books> 16:12:13 From Joseph Brenner : ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg) 16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle


<a id="org77f2c5d"></a>

## possible topics (not covered this time)


<a id="org1edc125"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org3e52226"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org5ae339e"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org5170c94"></a>

### 69 cent tour of raku regexs


<a id="orge92780f"></a>

### some simple grammar demos


<a id="orge702a4f"></a>

## more possible topics (carried over from earlier meetings)


<a id="org088a782"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgdb31f03"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org5988257"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org3c6bbce"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgb35421c"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
