- [meeting notes May 22, 2022](#org3f088fa)
  - [the raku study group](#orgeab3cf8)
    - [usual links](#orgf6b6d5e)
  - [topics](#orgd86ae51)
    - [move/copy etc, larry wall, apocaylpse, etc.  more to come.](#orgb95c452)
    - [defined sigma operator experiments](#org8f80776)
    - [add new stuff and raid last meeting for ideas](#org03fc8bf)
  - [announcements](#org393712a)
    - [June 5th: next raku study group meeting](#org9df7b5d)
    - [June 21-25: tprc: perl/raku conference](#orgb7c44ae)


<a id="org3f088fa"></a>

# meeting notes May 22, 2022


<a id="orgeab3cf8"></a>

## the raku study group


<a id="orgf6b6d5e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="orgd86ae51"></a>

## topics


<a id="orgb95c452"></a>

### move/copy etc, larry wall, apocaylpse, etc.  more to come.


<a id="org8f80776"></a>

### defined sigma operator experiments

1.  got interested in this for silly reasons

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


<a id="org03fc8bf"></a>

### TODO add new stuff and raid last meeting for ideas


<a id="org393712a"></a>

## announcements


<a id="org9df7b5d"></a>

### June 5th: next raku study group meeting


<a id="orgb7c44ae"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
