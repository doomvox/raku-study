- [meeting notes Mar 07, 2021](#org98c013a)
  - [announcments](#org151d33e)
    - [richard hainsworth: alternative pod6 processing](#orgc15b44b)
  - [the usual meeting links:](#org21b5d36)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org74fb560)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgdebeda2)
    - [SF Perl site for mailing list subscription info:](#orgc5c3f95)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orge1f4865)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org6183bd5)
    - [jeff had questions about compiler options, etc](#orge148893)
    - [William Michels suggests doing this simple shell problem in Raku:](#org844b857)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#org0e7701e)
  - [linux kernel module to shut up damn bell](#orgf9e2cc3)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#org8c90a09)
  - [bash books, much new features](#org4bfdba1)
    - [bash          (d christensen pick)](#orgf3aab9a)
    - [bash cookbook (d christensen mention, weak writing)](#orgc80bf78)
    - [unix shells (jeff pick)](#org249df26)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orge4e2b3a)
    - [book on the hidden logic of english:](#orgdd545d0)
    - [humble bundle promotion: oreilley pocket references](#orgec05c8c)
    - [bruce gray discussion](#org55d7655)
    - [shadow novel where esperanto was spoken](#org93b51fe)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#orga016764)
    - [misc elements from chat](#org9b72418)
  - [possible topics (not covered this time)](#org416f94e)
    - [andrew shitov's raku course on-line:](#org05e8783)
    - [the great "say Set.<sup>methods</sup>" affair](#org2484b9e)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orga0461e7)
    - [69 cent tour of raku regexs](#org718cc31)
    - [some simple grammar demos](#org9e85186)
  - [more possible topics (carried over from earlier meetings)](#org1204400)
    - [Steven<sub>lembark</sub>](#org1c0d707)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org3a37db1)
    - [andrew shitov "Perl 6 at a Glance"](#org5de27e3)
    - [perl weekly challenge:](#org775f2eb)
    - [promises and threads](#orgf6382de)


<a id="org98c013a"></a>

# meeting notes Mar 07, 2021


<a id="org151d33e"></a>

## announcments


<a id="orgc15b44b"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org21b5d36"></a>

## the usual meeting links:


<a id="org74fb560"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgdebeda2"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgc5c3f95"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orge1f4865"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org6183bd5"></a>

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


<a id="orge148893"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org844b857"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org0e7701e"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgf9e2cc3"></a>

## linux kernel module to shut up damn bell


<a id="org8c90a09"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org4bfdba1"></a>

## bash books, much new features


<a id="orgf3aab9a"></a>

### bash          (d christensen pick)


<a id="orgc80bf78"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org249df26"></a>

### unix shells (jeff pick)


<a id="orge4e2b3a"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgdd545d0"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="orgec05c8c"></a>

### humble bundle promotion: oreilley pocket references


<a id="org55d7655"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org93b51fe"></a>

### shadow novel where esperanto was spoken


<a id="orga016764"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="org9b72418"></a>

### misc elements from chat

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>

2.  Bash, etc

    Bruce Gray : <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>
    
    16:02:47 From
    
    16:10:20 From Bill Michels : <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books> 16:12:13 From Joseph Brenner : ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)
    
    16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle


<a id="org416f94e"></a>

## possible topics (not covered this time)


<a id="org05e8783"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org2484b9e"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orga0461e7"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org718cc31"></a>

### 69 cent tour of raku regexs


<a id="org9e85186"></a>

### some simple grammar demos


<a id="org1204400"></a>

## more possible topics (carried over from earlier meetings)


<a id="org1c0d707"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org3a37db1"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org5de27e3"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org775f2eb"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgf6382de"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
