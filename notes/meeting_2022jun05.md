- [meeting notes June 05, 2022](#org60399de)
  - [the raku study group](#orgbf91743)
  - [announcements](#orgd7b4a49)
    - [June 19th: next raku study group meeting (just a few days before&#x2026;)](#org51b5b83)
    - [June 21-25: tprc: perl/raku conference](#orged554ac)
  - [some excerpts from the last meeting notes May 22, 2022](#orgbae1ebc)
    - [topics](#orga4a7c20)


<a id="org60399de"></a>

# meeting notes June 05, 2022


<a id="orgbf91743"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="orgd7b4a49"></a>

## announcements


<a id="org51b5b83"></a>

### June 19th: next raku study group meeting (just a few days before&#x2026;)


<a id="orged554ac"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>


<a id="orgbae1ebc"></a>

## some excerpts from the last meeting notes May 22, 2022


<a id="orga4a7c20"></a>

### topics

1.  move/copy etc, larry wall, apocaylpse, etc.  more to come.

2.  defined sigma operator experiments

    1.  got interested in this for silly reasons
    
        1.  <https://www.reddit.com/r/programmingcirclejerk/comments/utsld6/ask_hn_why_doesnt_math_look_like_a_programming/>
    
    2.  controlling precedence of custom operators
    
    3.  broken link in here: <https://docs.raku.org/language/operators>
    
        1.  <https://docs.raku.org/language/language/functions#Precedence>
        
        2.  "precedence of custom operators"
        
        3.  TODO BUG in docs
        
        4.  but this works, coming at it in other ways, WTF?
        
            1.  <https://docs.raku.org/language/functions#Precedence>
            
            2.  there's no link to this from here:
            
                1.  <https://docs.raku.org/language/optut>
    
    4.  bruce gray says you can define operator precedence relative to other existing operators
    
        1.  <https://docs.raku.org/language/functions#Precedence>
        
            ```perl6
            sub infix:<!!>($a, $b) is tighter(&infix:<+>) {
                2 * ($a + $b)
            }
            ```

3.  inheriting from basic types, like an Int (Rob Ransbottom)

4.  TODO raid previous meetings for ideas, do follow-up
