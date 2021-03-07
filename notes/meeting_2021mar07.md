- [meeting notes Mar 07, 2021](#orgf2bea7b)
  - [announcments](#org14a81a3)
    - [richard hainsworth: alternative pod6 processing](#org7da0962)
  - [the usual meeting links:](#org16da012)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org46561d5)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org0bd4daf)
  - [topics](#org2127e00)
    - [lamberts regex problem, munging sudoers lines](#org7837dc1)
    - [jeff questions about compiler options, etc](#orgc8068a8)
    - [the great "say Set.<sup>methods</sup>" affair](#org4b756c2)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org8935ced)
    - [69 cent tour of raku regexs](#org1e37baf)
    - [some simple grammar demos](#orgb21b91f)
  - [possible topics (carried over from earlier meetings)](#orgba5a5ed)
    - [Steven<sub>lembark</sub>](#org0536080)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org035b17f)
    - [andrew shitov "Perl 6 at a Glance"](#org4f31ce3)
    - [perl weekly challenge:](#org95c879e)
    - [promises and threads](#org663464e)
  - [linux kernel module to shut up damn bell](#orga3eb8f7)


<a id="orgf2bea7b"></a>

# meeting notes Mar 07, 2021


<a id="org14a81a3"></a>

## announcments


<a id="org7da0962"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org16da012"></a>

## the usual meeting links:


<a id="org46561d5"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org0bd4daf"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org2127e00"></a>

## topics


<a id="org7837dc1"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgc8068a8"></a>

### jeff questions about compiler options, etc


<a id="org4b756c2"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org8935ced"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org1e37baf"></a>

### 69 cent tour of raku regexs


<a id="orgb21b91f"></a>

### some simple grammar demos


<a id="orgba5a5ed"></a>

## possible topics (carried over from earlier meetings)


<a id="org0536080"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org035b17f"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org4f31ce3"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org95c879e"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org663464e"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orga3eb8f7"></a>

## linux kernel module to shut up damn bell
