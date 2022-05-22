- [meeting notes May 22, 2022](#org1004c8f)
  - [the raku study group](#org4cb15a4)
    - [usual links](#orge3a9581)
  - [topics](#org309e0f8)
    - [move/copy etc, larry wall, apocaylpse, etc.  more to come.](#org6bffc49)
    - [defined sigma operator experiments](#orgb585ce5)
    - [add new stuff and raid last meeting for ideas](#org9628354)
    - [define a sigma operator for summation](#org217a9ed)
  - [announcements](#org1aa983f)
    - [June 5th: next raku study group meeting](#orgc51a6eb)
    - [June 21-25: tprc: perl/raku conference](#org288e12e)


<a id="org1004c8f"></a>

# meeting notes May 22, 2022


<a id="org4cb15a4"></a>

## the raku study group


<a id="orge3a9581"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="org309e0f8"></a>

## topics


<a id="org6bffc49"></a>

### move/copy etc, larry wall, apocaylpse, etc.  more to come.


<a id="orgb585ce5"></a>

### defined sigma operator experiments

1.  controlling precedence of custom operators

2.  broken link in here: <https://docs.raku.org/language/operators>

    1.  <https://docs.raku.org/language/language/functions#Precedence>
    
    2.  "precedence of custom operators"
    
    3.  TODO BUG in docs
    
    4.  but this works, coming at it in other ways, WTF?
    
        1.  <https://docs.raku.org/language/functions#Precedence>
        
        2.  there's no link to this from here:
        
            1.  <https://docs.raku.org/language/optut>

3.  bruce gray says you can define operator precedence relative to other existing operators

    1.  <https://docs.raku.org/language/functions#Precedence>
    
        ```
        sub infix:<!!>($a, $b) is tighter(&infix:<+>) {
            2 * ($a + $b)
        }
        ```


<a id="org9628354"></a>

### TODO add new stuff and raid last meeting for ideas


<a id="org217a9ed"></a>

### define a sigma operator for summation

1.  <https://docs.raku.org/language/optut>


<a id="org1aa983f"></a>

## announcements


<a id="orgc51a6eb"></a>

### June 5th: next raku study group meeting


<a id="org288e12e"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
