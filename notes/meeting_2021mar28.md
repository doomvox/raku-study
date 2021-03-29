- [meeting notes Mar 28, 2021](#orgdc14968)
  - [topics](#org65514e9)
    - [news: perl foundation project to improve raku docs](#orgb699e3c)
    - [news: classes can have custom type coercion in 2020.11](#org191bf8d)
    - [extracting results from grammar matches](#org10a2865)
    - [grammar to parse doomfiles](#orgd08f912)
    - [getting a list of primes with monotonically increasing differences](#orgc8be8a2)
    - [the .first method](#org3c7663b)
  - [next meeting on april 11th, taking a break for easter](#orgb60d6a1)


<a id="orgdc14968"></a>

# meeting notes Mar 28, 2021


<a id="org65514e9"></a>

## topics


<a id="orgb699e3c"></a>

### news: perl foundation project to improve raku docs

1.  <https://perl-foundation-outreach.github.io/season-of-docs-ideas/docs.html>

    1.  some of the ideas include documenting exceptions and traits better
    
    2.  they're looking for suggestions for big things to fix (not our usual bug reports to JJ)


<a id="org191bf8d"></a>

### news: classes can have custom type coercion in 2020.11

<https://rakudoweekly.blog/2020/11/16/2020-46-coercion-renewed/>


<a id="org10a2865"></a>

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


<a id="orgd08f912"></a>

### grammar to parse doomfiles

1.  simple scripts, e.g. scan through browse sequence (done)

    <https://github.com/doomvox/raku-study/blob/main/bin/2021mar28/doomfiles_browse_sequence-ii.raku>
    
    1.  a number of issues:
    
        1.  bad efficiency bug (Mohrvm panic!)
        
            1.  fixed by changing   stuff regex (.\*?) to non-greedy (.\*)
            
            2.  yary hluchan suggests
            
                ```perl6-mode
                Add star  yary<not.com@gmail.com>	Mon, Mar 29, 2021 at 8:36 AM
                To: Joseph Brenner <doomvox@gmail.com>
                Cc: perl6-users <perl6-users@perl.org>, San Francisco Perl Mongers User Group <sanfrancisco-pm@pm.org>
                Reply | Reply to all | Forward | Print | Delete | Show original
                Hi Joe & other Raku study group attendees,
                
                At the time I left, we were looking at a grammar with a speed-memory issue on large-ish files. I had a germ of an idea which I couldn't express, and from the meeting notes I see you have a simple fix "by changing stuff regex (.\*?) to non-greedy (.\*)" I suspect the greedy-optimization works because the thing after the "stuff" regex is near the end of the file. Thus if instead it was close to the beginning, it would have a similar issue with greedy and non-greedy would fix.
                
                With a night to sleep on it, the thing I was thinking & trying to say is that, in the specialized HTML-grammar you had, the decision points are all at left-brackets. By re-writing "stuff" so that it will only backtrack when it hits a bracket, I expect more speed-memory gains.
                
                How well does this perform vs the simple .* greedy fix?
                
                    regex stuff
                    { (  # capture stuff (positional capture might not be needed)
                        [               # Stuff is a group of either
                            \<          # a left-bracket decision point
                          ||            # or
                            <-[ \< ]>+: # a ratcheting string of non-decision points
                        ]*              # 0-many of those. Greedy or non-greedy both work?
                    ) }  # end capture, end regex
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


<a id="orgc8be8a2"></a>

### getting a list of primes with monotonically increasing differences

1.  bruce gray shows us some lazy list trickery up at rosettacode now

    1.  <http://rosettacode.org/wiki/Next_special_primes#Raku>

2.  sub with "destructuring" syntax:

    ```perl6-mode
    sub is-special ( ($previous, $gap) ) {
    ```
    
    sub takes a list of two elements, unpacked into the two named variables.
    
    (Better than my usual dodge of passing a var named $pair which is not actually a Pair.)


<a id="org3c7663b"></a>

### the .first method

william michels was interested in some lizmat examples from irc

<https://github.com/doomvox/raku-study/blob/main/bin/2021mar28/first_method_on_arrays.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar28/first<sub>method</sub><sub>on</sub><sub>arrays.raku</sub>


<a id="orgb60d6a1"></a>

## next meeting on april 11th, taking a break for easter
