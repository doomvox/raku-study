- [meeting notes Mar 28, 2021](#org3e240a5)
  - [topics](#org5b0b814)
    - [news: perl foundation project to improve raku docs](#org537e534)
    - [extracting results from grammar matches](#org7a50e71)
    - [grammar to parse doomfiles](#org08f2ad6)
    - [review continuing discussion of regex interpolation with captures](#org6d74424)


<a id="org3e240a5"></a>

# meeting notes Mar 28, 2021


<a id="org5b0b814"></a>

## topics


<a id="org537e534"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="org7a50e71"></a>

### extracting results from grammar matches

1.  alternate example, works

    /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>zoffix</sub><sub>grammar.raku</sub>
    
    1.  from zoffix talk july 28, 2018 intro p6 regexes and grammars
    
        1.  <https://www.youtube.com/watch?v=TUmFAPvssrk>

2.  narrow down what was wrong with moritz lenz inifile

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>moritz</sub><sub>lenz</sub><sub>grammar.raku</sub>
    
        1.  bruce gray sorted it out: Needed a $/.<value> to deref, **not** $/.value
        
            1.  bad gotcha: the .value method is there for the grammar to work
            
                1.  if I understand right, running it restarts part of the grammar matching


<a id="org08f2ad6"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence


<a id="org6d74424"></a>

### review continuing discussion of regex interpolation with captures

1.  open an issue, I think.

    bruce gray shows us some rosettacode working with lazy lists to get a list of primes with monotonically increasing differences:
    
    <http://rosettacode.org/wiki/Next_special_primes#Raku>
    
    destructured syntax:
    
    sub is-special ( ($previous, $gap) ) {
    
    sub requires a list of two elements, unpacked by convenience into those names. (Bet I can use this instead of $pair)
    
    liz code, willima michels mentions:
    
    > #Liz IRC Nil > my @a = 3,7,6,12,9,6,6,6; say @a.first(6, :k) 2
    
    next meeting on april 11th, taking a break for easter
