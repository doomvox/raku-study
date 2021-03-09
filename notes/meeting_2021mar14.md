- [meeting notes Mar 14, 2021](#orgd5bd794)
  - [agenda (?)](#orgeed5434)
  - [69 tours](#org5d07028)
    - [git](#org0cddf04)
    - [regexs](#org0b6a239)
    - [grammars](#orgdd20c20)
  - [bits from last week:](#org58a78e2)
  - [the usual meeting links:](#org80cf095)
    - [the code examples usually go here:](#org828ef5a)
    - [the meeting notes (this file) gets automatically exported here:](#org8b2d0dd)
    - [The SF Perl mailing list is good for general discussion.  Subscription info is here:](#orgdfecabf)
    - [A lot of us hang out on the perl6-users mailing list](#orgaa634e6)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orge7a5c82)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#orgc2dd96b)
    - [jeff had questions about compiler options, etc](#orgdf38202)
    - [William Michels suggests doing this simple shell problem in Raku:](#orgcd9ed1d)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#org4316037)
    - [linux kernel module to shut up damn bell](#org2a9e864)
    - [Bash, etc](#org7ba4671)
    - [bash books. modern bash has new features](#org3732be0)
    - [books in general](#org0e8c57c)
    - [linux](#orgba2e357)
  - [possible topics (not covered this time)](#orgd25fc84)
    - [andrew shitov's raku course on-line:](#org41b2a51)
    - [the great "say Set.<sup>methods</sup>" affair](#org2943572)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgd064672)
    - [69 cent tour of raku regexs](#org18b8f33)
    - [some simple grammar demos](#org31833ee)
  - [more possible topics (carried over from earlier meetings)](#orgbb16cd4)
    - [Steven<sub>lembark</sub>](#org3aab7c9)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgdf4d53e)
    - [andrew shitov "Perl 6 at a Glance"](#org29b4d7f)
    - [perl weekly challenge:](#org9e555a1)
    - [promises and threads](#org0b8f369)


<a id="orgd5bd794"></a>

# meeting notes Mar 14, 2021


<a id="orgeed5434"></a>

## agenda (?)


<a id="org5d07028"></a>

## 69 tours


<a id="org0cddf04"></a>

### git

1.  github


<a id="org0b6a239"></a>

### regexs

1.  quoting, interpolating, matching


<a id="orgdd20c20"></a>

### grammars


<a id="org58a78e2"></a>

## bits from last week:


<a id="org80cf095"></a>

## the usual meeting links:


<a id="org828ef5a"></a>

### the code examples usually go here:

<https://github.com/doomvox/raku-study/tree/main/bin/2021mar14>


<a id="org8b2d0dd"></a>

### the meeting notes (this file) gets automatically exported here:

<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar14.md>


<a id="orgdfecabf"></a>

### The SF Perl mailing list is good for general discussion.  Subscription info is here:

1.  <http://sf.pm.org/>


<a id="orgaa634e6"></a>

### A lot of us hang out on the perl6-users mailing list


<a id="orge7a5c82"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="orgc2dd96b"></a>

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


<a id="orgdf38202"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="orgcd9ed1d"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="org4316037"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org2a9e864"></a>

### linux kernel module to shut up damn bell

1.  15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org7ba4671"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="org3732be0"></a>

### bash books. modern bash has new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="org0e8c57c"></a>

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


<a id="orgba2e357"></a>

### linux

1.  William Michels : August 26, 2019 "Lenovo Security Flaw Could Affect Millions: What to Do Now"

    1.  <https://www.laptopmag.com/articles/lenovo-solution-center-vulnerability>
    
    2.  About the "Lenovo Solution Center".  Installing linux would've blown it away in any case.

2.  perl 6 snark

    1.  ![img](//perl-begin.org/humour/perl6_perl_6_cover_lg.jpg)


<a id="orgd25fc84"></a>

## possible topics (not covered this time)


<a id="org41b2a51"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org2943572"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgd064672"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org18b8f33"></a>

### 69 cent tour of raku regexs


<a id="org31833ee"></a>

### some simple grammar demos


<a id="orgbb16cd4"></a>

## more possible topics (carried over from earlier meetings)


<a id="org3aab7c9"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgdf4d53e"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org29b4d7f"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org9e555a1"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org0b8f369"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
