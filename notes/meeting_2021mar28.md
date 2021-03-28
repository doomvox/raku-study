- [meeting notes Mar 28, 2021](#orgef749eb)
  - [topics](#org2b1e183)
    - [news: perl foundation project to improve raku docs](#orgca74673)
    - [nested map idioms](#org1265cc9)
    - [quoted string regexes](#org01af4e8)
    - [extracting results from grammar matches](#org9feedee)
    - [grammar to parse doomfiles](#org235e4f4)
    - [review continuing discussion of regex interpolation with captures](#orgf699758)


<a id="orgef749eb"></a>

# meeting notes Mar 28, 2021


<a id="org2b1e183"></a>

## topics


<a id="orgca74673"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="org1265cc9"></a>

### nested map idioms

1.  TODO nested map: review perl5 approaches

    1.  maybe, try python version

2.  TODO nested map: get some raku code working

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/nested<sub>map.raku</sub>


<a id="org01af4e8"></a>

### quoted string regexes

1.  TODO re<sub>quoted</sub><sub>str</sub>: perl5 versions

2.  TODO re<sub>quoted</sub><sub>str</sub>: continue with raku versions

    1.  next: balanced quotes of various types
    
        1.  yary hluchan
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/bin/richard_hainsworth_grammar.raku>
            
            2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/richard<sub>hainsworth</sub><sub>grammar.raku</sub>
        
        2.  moritz lenz
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/bin/2021mar21/parsing_quoted_strings_backslash.raku>
            
            2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/parsing<sub>quoted</sub><sub>strings</sub><sub>backslash.raku</sub>


<a id="org9feedee"></a>

### extracting results from grammar matches

1.  alternate example, works

    /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>zoffix</sub><sub>grammar.raku</sub>

2.  narrow down what was wrong with moritz lenz inifile

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>moritz</sub><sub>lenz</sub><sub>grammar.raku</sub>


<a id="org235e4f4"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence


<a id="orgf699758"></a>

### review continuing discussion of regex interpolation with captures

1.  open an issue, I think.

    bruce gray shows us some rosettacode working with lazy lists to get a list of primes with monotonically increasing differences:
    
    <http://rosettacode.org/wiki/Next_special_primes#Raku>
    
    destructured syntax:
    
    sub is-special ( ($previous, $gap) ) {
    
    sub requires a list of two elements, unpacked by convenience into those names. (Bet I can use this instead of $pair)
