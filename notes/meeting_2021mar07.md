- [meeting notes Mar 07, 2021](#orgd0f12c2)
  - [announcments](#org0114b06)
    - [richard hainsworth: alternative pod6 processing](#org2899b40)
  - [the usual meeting links:](#orgbf6f1b9)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgc4cbe88)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org7d21720)
    - [SF Perl site for mailing list subscription info:](#orge6731dc)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orgac4602c)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org0a99ab2)
    - [jeff had questions about compiler options, etc](#org9b1421c)
    - [William Michels suggests doing this simple shell problem in Raku:](#org9178fcc)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#org0c6c9cb)
  - [linux kernel module to shut up damn bell](#org0e8f163)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#orgde49587)
    - [Bash, etc](#org02b40ab)
    - [bash books, much new features](#orgfd0dde8)
    - [books in general](#org6c946bd)
  - [possible topics (not covered this time)](#org1415dba)
    - [andrew shitov's raku course on-line:](#orgb3550e9)
    - [the great "say Set.<sup>methods</sup>" affair](#orgb82211a)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org3d35e3e)
    - [69 cent tour of raku regexs](#org6b3d211)
    - [some simple grammar demos](#orgf59093f)
  - [more possible topics (carried over from earlier meetings)](#org99b2385)
    - [Steven<sub>lembark</sub>](#org2b968f0)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org83305dd)
    - [andrew shitov "Perl 6 at a Glance"](#org1061bd7)
    - [perl weekly challenge:](#orgbb31611)
    - [promises and threads](#org61edfe5)


<a id="orgd0f12c2"></a>

# meeting notes Mar 07, 2021


<a id="org0114b06"></a>

## announcments


<a id="org2899b40"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgbf6f1b9"></a>

## the usual meeting links:


<a id="orgc4cbe88"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org7d21720"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orge6731dc"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orgac4602c"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org0a99ab2"></a>

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


<a id="org9b1421c"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org9178fcc"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org0c6c9cb"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org0e8f163"></a>

## linux kernel module to shut up damn bell


<a id="orgde49587"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org02b40ab"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="orgfd0dde8"></a>

### bash books, much new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="org6c946bd"></a>

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

5.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="org1415dba"></a>

## possible topics (not covered this time)


<a id="orgb3550e9"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="orgb82211a"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org3d35e3e"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org6b3d211"></a>

### 69 cent tour of raku regexs


<a id="orgf59093f"></a>

### some simple grammar demos


<a id="org99b2385"></a>

## more possible topics (carried over from earlier meetings)


<a id="org2b968f0"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org83305dd"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org1061bd7"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgbb31611"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org61edfe5"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
