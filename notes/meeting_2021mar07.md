- [meeting notes Mar 07, 2021](#orgbd8a397)
  - [announcments](#orgf49cd34)
    - [richard hainsworth: alternative pod6 processing](#orgbeaee47)
  - [the usual meeting links:](#orgb1b72b2)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orga9732d8)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgf65d2da)
    - [SF Perl site for mailing list subscription info:](#orga18b452)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org0333d85)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#orgd71b900)
    - [jeff had questions about compiler options, etc](#orgbcf612c)
    - [William Michels suggests doing this simple shell problem in Raku:](#orgb8bbead)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#org8bc843d)
    - [linux kernel module to shut up damn bell](#org0e429eb)
    - [Bash, etc](#org7de38f0)
    - [bash books. modern bash has new features](#org30c6aae)
    - [books in general](#orgdf364b4)
    - [linux](#orgc886a55)
  - [possible topics (not covered this time)](#org6c4a80d)
    - [andrew shitov's raku course on-line:](#org658e90e)
    - [the great "say Set.<sup>methods</sup>" affair](#org0a5d34f)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgd05f525)
    - [69 cent tour of raku regexs](#orgaaa44d5)
    - [some simple grammar demos](#orgade5941)
  - [more possible topics (carried over from earlier meetings)](#orgbc85dbc)
    - [Steven<sub>lembark</sub>](#org99c5709)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgc014d3a)
    - [andrew shitov "Perl 6 at a Glance"](#orgbc305dc)
    - [perl weekly challenge:](#orgdbb2b8c)
    - [promises and threads](#org31b6f17)


<a id="orgbd8a397"></a>

# meeting notes Mar 07, 2021


<a id="orgf49cd34"></a>

## announcments


<a id="orgbeaee47"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgb1b72b2"></a>

## the usual meeting links:


<a id="orga9732d8"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgf65d2da"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orga18b452"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="org0333d85"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="orgd71b900"></a>

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


<a id="orgbcf612c"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="orgb8bbead"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org8bc843d"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org0e429eb"></a>

### linux kernel module to shut up damn bell

1.  15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org7de38f0"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="org30c6aae"></a>

### bash books. modern bash has new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgdf364b4"></a>

### books in general

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes

2.  humble bundle promotion: oreilley pocket references

    1.  <https://www.humblebundle.com/books/pocket-reference-guides-oreilly-books>

3.  lapping against the sapir wharf

    16:23:35 From Joseph Brenner : To really nerd out, we need to start talking about loglan or lojban. 16:23:45 From Joseph Brenner : (And I'll invariably bring up Babel-17). 17:06:41 From Bruce Gray : <https://en.wikipedia.org/wiki/The_World_of_Null-A> 17:09:18 From Joseph Brenner : categories 17:09:20 From Joseph Brenner : organon 17:09:22 From Joseph Brenner : aristotle

1.  shadow novel where the bad guys speak esperanto

    1.  "Crime Under Cover" (1941) by Maxwell Grant
    
    2.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>


<a id="orgc886a55"></a>

### linux

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
    
    2.  About the "Lenovo Solution Center".  Installing linux would've blown it away in any case.

2.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="org6c4a80d"></a>

## possible topics (not covered this time)


<a id="org658e90e"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org0a5d34f"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgd05f525"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgaaa44d5"></a>

### 69 cent tour of raku regexs


<a id="orgade5941"></a>

### some simple grammar demos


<a id="orgbc85dbc"></a>

## more possible topics (carried over from earlier meetings)


<a id="org99c5709"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgc014d3a"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgbc305dc"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgdbb2b8c"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org31b6f17"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
