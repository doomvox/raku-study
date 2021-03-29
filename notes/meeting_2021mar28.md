- [meeting notes Mar 28, 2021](#org03f615e)
  - [topics](#orgee1bf66)
    - [news: perl foundation project to improve raku docs](#orgab65796)
    - [extracting results from grammar matches](#org83d6a0b)
    - [grammar to parse doomfiles](#orgc922a73)
    - [review continuing discussion of regex interpolation with captures](#org4289137)


<a id="org03f615e"></a>

# meeting notes Mar 28, 2021


<a id="orgee1bf66"></a>

## topics


<a id="orgab65796"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="org83d6a0b"></a>

### extracting results from grammar matches

1.  alternate example, works

    /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>zoffix</sub><sub>grammar.raku</sub>
    
    1.  from zoffix talk july 28, 2018 intro p6 regexes and grammars
    
        1.  <https://www.youtube.com/watch?v=TUmFAPvssrk>

2.  narrow down what was wrong with moritz lenz inifile

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>moritz</sub><sub>lenz</sub><sub>grammar.raku</sub>
    
        1.  bruce gray sorted it out: Needed a $/.<value> to deref, **not** $/.value
        
            1.  bad gotcha: the .value method is there for the grammar to work
            
                1.  if I understand right, running it has it try to find the next match for 'value'


<a id="orgc922a73"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence


<a id="org4289137"></a>

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
