- [meeting notes Mar 28, 2021](#org709087d)
  - [topics](#orgf73b8c5)
    - [news: perl foundation project to improve raku docs](#orgafd6381)
    - [extracting results from grammar matches](#org25c827a)
    - [grammar to parse doomfiles](#org5c225db)
    - [getting a list of primes with monotonically increasing differences](#orge327d9d)
    - [sub with "destructuring" syntax:](#org48801e0)


<a id="org709087d"></a>

# meeting notes Mar 28, 2021


<a id="orgf73b8c5"></a>

## topics


<a id="orgafd6381"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="org25c827a"></a>

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


<a id="org5c225db"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence (done)

    1.  a number of issues:
    
        1.  bad efficiency bug (Mohrvm panic!)
        
            fixed by changing stuff regex (.\*?) to non-greedy (.\*)


<a id="orge327d9d"></a>

### getting a list of primes with monotonically increasing differences

1.  bruce gray shows us some lazy list trickery up at rosettacode now

    1.  <http://rosettacode.org/wiki/Next_special_primes#Raku>


<a id="org48801e0"></a>

### sub with "destructuring" syntax:

```perl6-mode
sub is-special ( ($previous, $gap) ) {
```

sub takes a list of two elements, unpacked into the two named variables.

(Better than my usual dodge of passing a $pair variable&#x2013; which isn't a Pair.)

liz code, willima michels mentions:

> #Liz IRC Nil > my @a = 3,7,6,12,9,6,6,6; say @a.first(6, :k) 2

next meeting on april 11th, taking a break for easter
