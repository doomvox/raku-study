- [meeting notes Mar 07, 2021](#orge70092e)
  - [announcments](#org22d068f)
    - [richard hainsworth: alternative pod6 processing](#org6bc689c)
  - [the usual meeting links:](#org2b02bee)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgdeb022d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org71a9ac5)
  - [topics](#orgbd31716)
    - [lamberts regex problem, munging sudoers lines](#org341a307)
    - [jeff questions about compiler options, etc](#org48b94e6)
    - [the great "say Set.<sup>methods</sup>" affair](#org55bf795)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org26d174e)
    - [69 cent tour of raku regexs](#org1f07a2a)
    - [some simple grammar demos](#orgfe3c229)
  - [possible topics (carried over from earlier meetings)](#orgb17316f)
    - [Steven<sub>lembark</sub>](#org788cb22)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgccd4ae9)
    - [andrew shitov "Perl 6 at a Glance"](#org455427b)
    - [perl weekly challenge:](#orgcd47bf0)
    - [promises and threads](#org5f0973c)
  - [linux kernel module to shut up damn bell](#orgfcc0c36)
  - [bash books, much new features](#org28d933d)
    - [bash          (d christensen pick)](#orgd50f54f)
    - [bash cookbook (d christensen mention, weak writing)](#orgfd590e7)
    - [unix shells (jeff pick)](#org7478149)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org8473615)
    - [book on the hidden logic of english:](#orgd2cad80)
    - [humble bundle promotion: oreilley pocket references](#org066e912)
    - [bruce gray discussion](#orgf99a1ce)


<a id="orge70092e"></a>

# meeting notes Mar 07, 2021


<a id="org22d068f"></a>

## announcments


<a id="org6bc689c"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org2b02bee"></a>

## the usual meeting links:


<a id="orgdeb022d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org71a9ac5"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgbd31716"></a>

## topics


<a id="org341a307"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org48b94e6"></a>

### jeff questions about compiler options, etc


<a id="org55bf795"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org26d174e"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org1f07a2a"></a>

### 69 cent tour of raku regexs


<a id="orgfe3c229"></a>

### some simple grammar demos


<a id="orgb17316f"></a>

## possible topics (carried over from earlier meetings)


<a id="org788cb22"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgccd4ae9"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org455427b"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgcd47bf0"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org5f0973c"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgfcc0c36"></a>

## linux kernel module to shut up damn bell


<a id="org28d933d"></a>

## bash books, much new features


<a id="orgd50f54f"></a>

### bash          (d christensen pick)


<a id="orgfd590e7"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org7478149"></a>

### unix shells (jeff pick)


<a id="org8473615"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgd2cad80"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org066e912"></a>

### humble bundle promotion: oreilley pocket references


<a id="orgf99a1ce"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>
