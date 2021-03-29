- [meeting notes Mar 28, 2021](#orgc14fe0d)
  - [topics](#orgae6d41b)
    - [news: perl foundation project to improve raku docs](#org310ded7)
    - [extracting results from grammar matches](#org013a0a2)
    - [grammar to parse doomfiles](#org951ae50)
    - [getting a list of primes with monotonically increasing differences](#org9295f97)
    - [sub with "destructuring" syntax:](#orgdbe63f0)
    - [the .first method](#org4ae39f9)


<a id="orgc14fe0d"></a>

# meeting notes Mar 28, 2021


<a id="orgae6d41b"></a>

## topics


<a id="org310ded7"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="org013a0a2"></a>

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


<a id="org951ae50"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence (done)

    1.  a number of issues:
    
        1.  bad efficiency bug (Mohrvm panic!)
        
            fixed by changing stuff regex (.\*?) to non-greedy (.\*)


<a id="org9295f97"></a>

### getting a list of primes with monotonically increasing differences

1.  bruce gray shows us some lazy list trickery up at rosettacode now

    1.  <http://rosettacode.org/wiki/Next_special_primes#Raku>


<a id="orgdbe63f0"></a>

### sub with "destructuring" syntax:

```perl6-mode
sub is-special ( ($previous, $gap) ) {
```

sub takes a list of two elements, unpacked into the two named variables.

(Better than my usual dodge of passing a $pair variable&#x2013; which isn't a Pair.)


<a id="org4ae39f9"></a>

### the .first method

william michels was interested in some lizmat examples from irc

> #Liz IRC Nil > my @a = 3,7,6,12,9,6,6,6; say @a.first(6, :k) 2

next meeting on april 11th, taking a break for easter
