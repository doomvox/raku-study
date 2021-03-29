- [meeting notes Mar 28, 2021](#org940b435)
  - [topics](#orgf487c3b)
    - [news: perl foundation project to improve raku docs](#orgccf0efc)
    - [news: classes can have custom type coercion in 2020.11](#orgc245214)
    - [extracting results from grammar matches](#org28faa7a)
    - [grammar to parse doomfiles](#orga2b4499)
    - [using a real html parser is usually recommended, or course:](#orgec083d5)
    - [getting a list of primes with monotonically increasing differences](#org2d0d874)
    - [sub with "destructuring" syntax:](#org22d04e0)
    - [the .first method](#orgb6a891c)
  - [next meeting on april 11th, taking a break for easter](#orgede2436)


<a id="org940b435"></a>

# meeting notes Mar 28, 2021


<a id="orgf487c3b"></a>

## topics


<a id="orgccf0efc"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="orgc245214"></a>

### news: classes can have custom type coercion in 2020.11

<https://rakudoweekly.blog/2020/11/16/2020-46-coercion-renewed/>


<a id="org28faa7a"></a>

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


<a id="orga2b4499"></a>

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


<a id="orgec083d5"></a>

### using a real html parser is usually recommended, or course:

1.  Yary H : The HTML-tree-find module I was looking at is <https://github.com/zostay/raku-DOM-Tiny>


<a id="org2d0d874"></a>

### getting a list of primes with monotonically increasing differences

1.  bruce gray shows us some lazy list trickery up at rosettacode now

    1.  <http://rosettacode.org/wiki/Next_special_primes#Raku>


<a id="org22d04e0"></a>

### sub with "destructuring" syntax:

```perl6-mode
sub is-special ( ($previous, $gap) ) {
```

sub takes a list of two elements, unpacked into the two named variables.

(Better than my usual dodge of passing a var named $pair which is not actually a Pair.)


<a id="orgb6a891c"></a>

### the .first method

william michels was interested in some lizmat examples from irc

<https://github.com/doomvox/raku-study/blob/main/bin/2021mar28/first_method_on_arrays.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar28/first<sub>method</sub><sub>on</sub><sub>arrays.raku</sub>


<a id="orgede2436"></a>

## next meeting on april 11th, taking a break for easter
