- [meeting notes Mar 07, 2021](#org3d0865e)
  - [announcments](#org1e42cef)
    - [richard hainsworth: alternative pod6 processing](#org86b3233)
  - [the usual meeting links:](#org95c64bd)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgf4a68f3)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org1eb505a)
  - [topics](#orgc803fda)
    - [lamberts regex problem, munging sudoers lines](#orgbd2b5bd)
    - [jeff questions about compiler options, etc](#org022099f)
    - [the great "say Set.<sup>methods</sup>" affair](#org76083ad)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgb268587)
    - [69 cent tour of raku regexs](#org565ccba)
    - [some simple grammar demos](#orgd4e5f7f)
  - [possible topics (carried over from earlier meetings)](#org70e3f5d)
    - [Steven<sub>lembark</sub>](#orgcd9977f)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org4bc374e)
    - [andrew shitov "Perl 6 at a Glance"](#orgbd9d649)
    - [perl weekly challenge:](#org363f24b)
    - [promises and threads](#org8116966)
  - [linux kernel module to shut up damn bell](#org4c1feb0)
  - [bash books](#orgaa2c0c2)


<a id="org3d0865e"></a>

# meeting notes Mar 07, 2021


<a id="org1e42cef"></a>

## announcments


<a id="org86b3233"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org95c64bd"></a>

## the usual meeting links:


<a id="orgf4a68f3"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org1eb505a"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgc803fda"></a>

## topics


<a id="orgbd2b5bd"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org022099f"></a>

### jeff questions about compiler options, etc


<a id="org76083ad"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgb268587"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org565ccba"></a>

### 69 cent tour of raku regexs


<a id="orgd4e5f7f"></a>

### some simple grammar demos


<a id="org70e3f5d"></a>

## possible topics (carried over from earlier meetings)


<a id="orgcd9977f"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org4bc374e"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgbd9d649"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org363f24b"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org8116966"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org4c1feb0"></a>

## linux kernel module to shut up damn bell


<a id="orgaa2c0c2"></a>

## bash books

bash (d christensen pick) bash cookbook (d christensen pick) unix shells (jeff pick)
