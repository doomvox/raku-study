- [meeting notes May 22, 2022](#org3e382ff)
  - [the raku study group](#org03c50d7)
    - [usual links](#orgcc0f46c)
  - [topics](#orgb963fa4)
    - [move/copy etc, larry wall, apocaylpse, etc.  more to come.](#orgcd1c124)
    - [defined sigma operator experiments](#orgff6b872)
    - [add new stuff and raid last meeting for ideas](#org593641f)
    - [define a sigma operator for summation](#org7a12686)
  - [announcements](#org90f7b09)
    - [June 5th: next raku study group meeting](#org516430e)
    - [June 21-25: tprc: perl/raku conference](#org003efbb)


<a id="org3e382ff"></a>

# meeting notes May 22, 2022


<a id="org03c50d7"></a>

## the raku study group


<a id="orgcc0f46c"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="orgb963fa4"></a>

## topics


<a id="orgcd1c124"></a>

### move/copy etc, larry wall, apocaylpse, etc.  more to come.


<a id="orgff6b872"></a>

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
    
        sub infix:<!!>($a, $b) is tighter(&infix:<+>) { 2 \* ($a + $b) }


<a id="org593641f"></a>

### TODO add new stuff and raid last meeting for ideas


<a id="org7a12686"></a>

### define a sigma operator for summation

1.  <https://docs.raku.org/language/optut>


<a id="org90f7b09"></a>

## announcements


<a id="org516430e"></a>

### June 5th: next raku study group meeting


<a id="org003efbb"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
