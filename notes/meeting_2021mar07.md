- [meeting notes Mar 07, 2021](#org60f993f)
  - [announcments](#orga973860)
    - [richard hainsworth: alternative pod6 processing](#orgac25c8f)
  - [the usual meeting links:](#orgfc83dab)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org8b0e78e)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org1e437eb)
  - [topics](#org1fecfbe)
    - [lamberts regex problem, munging sudoers lines](#org39c09ac)
    - [jeff questions about compiler options, etc](#org433235f)
    - [the great "say Set.<sup>methods</sup>" affair](#org5c7aa0d)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org57dad95)
    - [69 cent tour of raku regexs](#org9bd8c58)
    - [some simple grammar demos](#orgd22e99d)
  - [possible topics (carried over from earlier meetings)](#org08b97e3)
    - [Steven<sub>lembark</sub>](#orgb9547ea)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org2ebd029)
    - [andrew shitov "Perl 6 at a Glance"](#orgd5532e8)
    - [perl weekly challenge:](#org0569d98)
    - [promises and threads](#orga586cd4)
  - [linux kernel module to shut up damn bell](#org8fdc9a1)
  - [bash books, much new features](#org5dbb0ff)


<a id="org60f993f"></a>

# meeting notes Mar 07, 2021


<a id="orga973860"></a>

## announcments


<a id="orgac25c8f"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgfc83dab"></a>

## the usual meeting links:


<a id="org8b0e78e"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org1e437eb"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org1fecfbe"></a>

## topics


<a id="org39c09ac"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org433235f"></a>

### jeff questions about compiler options, etc


<a id="org5c7aa0d"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org57dad95"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org9bd8c58"></a>

### 69 cent tour of raku regexs


<a id="orgd22e99d"></a>

### some simple grammar demos


<a id="org08b97e3"></a>

## possible topics (carried over from earlier meetings)


<a id="orgb9547ea"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org2ebd029"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgd5532e8"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org0569d98"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orga586cd4"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org8fdc9a1"></a>

## linux kernel module to shut up damn bell


<a id="org5dbb0ff"></a>

## bash books, much new features

bash (d christensen pick) bash cookbook (d christensen pick, weak writing) unix shells (jeff pick)
