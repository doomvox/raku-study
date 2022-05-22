- [meeting notes May 22, 2022](#org801e831)
  - [the raku study group](#orgcddd066)
    - [usual links](#org94cb653)
  - [topics](#orgaa0683b)
    - [move/copy etc, larry wall, apocaylpse, etc.  more to come.](#orgfc2aa1e)
    - [defined sigma operator experiments](#org5611963)
    - [inheriting from basic types, like an Int (Rob Ransbottom)](#org3ac34e0)
    - [add new stuff and raid last meeting for ideas](#org2f7b1a4)
  - [announcements](#orgfae8608)
    - [June 5th: next raku study group meeting](#orgf363139)
    - [June 21-25: tprc: perl/raku conference](#orga058845)


<a id="org801e831"></a>

# meeting notes May 22, 2022


<a id="orgcddd066"></a>

## the raku study group


<a id="org94cb653"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="orgaa0683b"></a>

## topics


<a id="orgfc2aa1e"></a>

### move/copy etc, larry wall, apocaylpse, etc.  more to come.


<a id="org5611963"></a>

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


<a id="org3ac34e0"></a>

### inheriting from basic types, like an Int (Rob Ransbottom)


<a id="org2f7b1a4"></a>

### TODO add new stuff and raid last meeting for ideas


<a id="orgfae8608"></a>

## announcements


<a id="orgf363139"></a>

### June 5th: next raku study group meeting


<a id="orga058845"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
