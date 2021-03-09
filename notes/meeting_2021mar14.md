- [meeting notes Mar 14, 2021](#orgac0a1d3)
  - [agenda (?)](#org8aa3f59)
  - [69 tours](#org37742b7)
    - [git](#org172e457)
    - [regexs](#org0ecc0a8)
    - [grammars](#orgcd5f157)
  - [bits from last week:](#orgba840bc)
  - [announcments](#orgdd73c45)
    - [richard hainsworth: alternative pod6 processing](#org3243457)
  - [the usual meeting links:](#org5fe1f48)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org89701cf)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org5526bb1)
    - [SF Perl site for mailing list subscription info:](#org3b6d03e)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org981994b)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#orgcb4bb1f)
    - [jeff had questions about compiler options, etc](#org8cc8696)
    - [William Michels suggests doing this simple shell problem in Raku:](#orgbe045e6)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#org661208e)
    - [linux kernel module to shut up damn bell](#org6653e49)
    - [Bash, etc](#org81da4a9)
    - [bash books. modern bash has new features](#orgd54103b)
    - [books in general](#orgb439be9)
    - [linux](#orgbd0a8ff)
  - [possible topics (not covered this time)](#org3563db6)
    - [andrew shitov's raku course on-line:](#org40da7dd)
    - [the great "say Set.<sup>methods</sup>" affair](#org6e9581c)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org6bad17c)
    - [69 cent tour of raku regexs](#org7316c20)
    - [some simple grammar demos](#orgcf0d629)
  - [more possible topics (carried over from earlier meetings)](#org902be38)
    - [Steven<sub>lembark</sub>](#org2145c16)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org0e032fb)
    - [andrew shitov "Perl 6 at a Glance"](#orgc035dc6)
    - [perl weekly challenge:](#org6353be7)
    - [promises and threads](#orgd470acd)


<a id="orgac0a1d3"></a>

# meeting notes Mar 14, 2021


<a id="org8aa3f59"></a>

## agenda (?)


<a id="org37742b7"></a>

## 69 tours


<a id="org172e457"></a>

### git

1.  github


<a id="org0ecc0a8"></a>

### regexs

1.  quoting, interpolating, matching


<a id="orgcd5f157"></a>

### grammars


<a id="orgba840bc"></a>

## bits from last week:


<a id="orgdd73c45"></a>

## announcments


<a id="org3243457"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org5fe1f48"></a>

## the usual meeting links:


<a id="org89701cf"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org5526bb1"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org3b6d03e"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="org981994b"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="orgcb4bb1f"></a>

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


<a id="org8cc8696"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="orgbe045e6"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org661208e"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org6653e49"></a>

### linux kernel module to shut up damn bell

1.  15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org81da4a9"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="orgd54103b"></a>

### bash books. modern bash has new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgb439be9"></a>

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


<a id="orgbd0a8ff"></a>

### linux

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
    
    2.  About the "Lenovo Solution Center".  Installing linux would've blown it away in any case.

2.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="org3563db6"></a>

## possible topics (not covered this time)


<a id="org40da7dd"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org6e9581c"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org6bad17c"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org7316c20"></a>

### 69 cent tour of raku regexs


<a id="orgcf0d629"></a>

### some simple grammar demos


<a id="org902be38"></a>

## more possible topics (carried over from earlier meetings)


<a id="org2145c16"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org0e032fb"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgc035dc6"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org6353be7"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgd470acd"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
