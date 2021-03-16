- [meeting notes Mar 07, 2021](#org22768fc)
  - [announcments](#orgcfe0dff)
    - [richard hainsworth: alternative pod6 processing](#orge2000c7)
  - [the usual meeting links:](#orgf49e053)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org801be5c)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org050b8ac)
    - [SF Perl site for mailing list subscription info:](#org52c9716)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orgc428acc)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org3ef9e88)
    - [jeff had questions about compiler options, etc](#org1db390b)
    - [William Michels suggests doing this simple shell problem in Raku:](#org59b0a1e)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#org47b1f9e)
    - [linux kernel module to shut up damn bell](#org1213665)
    - [Bash, etc](#org20bb161)
    - [bash books. modern bash has new features](#org604b647)
    - [books in general](#org4a2944f)
    - [linux](#org7ac03d4)
  - [possible topics (not covered this time)](#orge1c040b)
    - [the great "say Set.<sup>methods</sup>" affair](#org031a161)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org408aefb)
    - [69 cent tour of raku regexs](#org3f6cb2c)
    - [some simple grammar demos](#org982e3a1)
  - [more possible topics (carried over from earlier meetings)](#org0661b6a)
    - [Steven<sub>lembark</sub>](#org1069703)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org68939e5)
    - [andrew shitov "Perl 6 at a Glance"](#org4b7e687)
    - [perl weekly challenge:](#orgff9f1f7)
    - [promises and threads](#orgce160f7)


<a id="org22768fc"></a>

# meeting notes Mar 07, 2021


<a id="orgcfe0dff"></a>

## announcments


<a id="orge2000c7"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgf49e053"></a>

## the usual meeting links:


<a id="org801be5c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org050b8ac"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org52c9716"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orgc428acc"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org3ef9e88"></a>

### back to last weeks regex problem, munging sudoers lines via a sysadmin tool

1.  problem posed by lambert lum, who revealed his solution

    1.  \(line =~ s{(^Defaults\s+secure_path\s*(?:.(?!/usr/local/bin))*\))}{$1:/usr/local/bin};

2.  yary approach, with some doomvox additions:

    1.  <https://github.com/doomvox/raku-study/blob/main/bin/2021feb28/pcre_regex_to_append_path_non_redundantly.t>
    
    2.  "\K" regex code is Trick #7: <https://blogs.oracle.com/linux/the-top-10-tricks-of-perl-one-liners-v2>
    
    3.  Bruce Gray confirms "PCRE does understand \K"

3.  david christensen variation, showed a scripted solution

    1.  virtue of handling cases like escaped continuation lines with trailing comments

4.  raku translation&#x2013; still has problems

    1.  <https://github.com/doomvox/raku-study/blob/main/bin/2021feb28/regex_append_to_sudoers_line.raku>


<a id="org1db390b"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org59b0a1e"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org47b1f9e"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org1213665"></a>

### linux kernel module to shut up damn bell

1.  15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org20bb161"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="org604b647"></a>

### bash books. modern bash has new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="org4a2944f"></a>

### books in general

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes

2.  humble bundle promotion: oreilley pocket references

    1.  <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books>

3.  lapping against the sapir wharf

    1.  16:23:35	 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban.
    
    2.  16:23:45	 From Joseph Brenner : (And I'll invariably bring up Babel-17).
    
    3.  17:06:41	 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A>
    
    4.  Aristotle's "Categories" (the first book of the Organon)
    
        1.  the way programmer's think, the source of it all (?)

1.  shadow novel where the bad guys speak esperanto

    1.  "Crime Under Cover" (1941) by Maxwell Grant
    
    2.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="org7ac03d4"></a>

### linux

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
    
    2.  About the "Lenovo Solution Center".  Installing linux would've blown it away in any case.

2.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="orge1c040b"></a>

## possible topics (not covered this time)


<a id="org031a161"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org408aefb"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org3f6cb2c"></a>

### 69 cent tour of raku regexs


<a id="org982e3a1"></a>

### some simple grammar demos


<a id="org0661b6a"></a>

## more possible topics (carried over from earlier meetings)


<a id="org1069703"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org68939e5"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org4b7e687"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgff9f1f7"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgce160f7"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
