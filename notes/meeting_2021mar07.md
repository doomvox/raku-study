- [meeting notes Mar 07, 2021](#orgdc413bf)
  - [announcments](#orgffe59de)
    - [richard hainsworth: alternative pod6 processing](#org9924d65)
  - [the usual meeting links:](#orgd301fa8)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgab67f91)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org73bfa7c)
    - [SF Perl site for mailing list subscription info:](#org82b3174)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#orgaccd34a)
    - [back to last weeks regex problem, munging sudoers lines via a sysadmin tool](#org838beeb)
    - [jeff had questions about compiler options, etc](#orgeebec53)
    - [William Michels suggests doing this simple shell problem in Raku:](#org02ed7ba)
    - [Bruce Gray covered a code example for generating a histogram of a random distribution](#orgf03989b)
  - [linux kernel module to shut up damn bell](#orgcd5fdf6)
    - [15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq](#org36f14f0)
    - [Bash, etc](#org9aa7584)
    - [bash books, much new features](#org94af366)
    - [books in general](#org2e22221)
  - [possible topics (not covered this time)](#org7a82f68)
    - [andrew shitov's raku course on-line:](#org968f018)
    - [the great "say Set.<sup>methods</sup>" affair](#org9702793)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org9076171)
    - [69 cent tour of raku regexs](#org5c49639)
    - [some simple grammar demos](#orge033aca)
  - [more possible topics (carried over from earlier meetings)](#org6d2b5f4)
    - [Steven<sub>lembark</sub>](#org164e4d6)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgc1c786e)
    - [andrew shitov "Perl 6 at a Glance"](#org35cdbae)
    - [perl weekly challenge:](#orgff6101b)
    - [promises and threads](#org0afa454)


<a id="orgdc413bf"></a>

# meeting notes Mar 07, 2021


<a id="orgffe59de"></a>

## announcments


<a id="org9924d65"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgd301fa8"></a>

## the usual meeting links:


<a id="orgab67f91"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org73bfa7c"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org82b3174"></a>

### SF Perl site for mailing list subscription info:

1.  <http://sf.pm.org/>


<a id="orgaccd34a"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org838beeb"></a>

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


<a id="orgeebec53"></a>

### jeff had questions about compiler options, etc

1.  &#x2013;cc=$(tc=getCC)

    1.  Bruce Gray points at:
    
        1.  <https://github.com/MoarVM/MoarVM/blob/master/Configure.pl>
        
            1.  &#x2013;moar-option='&#x2013;option=value'
            
                Options to pass to MoarVM configuration for &#x2013;gen-moar
            
            2.  


<a id="org02ed7ba"></a>

### William Michels suggests doing this simple shell problem in Raku:

1.  <https://unix.stackexchange.com/a/636948>

2.  there were a few interesting angles involving with raku character classes

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar07/strip_control_chars_from_utf8.pl6>


<a id="orgf03989b"></a>

### Bruce Gray covered a code example for generating a histogram of a random distribution

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgcd5fdf6"></a>

## linux kernel module to shut up damn bell


<a id="org36f14f0"></a>

### 15:19:52	 From Jeff : #rmod pcspkr#vi /etc/modprobe.d/blacklistblacklist pcspkr:wq


<a id="org9aa7584"></a>

### Bash, etc

1.  Bruce Gray picks

    1.  <http://redsymbol.net/articles/unofficial-bash-strict-mode/>
    
    2.  <https://olivergondza.github.io/2019/10/01/bash-strict-mode.html>


<a id="org94af366"></a>

### bash books, much new features

1.  bash          (d christensen pick)

2.  bash cookbook (d christensen mention, weak writing)

3.  unix shells (jeff pick)

4.  "pro bash programming" by chris johnson, apress (alan pick)


<a id="org2e22221"></a>

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


<a id="org7a82f68"></a>

## possible topics (not covered this time)


<a id="org968f018"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org9702793"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org9076171"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org5c49639"></a>

### 69 cent tour of raku regexs


<a id="orge033aca"></a>

### some simple grammar demos


<a id="org6d2b5f4"></a>

## more possible topics (carried over from earlier meetings)


<a id="org164e4d6"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgc1c786e"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org35cdbae"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgff6101b"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org0afa454"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
