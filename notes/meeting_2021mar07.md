- [meeting notes Mar 07, 2021](#orge5731be)
  - [announcments](#org100f7e7)
    - [richard hainsworth: alternative pod6 processing](#org16b40ba)
  - [the usual meeting links:](#org100f3be)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org237569c)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org7b698fd)
    - [SF Perl site for mailing list subscription info:](#orgbb4816a)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org7d4c8f5)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org1dbf0f3)
    - [jeff had questions about compiler options, etc](#orgd565eac)
    - [William Michels suggests doing this simple shell problem in Raku:](#org06dc127)
    - [Bruce Gray covered a code example on histogram generation](#orge9cd971)
  - [linux kernel module to shut up damn bell](#org26e7ac6)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#orgeccf5e5)
  - [bash books, much new features](#orgd32bd8c)
    - [bash          (d christensen pick)](#org67dff0d)
    - [bash cookbook (d christensen mention, weak writing)](#orgd6562e2)
    - [unix shells (jeff pick)](#org501a131)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgcff1247)
    - [book on the hidden logic of english:](#org955528c)
    - [humble bundle promotion: oreilley pocket references](#orge56355d)
    - [bruce gray discussion](#orgd49fb42)
    - [shadow novel where esperanto was spoken](#orgae8fa15)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#org98ff345)
    - [misc elements from chat](#org11dd964)
  - [possible topics (not covered this time)](#orgd349738)
    - [andrew shitov's raku course on-line:](#orgf0da180)
    - [the great "say Set.<sup>methods</sup>" affair](#orga93f574)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orga59debd)
    - [69 cent tour of raku regexs](#org4531680)
    - [some simple grammar demos](#orga9e86b6)
  - [more possible topics (carried over from earlier meetings)](#org14772df)
    - [Steven<sub>lembark</sub>](#org5977c47)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgcb600cf)
    - [andrew shitov "Perl 6 at a Glance"](#orgc61f641)
    - [perl weekly challenge:](#org92e1b13)
    - [promises and threads](#orgdfbf2d5)


<a id="orge5731be"></a>

# meeting notes Mar 07, 2021


<a id="org100f7e7"></a>

## announcments


<a id="org16b40ba"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org100f3be"></a>

## the usual meeting links:


<a id="org237569c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org7b698fd"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgbb4816a"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="org7d4c8f5"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org1dbf0f3"></a>

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


<a id="orgd565eac"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org06dc127"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="orge9cd971"></a>

### Bruce Gray covered a code example on histogram generation

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org26e7ac6"></a>

## linux kernel module to shut up damn bell


<a id="orgeccf5e5"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="orgd32bd8c"></a>

## bash books, much new features


<a id="org67dff0d"></a>

### bash          (d christensen pick)


<a id="orgd6562e2"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org501a131"></a>

### unix shells (jeff pick)


<a id="orgcff1247"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org955528c"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="orge56355d"></a>

### humble bundle promotion: oreilley pocket references


<a id="orgd49fb42"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgae8fa15"></a>

### shadow novel where esperanto was spoken


<a id="org98ff345"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="org11dd964"></a>

### misc elements from chat

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>

2.  Bash, etc

    Bruce Gray : <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>
    
    16:02:47 From
    
    16:10:20 From Bill Michels : <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books> 16:12:13 From Joseph Brenner : ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)
    
    16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle


<a id="orgd349738"></a>

## possible topics (not covered this time)


<a id="orgf0da180"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="orga93f574"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orga59debd"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org4531680"></a>

### 69 cent tour of raku regexs


<a id="orga9e86b6"></a>

### some simple grammar demos


<a id="org14772df"></a>

## more possible topics (carried over from earlier meetings)


<a id="org5977c47"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgcb600cf"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgc61f641"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org92e1b13"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgdfbf2d5"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
