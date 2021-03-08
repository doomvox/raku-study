- [meeting notes Mar 07, 2021](#org1d45734)
  - [announcments](#orgb2c5fb3)
    - [richard hainsworth: alternative pod6 processing](#org320c5eb)
  - [the usual meeting links:](#org756fea3)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org26be29a)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org19e8988)
    - [SF Perl site for mailing list subscription info:](#org148a15c)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org1ff78b4)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org2300280)
    - [jeff had questions about compiler options, etc](#orgc918713)
    - [William Michels suggests doing this simple shell problem in Raku:](#org40c9c12)
  - [linux kernel module to shut up damn bell](#org5d283f0)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#orga34293d)
  - [bash books, much new features](#org4939eed)
    - [bash          (d christensen pick)](#orgd58bfcf)
    - [bash cookbook (d christensen mention, weak writing)](#orgffcbc2c)
    - [unix shells (jeff pick)](#org69bd323)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgff09cd5)
    - [book on the hidden logic of english:](#org6797e8a)
    - [humble bundle promotion: oreilley pocket references](#orge890bc1)
    - [bruce gray discussion](#org49d4dbf)
    - [shadow novel where esperanto was spoken](#orgd8b0a5a)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#org0a18ddb)
    - [misc elements from chat](#org09ee463)
  - [possible topics (not covered this time)](#org52dcb09)
    - [andrew shitov's raku course on-line:](#org9b0e944)
    - [the great "say Set.<sup>methods</sup>" affair](#orgd8fe06e)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org1786d1d)
    - [69 cent tour of raku regexs](#org7be906e)
    - [some simple grammar demos](#orgff016b2)
  - [more possible topics (carried over from earlier meetings)](#orgfaa43f0)
    - [Steven<sub>lembark</sub>](#orgcc487e3)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org3378b9d)
    - [andrew shitov "Perl 6 at a Glance"](#org33c2e4b)
    - [perl weekly challenge:](#orgfd8b985)
    - [promises and threads](#orgff9bbb8)


<a id="org1d45734"></a>

# meeting notes Mar 07, 2021


<a id="orgb2c5fb3"></a>

## announcments


<a id="org320c5eb"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org756fea3"></a>

## the usual meeting links:


<a id="org26be29a"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org19e8988"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org148a15c"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="org1ff78b4"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org2300280"></a>

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


<a id="orgc918713"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org40c9c12"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org5d283f0"></a>

## linux kernel module to shut up damn bell


<a id="orga34293d"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org4939eed"></a>

## bash books, much new features


<a id="orgd58bfcf"></a>

### bash          (d christensen pick)


<a id="orgffcbc2c"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org69bd323"></a>

### unix shells (jeff pick)


<a id="orgff09cd5"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org6797e8a"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="orge890bc1"></a>

### humble bundle promotion: oreilley pocket references


<a id="org49d4dbf"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgd8b0a5a"></a>

### shadow novel where esperanto was spoken


<a id="org0a18ddb"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="org09ee463"></a>

### misc elements from chat

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
    
        15:26:14 From Bruce Gray : <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
        
        <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html> 15:26:25 From Jeff : yes, good article!
        
        15:27:56 From Jeff : zsh
        
        15:55:38 From Bruce Gray : raku -e 'say $/ if "hello\n" ~~ $\_ for *<:lower+:cntrl>+*, *<.lower>+*, *<.cntrl>+*;' 16:02:47 From Bruce Gray : <http://rosettacode.org/wiki/Modified_random_distribution#Raku> 16:04:21 From Jeff : wu 16:10:20 From Bill Michels : <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books> 16:12:13 From Joseph Brenner : ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg) 16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle


<a id="org52dcb09"></a>

## possible topics (not covered this time)


<a id="org9b0e944"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="orgd8fe06e"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org1786d1d"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org7be906e"></a>

### 69 cent tour of raku regexs


<a id="orgff016b2"></a>

### some simple grammar demos


<a id="orgfaa43f0"></a>

## more possible topics (carried over from earlier meetings)


<a id="orgcc487e3"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org3378b9d"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org33c2e4b"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgfd8b985"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgff9bbb8"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
