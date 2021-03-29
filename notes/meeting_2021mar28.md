- [meeting notes Mar 28, 2021](#orgcf8bb23)
  - [topics](#org5ad77b1)
    - [news: perl foundation project to improve raku docs](#orga9975f1)
    - [extracting results from grammar matches](#orgd15dc34)
    - [grammar to parse doomfiles](#org43030f9)
    - [getting a list of primes with monotonically increasing differences](#org7c05aa0)
    - [sub with "destructuring" syntax:](#org79c722e)
    - [the .first method](#org3b15266)
  - [next meeting on april 11th, taking a break for easter](#org74a6f13)


<a id="orgcf8bb23"></a>

# meeting notes Mar 28, 2021


<a id="org5ad77b1"></a>

## topics


<a id="orga9975f1"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="orgd15dc34"></a>

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


<a id="org43030f9"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence (done)

    1.  a number of issues:
    
        1.  bad efficiency bug (Mohrvm panic!)
        
            fixed by changing stuff regex (.\*?) to non-greedy (.\*)


<a id="org7c05aa0"></a>

### getting a list of primes with monotonically increasing differences

1.  bruce gray shows us some lazy list trickery up at rosettacode now

    1.  <http://rosettacode.org/wiki/Next_special_primes#Raku>


<a id="org79c722e"></a>

### sub with "destructuring" syntax:

```perl6-mode
sub is-special ( ($previous, $gap) ) {
```

sub takes a list of two elements, unpacked into the two named variables.

(Better than my usual dodge of passing a $pair variable&#x2013; which isn't a Pair.)


<a id="org3b15266"></a>

### the .first method

william michels was interested in some lizmat examples from irc

<https://github.com/doomvox/raku-study/blob/main/bin/2021mar28/first_method_on_arrays.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar28/first<sub>method</sub><sub>on</sub><sub>arrays.raku</sub>

<https://github.com/doomvox/raku-study/blob/main/bin/2021mar28/doomfiles_browse_sequence-ii.raku>


<a id="org74a6f13"></a>

## next meeting on april 11th, taking a break for easter
