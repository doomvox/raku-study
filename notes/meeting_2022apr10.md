- [meeting notes April 10, 2022](#org6a2e491)
  - [the raku study group](#org26a6a66)
    - [usual links](#orgf05ba29)
  - [an answer to what's Raku for:](#orgedef06a)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org08ee89a)
  - [postponed from previous meetings](#orge80c93a)
    - [bill's unix.stackexchange post](#org350740a)
    - [rob asks about "DEPRECATED"](#org5df1c4c)
  - [recent topics](#org774a6b6)
    - [worthington prime number calculations](#org8e70ecc)
    - [weekly challenges](#orge864c13)
    - [gui toolkits](#org5000443)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orge767f96)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org9d541ca)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org27a250a)
    - [subclassing Str class](#org1c30126)
  - [untopic](#orgde68a7f)
    - [alan kay at 2020 "goto;"](#org86ed231)
    - [international call signs](#org95115f8)
  - [announcements](#orgc9a331e)
    - [April 24th: next raku study group meeting](#orgb48823b)
    - [June 21-25: tprc: perl/raku conference](#orgd7c4821)


<a id="org6a2e491"></a>

# meeting notes April 10, 2022


<a id="org26a6a66"></a>

## the raku study group


<a id="orgf05ba29"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="orgedef06a"></a>

## an answer to what's Raku for:


<a id="org08ee89a"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge80c93a"></a>

## postponed from previous meetings


<a id="org350740a"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists


<a id="org5df1c4c"></a>

### rob asks about "DEPRECATED"


<a id="org774a6b6"></a>

## recent topics


<a id="org8e70ecc"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="orge864c13"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>


<a id="org5000443"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orge767f96"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org9d541ca"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org27a250a"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org1c30126"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orgde68a7f"></a>

## untopic


<a id="org86ed231"></a>

### alan kay at 2020 "goto;"


<a id="org95115f8"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="orgc9a331e"></a>

## announcements


<a id="orgb48823b"></a>

### April 24th: next raku study group meeting


<a id="orgd7c4821"></a>

### June 21-25: tprc: perl/raku conference
