- [meeting notes May 22, 2022](#org463f1ac)
  - [the raku study group](#org81c57c5)
    - [usual links](#org798d534)
  - [topics](#org181ba93)
    - [move/copy etc, larry wall, apocaylpse, etc.  more to come.](#org1910378)
    - [defined sigma operator experiments](#orge99bbd9)
    - [add new stuff and raid last meeting for ideas](#org482cf06)
  - [announcements](#org464d898)
    - [June 5th: next raku study group meeting](#org009859f)
    - [June 21-25: tprc: perl/raku conference](#org1c42c94)


<a id="org463f1ac"></a>

# meeting notes May 22, 2022


<a id="org81c57c5"></a>

## the raku study group


<a id="org798d534"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="org181ba93"></a>

## topics


<a id="org1910378"></a>

### move/copy etc, larry wall, apocaylpse, etc.  more to come.


<a id="orge99bbd9"></a>

### defined sigma operator experiments

1.  got interested in this for silly reasons

    1.  

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


<a id="org482cf06"></a>

### TODO add new stuff and raid last meeting for ideas


<a id="org464d898"></a>

## announcements


<a id="org009859f"></a>

### June 5th: next raku study group meeting


<a id="org1c42c94"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
