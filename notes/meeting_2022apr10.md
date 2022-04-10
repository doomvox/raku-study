- [meeting notes April 10, 2022](#org04dbbc5)
  - [the raku study group](#orgca4b946)
    - [usual links](#org2ec19e4)
  - [an answer to what's Raku for:](#org4dcff26)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#orgbdded90)
  - [postponed from previous meetings](#orgdd844eb)
    - [bill's unix.stackexchange post](#org5f05d74)
    - [rob asks about "DEPRECATED"](#org13b7bc3)
  - [recent topics](#org51a2794)
    - [worthington prime number calculations](#org9282bd7)
    - [weekly challenges](#orgb099395)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org962708e)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org9874220)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org6e3967d)
    - [subclassing Str class](#org29b554e)
  - [untopic](#orgb139414)
    - [alan kay at 2020 "goto;"](#org45e0470)
  - [announcements](#org2029216)
    - [April 24th: next raku study group meeting](#org0762c1c)
    - [June 21-25: tprc: perl/raku conference](#org19810a2)


<a id="org04dbbc5"></a>

# meeting notes April 10, 2022


<a id="orgca4b946"></a>

## the raku study group


<a id="org2ec19e4"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org4dcff26"></a>

## an answer to what's Raku for:


<a id="orgbdded90"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgdd844eb"></a>

## postponed from previous meetings


<a id="org5f05d74"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>


<a id="org13b7bc3"></a>

### rob asks about "DEPRECATED"


<a id="org51a2794"></a>

## recent topics


<a id="org9282bd7"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="orgb099395"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>


<a id="org962708e"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org9874220"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org6e3967d"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org29b554e"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orgb139414"></a>

## untopic


<a id="org45e0470"></a>

### alan kay at 2020 "goto;"


<a id="org2029216"></a>

## announcements


<a id="org0762c1c"></a>

### April 24th: next raku study group meeting


<a id="org19810a2"></a>

### June 21-25: tprc: perl/raku conference
