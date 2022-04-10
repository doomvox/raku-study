- [meeting notes April 10, 2022](#orgb8941db)
  - [the raku study group](#org046e79a)
    - [usual links](#orgbe28d17)
  - [an answer to what's Raku for:](#orgdfd7755)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org9d4b17c)
  - [postponed from previous meetings](#orge360e5b)
    - [rob asks about "DEPRECATED"](#orgcade33d)
    - [bill's unix.stackexchange post](#orga4f3b07)
  - [recent topics](#orgf7b0712)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org71e4d07)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org5bf918b)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org7e48e2f)
    - [subclassing Str class](#orged3b22f)
  - [announcements](#orga6be8e8)
    - [April 24th: next raku study group meeting](#org54a25f9)
    - [June 21-25: tprc: perl/raku conference](#orgde3b6be)


<a id="orgb8941db"></a>

# meeting notes April 10, 2022


<a id="org046e79a"></a>

## the raku study group


<a id="orgbe28d17"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="orgdfd7755"></a>

## an answer to what's Raku for:


<a id="org9d4b17c"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge360e5b"></a>

## postponed from previous meetings


<a id="orgcade33d"></a>

### rob asks about "DEPRECATED"


<a id="orga4f3b07"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>


<a id="orgf7b0712"></a>

## recent topics


<a id="org71e4d07"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org5bf918b"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org7e48e2f"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orged3b22f"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orga6be8e8"></a>

## announcements


<a id="org54a25f9"></a>

### April 24th: next raku study group meeting


<a id="orgde3b6be"></a>

### June 21-25: tprc: perl/raku conference
