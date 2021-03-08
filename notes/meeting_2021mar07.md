- [meeting notes Mar 07, 2021](#org44ba4ad)
  - [announcments](#org23c997c)
    - [richard hainsworth: alternative pod6 processing](#org9c7e107)
  - [the usual meeting links:](#org88050af)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgb069e5b)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org622032c)
    - [SF Perl site for mailing list subscription info:](#org17088be)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orgc0663ba)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org9bf2bb0)
    - [jeff had questions about compiler options, etc](#orgf484d96)
    - [William Michels suggests doing this simple shell problem in Raku:](#orgd2824d6)
  - [linux kernel module to shut up damn bell](#orgf95236a)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#org7f69cea)
  - [bash books, much new features](#org1ac8035)
    - [bash          (d christensen pick)](#org24c7c2d)
    - [bash cookbook (d christensen mention, weak writing)](#org5297d38)
    - [unix shells (jeff pick)](#orgdd2bceb)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgdc7d22d)
    - [book on the hidden logic of english:](#orgc76ea92)
    - [humble bundle promotion: oreilley pocket references](#orgc9f183d)
    - [bruce gray discussion](#org611891c)
    - [shadow novel where esperanto was spoken](#orgedc1c74)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#org9d30b97)
    - [misc elements from chat](#org5dc45c8)
  - [possible topics (not covered this time)](#org9d00a79)
    - [andrew shitov's raku course on-line:](#orgcba371b)
    - [the great "say Set.<sup>methods</sup>" affair](#org45049bd)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org5dbd8b3)
    - [69 cent tour of raku regexs](#orgdd38a28)
    - [some simple grammar demos](#org68e3069)
  - [more possible topics (carried over from earlier meetings)](#orgd970a87)
    - [Steven<sub>lembark</sub>](#orgbf9575a)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgc5a5079)
    - [andrew shitov "Perl 6 at a Glance"](#org0e83a8e)
    - [perl weekly challenge:](#orgc727e18)
    - [promises and threads](#org265e685)


<a id="org44ba4ad"></a>

# meeting notes Mar 07, 2021


<a id="org23c997c"></a>

## announcments


<a id="org9c7e107"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org88050af"></a>

## the usual meeting links:


<a id="orgb069e5b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org622032c"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org17088be"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orgc0663ba"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org9bf2bb0"></a>

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


<a id="orgf484d96"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="orgd2824d6"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="orgf95236a"></a>

## linux kernel module to shut up damn bell


<a id="org7f69cea"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org1ac8035"></a>

## bash books, much new features


<a id="org24c7c2d"></a>

### bash          (d christensen pick)


<a id="org5297d38"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="orgdd2bceb"></a>

### unix shells (jeff pick)


<a id="orgdc7d22d"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgc76ea92"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="orgc9f183d"></a>

### humble bundle promotion: oreilley pocket references


<a id="org611891c"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgedc1c74"></a>

### shadow novel where esperanto was spoken


<a id="org9d30b97"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="org5dc45c8"></a>

### misc elements from chat

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>

2.  Bash, etc

    Bruce Gray : <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>
    
    16:02:47 From
    
    16:10:20 From Bill Michels : <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books> 16:12:13 From Joseph Brenner : ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)
    
    16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle


<a id="org9d00a79"></a>

## possible topics (not covered this time)


<a id="orgcba371b"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org45049bd"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org5dbd8b3"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgdd38a28"></a>

### 69 cent tour of raku regexs


<a id="org68e3069"></a>

### some simple grammar demos


<a id="orgd970a87"></a>

## more possible topics (carried over from earlier meetings)


<a id="orgbf9575a"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgc5a5079"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org0e83a8e"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgc727e18"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org265e685"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
