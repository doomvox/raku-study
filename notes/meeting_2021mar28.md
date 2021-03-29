- [meeting notes Mar 28, 2021](#org31126e1)
  - [topics](#org969d574)
    - [news: perl foundation project to improve raku docs](#org43de971)
    - [news: classes can have custom type coercion in 2020.11](#orgeb6cdfe)
    - [extracting results from grammar matches](#org27f784f)
    - [grammar to parse doomfiles](#org21aa06d)
    - [using a real html parser is usually recommended, or course:](#org5ba0705)
    - [getting a list of primes with monotonically increasing differences](#orgbb6001a)
    - [the .first method](#orgfdc531b)
  - [next meeting on april 11th, taking a break for easter](#orgb63d80f)


<a id="org31126e1"></a>

# meeting notes Mar 28, 2021


<a id="org969d574"></a>

## topics


<a id="org43de971"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="orgeb6cdfe"></a>

### news: classes can have custom type coercion in 2020.11

<https://rakudoweekly.blog/2020/11/16/2020-46-coercion-renewed/>


<a id="org27f784f"></a>

### extracting results from grammar matches

1.  alternate example, works

    /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>zoffix</sub><sub>grammar.raku</sub>
    
    1.  from zoffix talk july 28, 2018 intro p6 regexes and grammars
    
        1.  <https://www.youtube.com/watch?v=TUmFAPvssrk>

2.  narrow down what was wrong with moritz lenz inifile

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>moritz</sub><sub>lenz</sub><sub>grammar.raku</sub>
    
        1.  bruce gray sorted it out: Needed a $/.<value> to deref, **not** $/.value
        
            1.  bad gotcha: the .value method is there for the grammar to work
            
                1.  if I understand right: calling it restarts part of the grammar matching


<a id="org21aa06d"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence (done)

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar28/doomfiles_browse_sequence-ii.raku>
    
    1.  a number of issues:
    
        1.  bad efficiency bug (Mohrvm panic!)
        
            fixed by changing stuff regex (.\*?) to non-greedy (.\*)

2.  case insensitive matches (TODO check syntax)

    |                              | perl5                        | raku                            |
    |---------------------------- |---------------------------- |------------------------------- |
    | external modifier/adverb     | m/&#x2026;/i                 | m:i/&#x2026;/                   |
    | internal to pattern          | m/(?i: &#x2026; )/           | m:/ :i &#x2026; /               |
    | mixed, only part insensitive | m/(?i: &#x2026; ) &#x2026; / | m:/ [ :i &#x2026; ] &#x2026;  / |
    |                              |                              |                                 |


<a id="org5ba0705"></a>

### using a real html parser is usually recommended, or course:

1.  Yary H : The HTML-tree-find module I was looking at is <https://github.com/zostay/raku-DOM-Tiny>


<a id="orgbb6001a"></a>

### getting a list of primes with monotonically increasing differences

1.  bruce gray shows us some lazy list trickery up at rosettacode now

    1.  <http://rosettacode.org/wiki/Next_special_primes#Raku>

2.  sub with "destructuring" syntax:

    ```perl6-mode
    sub is-special ( ($previous, $gap) ) {
    ```
    
    sub takes a list of two elements, unpacked into the two named variables.
    
    (Better than my usual dodge of passing a var named $pair which is not actually a Pair.)


<a id="orgfdc531b"></a>

### the .first method

william michels was interested in some lizmat examples from irc

<https://github.com/doomvox/raku-study/blob/main/bin/2021mar28/first_method_on_arrays.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar28/first<sub>method</sub><sub>on</sub><sub>arrays.raku</sub>


<a id="orgb63d80f"></a>

## next meeting on april 11th, taking a break for easter
