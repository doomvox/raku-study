- [meeting notes Mar 07, 2021](#org814ee0b)
  - [announcments](#org4ace3c7)
    - [richard hainsworth: alternative pod6 processing](#org3fc8802)
  - [the usual meeting links:](#orge15d76b)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org5b0eb1d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org3951aaf)
    - [SF Perl site for mailing list subscription info:](#org421c3fa)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orgeae2cfa)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#orgd83e67c)
    - [jeff had questions about compiler options, etc](#org6ae4e84)
    - [William Michels suggests doing this simple shell problem in Raku:](#org06a0cb3)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#orgb5140f4)
  - [linux kernel module to shut up damn bell](#orged32ca8)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#orga4964e7)
    - [Bash, etc](#orgb41613b)
    - [bash books, much new features](#org298502e)
    - [books in general](#org01896cb)
  - [possible topics (not covered this time)](#orgafbff5d)
    - [andrew shitov's raku course on-line:](#org7d59dbf)
    - [the great "say Set.<sup>methods</sup>" affair](#org613aa01)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org808d93b)
    - [69 cent tour of raku regexs](#org2eded4c)
    - [some simple grammar demos](#org1370568)
  - [more possible topics (carried over from earlier meetings)](#orgd06ab8e)
    - [Steven<sub>lembark</sub>](#orgf9f687a)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgcfd0400)
    - [andrew shitov "Perl 6 at a Glance"](#org8759441)
    - [perl weekly challenge:](#orga34b53e)
    - [promises and threads](#org1e06ed6)


<a id="org814ee0b"></a>

# meeting notes Mar 07, 2021


<a id="org4ace3c7"></a>

## announcments


<a id="org3fc8802"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orge15d76b"></a>

## the usual meeting links:


<a id="org5b0eb1d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org3951aaf"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org421c3fa"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orgeae2cfa"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="orgd83e67c"></a>

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


<a id="org6ae4e84"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org06a0cb3"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="orgb5140f4"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orged32ca8"></a>

## linux kernel module to shut up damn bell


<a id="orga4964e7"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="orgb41613b"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="org298502e"></a>

### bash books, much new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="org01896cb"></a>

### books in general

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes

2.  humble bundle promotion: oreilley pocket references

    1.  <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books>

1.  bruce gray discussion

    1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>

2.  shadow novel where esperanto was spoken

3.  "Crime Under Cover" (1941) by Maxwell Grant

    1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>

4.  misc elements from chat

    1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"
    
        1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
        
            16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle

5.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="orgafbff5d"></a>

## possible topics (not covered this time)


<a id="org7d59dbf"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org613aa01"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org808d93b"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org2eded4c"></a>

### 69 cent tour of raku regexs


<a id="org1370568"></a>

### some simple grammar demos


<a id="orgd06ab8e"></a>

## more possible topics (carried over from earlier meetings)


<a id="orgf9f687a"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgcfd0400"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org8759441"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orga34b53e"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org1e06ed6"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
