- [meeting notes April 10, 2022](#orgf9da70f)
  - [the raku study group](#org92387fb)
    - [usual links](#orgd6fd490)
  - [an answer to what's Raku for:](#orgd4fe4c2)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org71c9289)
  - [postponed from previous meetings](#org56ebda3)
    - [bill's unix.stackexchange post](#org2d78bf9)
    - [rob asks about "DEPRECATED"](#org02b516c)
  - [recent topics](#orgfe90f9b)
    - [worthington prime number calculations](#orgbe2761c)
    - [weekly challenges](#org135a69f)
    - [gui toolkits](#org878df3d)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org3c9be42)
    - [simple but puzzling behavior, converting scientific notation to Rat](#orgd7c973d)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org7feee52)
    - [subclassing Str class](#orgef2208d)
  - [untopic](#orgc5eb6c8)
    - [alan kay at 2020 "goto;"](#orgdff6ea2)
  - [announcements](#org14a6dff)
    - [April 24th: next raku study group meeting](#org4ddbb30)
    - [June 21-25: tprc: perl/raku conference](#orgd8e72b9)


<a id="orgf9da70f"></a>

# meeting notes April 10, 2022


<a id="org92387fb"></a>

## the raku study group


<a id="orgd6fd490"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="orgd4fe4c2"></a>

## an answer to what's Raku for:


<a id="org71c9289"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org56ebda3"></a>

## postponed from previous meetings


<a id="org2d78bf9"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>


<a id="org02b516c"></a>

### rob asks about "DEPRECATED"


<a id="orgfe90f9b"></a>

## recent topics


<a id="orgbe2761c"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org135a69f"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>


<a id="org878df3d"></a>

### gui toolkits

1.  gtk3

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org3c9be42"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="orgd7c973d"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org7feee52"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgef2208d"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orgc5eb6c8"></a>

## untopic


<a id="orgdff6ea2"></a>

### alan kay at 2020 "goto;"


<a id="org14a6dff"></a>

## announcements


<a id="org4ddbb30"></a>

### April 24th: next raku study group meeting


<a id="orgd8e72b9"></a>

### June 21-25: tprc: perl/raku conference
