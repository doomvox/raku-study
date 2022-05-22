- [meeting notes May 22, 2022](#org0cf2c6a)
  - [the raku study group](#org974ff6b)
    - [usual links](#org89849f3)
  - [topics](#orgcc46bad)
    - [move/copy etc, larry wall, apocaylpse, etc.  more to come.](#org294f9b9)
    - [defined sigma operator experiments](#org40ffd42)
    - [add new stuff and raid last meeting for ideas](#org847c277)
    - [define a sigma operator for summation](#org7fc0d17)
  - [announcements](#org6179c88)
    - [June 5th: next raku study group meeting](#org6981295)
    - [June 21-25: tprc: perl/raku conference](#org15e7316)


<a id="org0cf2c6a"></a>

# meeting notes May 22, 2022


<a id="org974ff6b"></a>

## the raku study group


<a id="org89849f3"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="orgcc46bad"></a>

## topics


<a id="org294f9b9"></a>

### move/copy etc, larry wall, apocaylpse, etc.  more to come.


<a id="org40ffd42"></a>

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
    
        ```perl6
        sub infix:<!!>($a, $b) is tighter(&infix:<+>) {
            2 * ($a + $b)
        }
        ```


<a id="org847c277"></a>

### TODO add new stuff and raid last meeting for ideas


<a id="org7fc0d17"></a>

### define a sigma operator for summation

1.  <https://docs.raku.org/language/optut>


<a id="org6179c88"></a>

## announcements


<a id="org6981295"></a>

### June 5th: next raku study group meeting


<a id="org15e7316"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
