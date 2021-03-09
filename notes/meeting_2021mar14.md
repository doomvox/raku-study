- [meeting notes Mar 14, 2021](#org44c5643)
  - [agenda (?)](#orgfa484b9)
  - [69 tours](#org1aea999)
    - [git](#orgec13284)
    - [regexs](#org6327887)
    - [grammars](#orgff0ea67)
  - [bits from last week:](#orgfa32a2f)
  - [announcments](#org7ce72fa)
    - [richard hainsworth: alternative pod6 processing](#org3d788c4)
  - [the usual meeting links:](#org4d0c6ec)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgd86fa44)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orge281d3a)
    - [SF Perl site for mailing list subscription info:](#org2c6027f)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orgd41a9ed)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org9cbef5f)
    - [jeff had questions about compiler options, etc](#orgb840667)
    - [William Michels suggests doing this simple shell problem in Raku:](#orgd6e7220)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#org7092909)
    - [linux kernel module to shut up damn bell](#org2615fe1)
    - [Bash, etc](#org5f6ba37)
    - [bash books. modern bash has new features](#orgb43053e)
    - [books in general](#org473b5b1)
    - [linux](#orgeb42878)
  - [possible topics (not covered this time)](#org4369c8a)
    - [andrew shitov's raku course on-line:](#orgc8f520c)
    - [the great "say Set.<sup>methods</sup>" affair](#org7133157)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org64db6ef)
    - [69 cent tour of raku regexs](#org065fcf9)
    - [some simple grammar demos](#orgd459af4)
  - [more possible topics (carried over from earlier meetings)](#org06cdf7d)
    - [Steven<sub>lembark</sub>](#org3f9d1b1)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org0b002af)
    - [andrew shitov "Perl 6 at a Glance"](#orgdd21772)
    - [perl weekly challenge:](#org2eb2e5e)
    - [promises and threads](#org5dec2d0)


<a id="org44c5643"></a>

# meeting notes Mar 14, 2021


<a id="orgfa484b9"></a>

## agenda (?)


<a id="org1aea999"></a>

## 69 tours


<a id="orgec13284"></a>

### git


<a id="org6327887"></a>

### regexs

1.  quoting, interpolating, matching


<a id="orgff0ea67"></a>

### grammars


<a id="orgfa32a2f"></a>

## bits from last week:


<a id="org7ce72fa"></a>

## announcments


<a id="org3d788c4"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org4d0c6ec"></a>

## the usual meeting links:


<a id="orgd86fa44"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orge281d3a"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org2c6027f"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orgd41a9ed"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org9cbef5f"></a>

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


<a id="orgb840667"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="orgd6e7220"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org7092909"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org2615fe1"></a>

### linux kernel module to shut up damn bell

1.  15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org5f6ba37"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="orgb43053e"></a>

### bash books. modern bash has new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="org473b5b1"></a>

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


<a id="orgeb42878"></a>

### linux

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
    
    2.  About the "Lenovo Solution Center".  Installing linux would've blown it away in any case.

2.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="org4369c8a"></a>

## possible topics (not covered this time)


<a id="orgc8f520c"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org7133157"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org64db6ef"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org065fcf9"></a>

### 69 cent tour of raku regexs


<a id="orgd459af4"></a>

### some simple grammar demos


<a id="org06cdf7d"></a>

## more possible topics (carried over from earlier meetings)


<a id="org3f9d1b1"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org0b002af"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgdd21772"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org2eb2e5e"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org5dec2d0"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
