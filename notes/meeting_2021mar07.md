- [meeting notes Mar 07, 2021](#org3027a09)
  - [announcments](#orga45c44d)
    - [richard hainsworth: alternative pod6 processing](#org4adf46d)
  - [the usual meeting links:](#org6b4ef09)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org577a01e)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org219029d)
    - [SF Perl site for mailing list subscription info:](#orgaf8f7ec)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org8a53a9e)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#orgc7319e3)
    - [jeff had questions about compiler options, etc](#orgbbe0449)
    - [William Michels suggests doing this simple shell problem in Raku:](#org4b8f036)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#orgf6a81af)
    - [linux kernel module to shut up damn bell](#org411938e)
    - [Bash, etc](#org51472f9)
    - [bash books. modern bash has new features](#orga384855)
    - [books in general](#orgf1d0c0c)
    - [linux](#org4badfbc)
  - [possible topics (not covered this time)](#org7552844)
    - [andrew shitov's raku course on-line:](#orgdf5a169)
    - [the great "say Set.<sup>methods</sup>" affair](#org489acab)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org753b4b9)
    - [69 cent tour of raku regexs](#org9635a50)
    - [some simple grammar demos](#org46af870)
  - [more possible topics (carried over from earlier meetings)](#org972d04e)
    - [Steven<sub>lembark</sub>](#org9cb5385)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgfde0328)
    - [andrew shitov "Perl 6 at a Glance"](#org8f85bdd)
    - [perl weekly challenge:](#org9ed9fe8)
    - [promises and threads](#orge87e550)


<a id="org3027a09"></a>

# meeting notes Mar 07, 2021


<a id="orga45c44d"></a>

## announcments


<a id="org4adf46d"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org6b4ef09"></a>

## the usual meeting links:


<a id="org577a01e"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org219029d"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgaf8f7ec"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="org8a53a9e"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="orgc7319e3"></a>

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


<a id="orgbbe0449"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org4b8f036"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="orgf6a81af"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org411938e"></a>

### linux kernel module to shut up damn bell

1.  15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org51472f9"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="orga384855"></a>

### bash books. modern bash has new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgf1d0c0c"></a>

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


<a id="org4badfbc"></a>

### linux

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
    
    2.  About the "Lenovo Solution Center".  Installing linux would've blown it away in any case.

2.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="org7552844"></a>

## possible topics (not covered this time)


<a id="orgdf5a169"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org489acab"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org753b4b9"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org9635a50"></a>

### 69 cent tour of raku regexs


<a id="org46af870"></a>

### some simple grammar demos


<a id="org972d04e"></a>

## more possible topics (carried over from earlier meetings)


<a id="org9cb5385"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgfde0328"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org8f85bdd"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org9ed9fe8"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orge87e550"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
