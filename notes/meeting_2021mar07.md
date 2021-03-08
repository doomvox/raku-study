- [meeting notes Mar 07, 2021](#org953708e)
  - [announcments](#orgacff491)
    - [richard hainsworth: alternative pod6 processing](#orgca57f34)
  - [the usual meeting links:](#org4294e74)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgb644da0)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orge082fc2)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org3b67a2a)
    - [lamberts regex problem, munging sudoers lines](#org1da8a17)
    - [jeff questions about compiler options, etc](#org61427a4)
    - [the great "say Set.<sup>methods</sup>" affair](#orgbbe46ce)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org56c4825)
    - [69 cent tour of raku regexs](#orgdbb7cd5)
    - [some simple grammar demos](#orgd0be00b)
  - [possible topics (carried over from earlier meetings)](#orgeda0573)
    - [Steven<sub>lembark</sub>](#org3a257c8)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org1bb3458)
    - [andrew shitov "Perl 6 at a Glance"](#orge3765c1)
    - [perl weekly challenge:](#org03b3e5a)
    - [promises and threads](#org108d648)
  - [linux kernel module to shut up damn bell](#org9869d93)
  - [bash books, much new features](#orgaa516bc)
    - [bash          (d christensen pick)](#org7d9d008)
    - [bash cookbook (d christensen mention, weak writing)](#org2e18522)
    - [unix shells (jeff pick)](#org6b27051)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgc22546e)
    - [book on the hidden logic of english:](#org2903a79)
    - [humble bundle promotion: oreilley pocket references](#orgb50a1d0)
    - [bruce gray discussion](#org724b23b)
    - [shadow novel where esperanto was spoken](#org468c4af)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#orgb91ac6c)


<a id="org953708e"></a>

# meeting notes Mar 07, 2021


<a id="orgacff491"></a>

## announcments


<a id="orgca57f34"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org4294e74"></a>

## the usual meeting links:


<a id="orgb644da0"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orge082fc2"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org3b67a2a"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org1da8a17"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org61427a4"></a>

### jeff questions about compiler options, etc


<a id="orgbbe46ce"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org56c4825"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgdbb7cd5"></a>

### 69 cent tour of raku regexs


<a id="orgd0be00b"></a>

### some simple grammar demos


<a id="orgeda0573"></a>

## possible topics (carried over from earlier meetings)


<a id="org3a257c8"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org1bb3458"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orge3765c1"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org03b3e5a"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org108d648"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org9869d93"></a>

## linux kernel module to shut up damn bell


<a id="orgaa516bc"></a>

## bash books, much new features


<a id="org7d9d008"></a>

### bash          (d christensen pick)


<a id="org2e18522"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org6b27051"></a>

### unix shells (jeff pick)


<a id="orgc22546e"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org2903a79"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="orgb50a1d0"></a>

### humble bundle promotion: oreilley pocket references


<a id="org724b23b"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org468c4af"></a>

### shadow novel where esperanto was spoken


<a id="orgb91ac6c"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>
