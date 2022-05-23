- [meeting notes May 22, 2022](#org23e313d)
  - [the raku study group](#orgcb4e2c7)
    - [usual links](#org533ab2a)
  - [topics](#org3223ed3)
    - [move/copy etc, larry wall, apocaylpse, etc.  more to come.](#org706dd13)
    - [defined sigma operator experiments](#org4601232)
    - [inheriting from basic types, like an Int (Rob Ransbottom)](#orgd92f8ce)
    - [raid previous meetings for ideas, do follow-up](#orgdfa35b1)
  - [announcements](#orgfdd353d)
    - [June 5th: next raku study group meeting](#org1e1a4e9)
    - [June 21-25: tprc: perl/raku conference](#org1d06281)


<a id="org23e313d"></a>

# meeting notes May 22, 2022


<a id="orgcb4e2c7"></a>

## the raku study group


<a id="org533ab2a"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="org3223ed3"></a>

## topics


<a id="org706dd13"></a>

### move/copy etc, larry wall, apocaylpse, etc.  more to come.


<a id="org4601232"></a>

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


<a id="orgd92f8ce"></a>

### inheriting from basic types, like an Int (Rob Ransbottom)


<a id="orgdfa35b1"></a>

### TODO raid previous meetings for ideas, do follow-up


<a id="orgfdd353d"></a>

## announcements


<a id="org1e1a4e9"></a>

### June 5th: next raku study group meeting


<a id="org1d06281"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
