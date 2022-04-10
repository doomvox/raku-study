- [meeting notes April 10, 2022](#orga636203)
  - [the raku study group](#org2e73983)
    - [usual links](#orgf1e3441)
  - [an answer to what's Raku for:](#org3887c9d)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org1010547)
  - [postponed from previous meetings](#orgf819f8e)
    - [rob asks about "DEPRECATED"](#orge035cd8)
    - [bill's unix.stackexchange post](#org1c46222)
  - [recent topics](#org4dbc1ef)
    - [worthington prime number calculations](#orgeb7fdff)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org187fd79)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org120cd94)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org33ba204)
    - [subclassing Str class](#orgc3ead22)
  - [announcements](#orgbe42628)
    - [April 24th: next raku study group meeting](#org13b0114)
    - [June 21-25: tprc: perl/raku conference](#org43db293)


<a id="orga636203"></a>

# meeting notes April 10, 2022


<a id="org2e73983"></a>

## the raku study group


<a id="orgf1e3441"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org3887c9d"></a>

## an answer to what's Raku for:


<a id="org1010547"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgf819f8e"></a>

## postponed from previous meetings


<a id="orge035cd8"></a>

### rob asks about "DEPRECATED"


<a id="org1c46222"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>


<a id="org4dbc1ef"></a>

## recent topics


<a id="orgeb7fdff"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org187fd79"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org120cd94"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org33ba204"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgc3ead22"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orgbe42628"></a>

## announcements


<a id="org13b0114"></a>

### April 24th: next raku study group meeting


<a id="org43db293"></a>

### June 21-25: tprc: perl/raku conference
