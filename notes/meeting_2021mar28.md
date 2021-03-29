- [meeting notes Mar 28, 2021](#org92ad00d)
  - [topics](#org532b6c4)
    - [news: perl foundation project to improve raku docs](#orgcc1cf59)
    - [extracting results from grammar matches](#orga5fc5cd)
    - [grammar to parse doomfiles](#orgd36d316)
    - [getting a list of primes with monotonically increasing differences](#org157905a)
    - [sub with "destructuring" syntax:](#orgbf0ba9b)


<a id="org92ad00d"></a>

# meeting notes Mar 28, 2021


<a id="org532b6c4"></a>

## topics


<a id="orgcc1cf59"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="orga5fc5cd"></a>

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


<a id="orgd36d316"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence (done)

    1.  a number of issues:
    
        1.  bad efficiency bug (Mohrvm panic!)
        
            fixed by changing stuff regex (.\*?) to non-greedy (.\*)


<a id="org157905a"></a>

### getting a list of primes with monotonically increasing differences

1.  bruce gray shows us some lazy list trickery up at rosettacode now

    1.  <http://rosettacode.org/wiki/Next_special_primes#Raku>


<a id="orgbf0ba9b"></a>

### sub with "destructuring" syntax:

```perl6-mode
sub is-special ( ($previous, $gap) ) {
```

sub requires a list of two elements, unpacked by convenience into those names. (Bet I can use this instead of $pair)

liz code, willima michels mentions:

> #Liz IRC Nil > my @a = 3,7,6,12,9,6,6,6; say @a.first(6, :k) 2

next meeting on april 11th, taking a break for easter
