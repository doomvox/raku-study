- [meeting notes Mar 28, 2021](#org676936f)
  - [topics](#orgf16febe)
    - [news: perl foundation project to improve raku docs](#orge91602d)
    - [news: classes can have custom type coercion in 2020.11](#org82193f6)
    - [extracting results from grammar matches](#org04e1130)
    - [grammar to parse doomfiles](#orgb45f5d7)
    - [getting a list of primes with monotonically increasing differences](#orgc1da07e)
    - [the .first method](#orgf3aed30)
  - [next meeting on april 11th, taking a break for easter](#org765ae80)


<a id="org676936f"></a>

# meeting notes Mar 28, 2021


<a id="orgf16febe"></a>

## topics


<a id="orge91602d"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="org82193f6"></a>

### news: classes can have custom type coercion in 2020.11

<https://rakudoweekly.blog/2020/11/16/2020-46-coercion-renewed/>


<a id="org04e1130"></a>

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


<a id="orgb45f5d7"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence (done)

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar28/doomfiles_browse_sequence-ii.raku>
    
    1.  a number of issues:
    
        1.  bad efficiency bug (Mohrvm panic!)
        
            1.  fixed by changing   stuff regex (.\*?) to non-greedy (.\*)
            
            2.  yary hluchan suggests
            
                1.  in the specialized HTML-grammar you had, the decision points are all at left-brackets.
                
                    By re-writing "stuff" so that it will only backtrack when it hits a bracket, I expect more speed-memory gains.
                    
                    ```perl6-mode
                    regex stuff
                    { (  # capture stuff (positional capture might not be needed)
                        [               # Stuff is a group of either
                            \<          # a left-bracket decision point
                          ||            # or
                            <-[ \< ]>+: # a ratcheting string of non-decision points
                        ]*              # 0-many of those. Greedy or non-greedy both work?
                    ) }  # end capture, end regex
                    ```
        
        2.  raku regex's care about trailing whitespace when using $
        
            1.  need a \s* at the end of TOP in my grammar
            
            2.  tried a \v but sometimes there's more than one trailing newline,
            
                sometimes there are a few spaces thrown in&#x2026;
            
            3.  don't see how to refer back to a named capture within a regex
            
                ```perl6-mode
                ## NOT WORKING
                regex next_link { '<A' \s+ 'HREF="' <node_name> '.html' '">' '[NEXT -' \s+ {} $( say $/.<node_name> ) ']' '</A>' } 
                regex next_link   { '<A' \s+ 'HREF="' <node_name> '.html' '">' '[NEXT -' \s+  {} <{ $/.<node_name> }>   ']' '</A>' }
                ```
                
                1.  ended up adding a gratuitous order group around a named capture
                
                2.  note, when doing a $0 to refer back to a group in the same pattern, need '{} $0'
                
                    1.  the gratuitious code block "publishes" the intermediate match results
                    
                        ```perl6-mode
                        regex prev_link   { '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[PREV -' \s+ {} $0 ']' '</A>' }
                        ```

2.  case insensitive matches (TODO check syntax)

    |                              | perl5                        | raku                            |
    |---------------------------- |---------------------------- |------------------------------- |
    | external modifier/adverb     | m/&#x2026;/i                 | m:i/&#x2026;/                   |
    | internal to pattern          | m/(?i: &#x2026; )/           | m:/ :i &#x2026; /               |
    | mixed, only part insensitive | m/(?i: &#x2026; ) &#x2026; / | m:/ [ :i &#x2026; ] &#x2026;  / |
    |                              |                              |                                 |

3.  using a real html parser is usually recommended, of course:

    1.  Yary H : The HTML-tree-find module I was looking at is <https://github.com/zostay/raku-DOM-Tiny>


<a id="orgc1da07e"></a>

### getting a list of primes with monotonically increasing differences

1.  bruce gray shows us some lazy list trickery up at rosettacode now

    1.  <http://rosettacode.org/wiki/Next_special_primes#Raku>

2.  sub with "destructuring" syntax:

    ```perl6-mode
    sub is-special ( ($previous, $gap) ) {
    ```
    
    sub takes a list of two elements, unpacked into the two named variables.
    
    (Better than my usual dodge of passing a var named $pair which is not actually a Pair.)


<a id="orgf3aed30"></a>

### the .first method

william michels was interested in some lizmat examples from irc

<https://github.com/doomvox/raku-study/blob/main/bin/2021mar28/first_method_on_arrays.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar28/first<sub>method</sub><sub>on</sub><sub>arrays.raku</sub>


<a id="org765ae80"></a>

## next meeting on april 11th, taking a break for easter
