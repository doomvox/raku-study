- [meeting notes Mar 07, 2021](#org453f925)
  - [announcments](#org9a7945f)
    - [richard hainsworth: alternative pod6 processing](#org7270008)
  - [the usual meeting links:](#orge981195)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orge5e346a)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org0635de6)
  - [topics](#org750fb31)
    - [lamberts regex problem, munging sudoers lines](#org1344829)
    - [jeff questions about compiler options, etc](#orgddefd82)
    - [the great "say Set.<sup>methods</sup>" affair](#orgff0f5b2)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orga0009fd)
    - [69 cent tour of raku regexs](#org193b98d)
    - [some simple grammar demos](#org22a7bdc)
  - [possible topics (carried over from earlier meetings)](#org4377437)
    - [Steven<sub>lembark</sub>](#orgc155545)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orge8517dc)
    - [andrew shitov "Perl 6 at a Glance"](#orge34ad0b)
    - [perl weekly challenge:](#org3fd4933)
    - [promises and threads](#org3b05a14)
  - [linux kernel module to shut up damn bell](#org9cfc6d1)
  - [bash books, much new features](#org73aaefc)
    - [bash          (d christensen pick)](#org1e57ff8)
    - [bash cookbook (d christensen mention, weak writing)](#orgfcebc74)
    - [unix shells (jeff pick)](#org3908af1)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org88741bf)
    - [book on the hidden logic of english:](#org217b7fb)
    - [humble bundle promotion: oreilley pocket references](#org2a46142)
    - [bruce gray discussion](#org817a5f0)


<a id="org453f925"></a>

# meeting notes Mar 07, 2021


<a id="org9a7945f"></a>

## announcments


<a id="org7270008"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orge981195"></a>

## the usual meeting links:


<a id="orge5e346a"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org0635de6"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org750fb31"></a>

## topics


<a id="org1344829"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgddefd82"></a>

### jeff questions about compiler options, etc


<a id="orgff0f5b2"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orga0009fd"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org193b98d"></a>

### 69 cent tour of raku regexs


<a id="org22a7bdc"></a>

### some simple grammar demos


<a id="org4377437"></a>

## possible topics (carried over from earlier meetings)


<a id="orgc155545"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orge8517dc"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orge34ad0b"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org3fd4933"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org3b05a14"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org9cfc6d1"></a>

## linux kernel module to shut up damn bell


<a id="org73aaefc"></a>

## bash books, much new features


<a id="org1e57ff8"></a>

### bash          (d christensen pick)


<a id="orgfcebc74"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org3908af1"></a>

### unix shells (jeff pick)


<a id="org88741bf"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org217b7fb"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org2a46142"></a>

### humble bundle promotion: oreilley pocket references


<a id="org817a5f0"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>
