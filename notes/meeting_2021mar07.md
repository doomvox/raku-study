- [meeting notes Mar 07, 2021](#orgc8225c3)
  - [announcments](#org9ca86bf)
    - [richard hainsworth: alternative pod6 processing](#org55e7fa0)
  - [the usual meeting links:](#orgc7b4123)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org8106e4e)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org66871c2)
    - [SF Perl site for mailing list subscription info:](#orgbc8bded)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orgfc2ecc1)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#orgd49dfad)
    - [jeff had questions about compiler options, etc](#org96a368b)
    - [William Michels suggests doing this simple shell problem in Raku:](#org57eed5a)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#org9057764)
  - [linux kernel module to shut up damn bell](#org645f804)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#orgad1d1e1)
  - [bash books, much new features](#org61b01b1)
    - [bash          (d christensen pick)](#org6076656)
    - [bash cookbook (d christensen mention, weak writing)](#org2e09666)
    - [unix shells (jeff pick)](#org9fd79c6)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org9372a1c)
    - [book on the hidden logic of english:](#orgd8efb32)
    - [humble bundle promotion: oreilley pocket references](#org0771875)
    - [bruce gray discussion](#org7c36012)
    - [shadow novel where esperanto was spoken](#org8e4e4e0)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#org3e61ab8)
    - [misc elements from chat](#org24e99ad)
  - [possible topics (not covered this time)](#org48ba091)
    - [andrew shitov's raku course on-line:](#orgfc5bb37)
    - [the great "say Set.<sup>methods</sup>" affair](#org5b9bb7b)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgb440dd6)
    - [69 cent tour of raku regexs](#org83f6bd0)
    - [some simple grammar demos](#orgce78b5b)
  - [more possible topics (carried over from earlier meetings)](#org4c03905)
    - [Steven<sub>lembark</sub>](#orgeee2951)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org3db3897)
    - [andrew shitov "Perl 6 at a Glance"](#org84d3fc4)
    - [perl weekly challenge:](#orge6838d5)
    - [promises and threads](#org45d4874)


<a id="orgc8225c3"></a>

# meeting notes Mar 07, 2021


<a id="org9ca86bf"></a>

## announcments


<a id="org55e7fa0"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgc7b4123"></a>

## the usual meeting links:


<a id="org8106e4e"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org66871c2"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgbc8bded"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orgfc2ecc1"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="orgd49dfad"></a>

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


<a id="org96a368b"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org57eed5a"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org9057764"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org645f804"></a>

## linux kernel module to shut up damn bell


<a id="orgad1d1e1"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org61b01b1"></a>

## bash books, much new features


<a id="org6076656"></a>

### bash          (d christensen pick)


<a id="org2e09666"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org9fd79c6"></a>

### unix shells (jeff pick)


<a id="org9372a1c"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgd8efb32"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org0771875"></a>

### humble bundle promotion: oreilley pocket references


<a id="org7c36012"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org8e4e4e0"></a>

### shadow novel where esperanto was spoken


<a id="org3e61ab8"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="org24e99ad"></a>

### misc elements from chat

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>

2.  Bash, etc

    Bruce Gray : <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>
    
    16:10:20 From Bill Michels : <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books> 16:12:13 From Joseph Brenner : ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)
    
    16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle


<a id="org48ba091"></a>

## possible topics (not covered this time)


<a id="orgfc5bb37"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org5b9bb7b"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgb440dd6"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org83f6bd0"></a>

### 69 cent tour of raku regexs


<a id="orgce78b5b"></a>

### some simple grammar demos


<a id="org4c03905"></a>

## more possible topics (carried over from earlier meetings)


<a id="orgeee2951"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org3db3897"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org84d3fc4"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orge6838d5"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org45d4874"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
