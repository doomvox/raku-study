- [meeting notes Mar 28, 2021](#org1d00416)
  - [topics](#orgd437174)
    - [news: perl foundation project to improve raku docs](#org070e417)
    - [nested map idioms](#orgdb72253)
    - [quoted string regexes](#orgcc566ab)
    - [extracting results from grammar matches](#org1be2923)
    - [grammar to parse doomfiles](#org3d59432)
    - [review continuing discussion of regex interpolation with captures](#org79c5d13)


<a id="org1d00416"></a>

# meeting notes Mar 28, 2021


<a id="orgd437174"></a>

## topics


<a id="org070e417"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="orgdb72253"></a>

### nested map idioms

1.  TODO nested map: review perl5 approaches

    1.  maybe, try python version

2.  TODO nested map: get some raku code working

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/nested<sub>map.raku</sub>


<a id="orgcc566ab"></a>

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


<a id="org1be2923"></a>

### extracting results from grammar matches

1.  alternate example, works

    /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>zoffix</sub><sub>grammar.raku</sub>

2.  narrow down what was wrong with moritz lenz inifile

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/ini<sub>file</sub><sub>parsing</sub><sub>with</sub><sub>moritz</sub><sub>lenz</sub><sub>grammar.raku</sub>


<a id="org3d59432"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence


<a id="org79c5d13"></a>

### review continuing discussion of regex interpolation with captures

1.  open an issue, I think.
