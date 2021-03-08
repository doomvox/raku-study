- [meeting notes Mar 07, 2021](#org875123b)
  - [announcments](#orgd128eda)
    - [richard hainsworth: alternative pod6 processing](#orgb5ac0a8)
  - [the usual meeting links:](#org90aeaa8)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgcb9871d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org26ee0c2)
  - [topics](#org322543d)
    - [lamberts regex problem, munging sudoers lines](#org461cd53)
    - [jeff questions about compiler options, etc](#org046eaa8)
    - [the great "say Set.<sup>methods</sup>" affair](#org930ab9a)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org79dab4f)
    - [69 cent tour of raku regexs](#orgc45d93e)
    - [some simple grammar demos](#orgd65b743)
  - [possible topics (carried over from earlier meetings)](#org309eeee)
    - [Steven<sub>lembark</sub>](#org47b6afd)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgf5e4254)
    - [andrew shitov "Perl 6 at a Glance"](#org005668d)
    - [perl weekly challenge:](#orgf0d8a9f)
    - [promises and threads](#org4ee81b2)
  - [linux kernel module to shut up damn bell](#org337a143)
  - [bash books, much new features](#org9c57e03)
    - [bash          (d christensen pick)](#orgfe2e4ba)
    - [bash cookbook (d christensen pick, weak writing)](#org52be10b)
    - [unix shells (jeff pick)](#org35c8bee)
    - [bash programming, apress (alan)](#org6f45d1a)
    - [book on the hidden logic of english:](#org645b580)


<a id="org875123b"></a>

# meeting notes Mar 07, 2021


<a id="orgd128eda"></a>

## announcments


<a id="orgb5ac0a8"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org90aeaa8"></a>

## the usual meeting links:


<a id="orgcb9871d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org26ee0c2"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org322543d"></a>

## topics


<a id="org461cd53"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org046eaa8"></a>

### jeff questions about compiler options, etc


<a id="org930ab9a"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org79dab4f"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgc45d93e"></a>

### 69 cent tour of raku regexs


<a id="orgd65b743"></a>

### some simple grammar demos


<a id="org309eeee"></a>

## possible topics (carried over from earlier meetings)


<a id="org47b6afd"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgf5e4254"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org005668d"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgf0d8a9f"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org4ee81b2"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org337a143"></a>

## linux kernel module to shut up damn bell


<a id="org9c57e03"></a>

## bash books, much new features


<a id="orgfe2e4ba"></a>

### bash          (d christensen pick)


<a id="org52be10b"></a>

### bash cookbook (d christensen pick, weak writing)


<a id="org35c8bee"></a>

### unix shells (jeff pick)


<a id="org6f45d1a"></a>

### bash programming, apress (alan)


<a id="org645b580"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english"

    1.  clusters of morphemes
