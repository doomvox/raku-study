- [meeting notes Mar 07, 2021](#orgcaa246b)
  - [announcments](#org84a491a)
    - [richard hainsworth: alternative pod6 processing](#orga8eb7c5)
  - [the usual meeting links:](#org17a1bf0)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org52da879)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org089501e)
    - [SF Perl site for mailing list subscription info:](#org8e6996a)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org7a95cb3)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#orgdcfc9a4)
    - [jeff had questions about compiler options, etc](#org7ac521e)
    - [William Michels suggests doing this simple shell problem in Raku:](#org2e35315)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#orge58b826)
    - [linux kernel module to shut up damn bell](#org08fab0b)
    - [Bash, etc](#org06cda2b)
    - [bash books. modern bash has new features](#org3e3edda)
    - [books in general](#orgcae712f)
  - [possible topics (not covered this time)](#orga476c6c)
    - [andrew shitov's raku course on-line:](#org1a86a80)
    - [the great "say Set.<sup>methods</sup>" affair](#orgf9011b0)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orga2716b7)
    - [69 cent tour of raku regexs](#org91d05ff)
    - [some simple grammar demos](#org51e0fd7)
  - [more possible topics (carried over from earlier meetings)](#orgd530431)
    - [Steven<sub>lembark</sub>](#org35b1db3)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org58ef07a)
    - [andrew shitov "Perl 6 at a Glance"](#orga1000a9)
    - [perl weekly challenge:](#orgbe71ddc)
    - [promises and threads](#org4a8e95c)


<a id="orgcaa246b"></a>

# meeting notes Mar 07, 2021


<a id="org84a491a"></a>

## announcments


<a id="orga8eb7c5"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org17a1bf0"></a>

## the usual meeting links:


<a id="org52da879"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org089501e"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org8e6996a"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="org7a95cb3"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="orgdcfc9a4"></a>

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


<a id="org7ac521e"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org2e35315"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="orge58b826"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org08fab0b"></a>

### linux kernel module to shut up damn bell

1.  15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org06cda2b"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="org3e3edda"></a>

### bash books. modern bash has new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgcae712f"></a>

### books in general

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes

2.  humble bundle promotion: oreilley pocket references

    1.  <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books>

3.  lapping against the sapir wharf

    16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle

1.  shadow novel where esperanto was spoken

2.  "Crime Under Cover" (1941) by Maxwell Grant

    1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>

3.  misc elements from chat

    1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"
    
        1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>

4.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="orga476c6c"></a>

## possible topics (not covered this time)


<a id="org1a86a80"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="orgf9011b0"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orga2716b7"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org91d05ff"></a>

### 69 cent tour of raku regexs


<a id="org51e0fd7"></a>

### some simple grammar demos


<a id="orgd530431"></a>

## more possible topics (carried over from earlier meetings)


<a id="org35b1db3"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org58ef07a"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orga1000a9"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgbe71ddc"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org4a8e95c"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
