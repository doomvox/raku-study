- [meeting notes May 22, 2022](#orgde39b90)
  - [the raku study group](#orgd4c7fe1)
    - [usual links](#orgb44f5f2)
  - [topics](#orgeef3bd5)
    - [move/copy etc, larry wall, apocaylpse, etc.  more to come.](#orgcb85b97)
    - [defined sigma operator experiments](#org8f5eb81)
    - [add new stuff and raid last meeting for ideas](#org3e5a0d1)
  - [announcements](#orgd386760)
    - [June 5th: next raku study group meeting](#orga106288)
    - [June 21-25: tprc: perl/raku conference](#org24a7b83)


<a id="orgde39b90"></a>

# meeting notes May 22, 2022


<a id="orgd4c7fe1"></a>

## the raku study group


<a id="orgb44f5f2"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="orgeef3bd5"></a>

## topics


<a id="orgcb85b97"></a>

### move/copy etc, larry wall, apocaylpse, etc.  more to come.


<a id="org8f5eb81"></a>

### defined sigma operator experiments

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


<a id="org3e5a0d1"></a>

### TODO add new stuff and raid last meeting for ideas


<a id="orgd386760"></a>

## announcements


<a id="orga106288"></a>

### June 5th: next raku study group meeting


<a id="org24a7b83"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
