- [meeting notes Mar 07, 2021](#orgc42cbd9)
  - [announcments](#orged4dc2e)
    - [richard hainsworth: alternative pod6 processing](#org8a89e6d)
  - [the usual meeting links:](#org4a72004)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org6c7eb0f)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org6458ffc)
    - [SF Perl site for mailing list subscription info:](#org8ebac60)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orge89198c)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org20733d0)
    - [jeff had questions about compiler options, etc](#org72b4a80)
    - [William Michels suggests doing this simple shell problem in Raku:](#orge1519e1)
  - [linux kernel module to shut up damn bell](#orgff06387)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#org8924c75)
  - [bash books, much new features](#org2c4303c)
    - [bash          (d christensen pick)](#org7c68204)
    - [bash cookbook (d christensen mention, weak writing)](#org00b4ec8)
    - [unix shells (jeff pick)](#orge9ca7a6)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgc8ebd09)
    - [book on the hidden logic of english:](#org77d70e9)
    - [humble bundle promotion: oreilley pocket references](#org19b9458)
    - [bruce gray discussion](#orga3e7129)
    - [shadow novel where esperanto was spoken](#org17888f3)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#orgf35cd77)
    - [misc elements from chat](#orga363d81)
  - [possible topics (not covered this time)](#org4b3091d)
    - [andrew shitov's raku course on-line:](#org9279620)
    - [the great "say Set.<sup>methods</sup>" affair](#orgb81f9be)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgaac103e)
    - [69 cent tour of raku regexs](#org99e7103)
    - [some simple grammar demos](#org6fe4608)
  - [more possible topics (carried over from earlier meetings)](#orge66f606)
    - [Steven<sub>lembark</sub>](#org7b48592)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgc5d82e3)
    - [andrew shitov "Perl 6 at a Glance"](#org6e10ebf)
    - [perl weekly challenge:](#org66d1c37)
    - [promises and threads](#org1bb1101)


<a id="orgc42cbd9"></a>

# meeting notes Mar 07, 2021


<a id="orged4dc2e"></a>

## announcments


<a id="org8a89e6d"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org4a72004"></a>

## the usual meeting links:


<a id="org6c7eb0f"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org6458ffc"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org8ebac60"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orge89198c"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org20733d0"></a>

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


<a id="org72b4a80"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="orge1519e1"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="orgff06387"></a>

## linux kernel module to shut up damn bell


<a id="org8924c75"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org2c4303c"></a>

## bash books, much new features


<a id="org7c68204"></a>

### bash          (d christensen pick)


<a id="org00b4ec8"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="orge9ca7a6"></a>

### unix shells (jeff pick)


<a id="orgc8ebd09"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org77d70e9"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org19b9458"></a>

### humble bundle promotion: oreilley pocket references


<a id="orga3e7129"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org17888f3"></a>

### shadow novel where esperanto was spoken


<a id="orgf35cd77"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="orga363d81"></a>

### misc elements from chat

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
    
        15:26:14 From Bruce Gray : <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
        
        <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html> 15:26:25 From Jeff : yes, good article!
        
        15:27:56 From Jeff : zsh
        
        15:51:58 From Jeff : print 15:51:59 From Jeff : print# 15:55:38 From Bruce Gray : raku -e 'say $/ if "hello\n" ~~ $\_ for *<:lower+:cntrl>+*, *<.lower>+*, *<.cntrl>+*;' 16:02:47 From Bruce Gray : <http://rosettacode.org/wiki/Modified_random_distribution#Raku> 16:04:21 From Jeff : wu 16:10:20 From Bill Michels : <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books> 16:12:13 From Joseph Brenner : ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg) 16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle


<a id="org4b3091d"></a>

## possible topics (not covered this time)


<a id="org9279620"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="orgb81f9be"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgaac103e"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org99e7103"></a>

### 69 cent tour of raku regexs


<a id="org6fe4608"></a>

### some simple grammar demos


<a id="orge66f606"></a>

## more possible topics (carried over from earlier meetings)


<a id="org7b48592"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgc5d82e3"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org6e10ebf"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org66d1c37"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org1bb1101"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
