- [meeting notes May 22, 2022](#org5477623)
  - [the raku study group](#orgcac5e21)
    - [usual links](#org5dd1f5f)
  - [topics](#orgd129d95)
    - [move/copy etc, larry wall, apocaylpse, etc.  more to come.](#org360b615)
    - [defined sigma operator experiments](#org27be528)
    - [inheriting from basic types, like an Int (Rob Ransbottom)](#org9b42b7b)
    - [raid previous meetings for ideas, do follow-up](#orga5aafbb)
  - [announcements](#org1263b31)
    - [June 19th: next raku study group meeting](#org3c34818)
    - [June 21-25: tprc: perl/raku conference](#org7eebb50)


<a id="org5477623"></a>

# meeting notes May 22, 2022


<a id="orgcac5e21"></a>

## the raku study group


<a id="org5dd1f5f"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="orgd129d95"></a>

## topics


<a id="org360b615"></a>

### move/copy etc, larry wall, apocaylpse, etc.  more to come.


<a id="org27be528"></a>

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


<a id="org9b42b7b"></a>

### inheriting from basic types, like an Int (Rob Ransbottom)


<a id="orga5aafbb"></a>

### TODO raid previous meetings for ideas, do follow-up


<a id="org1263b31"></a>

## announcements


<a id="org3c34818"></a>

### June 19th: next raku study group meeting


<a id="org7eebb50"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
