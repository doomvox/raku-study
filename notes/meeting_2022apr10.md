- [meeting notes April 10, 2022](#org9b4358a)
  - [the raku study group](#org123e250)
    - [usual links](#orge171981)
  - [an answer to what's Raku for:](#org24ec21d)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org6d3dd1b)
  - [postponed from previous meetings](#org042d3f2)
    - [bill's unix.stackexchange post](#org2b3d3a2)
    - [rob asks about "DEPRECATED"](#org68c9173)
  - [recent topics](#orgdc4db1d)
    - [worthington prime number calculations](#org3b90c40)
    - [weekly challenges](#orgd545bbe)
    - [gui toolkits](#org0eb45f8)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org1760172)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org7e0d89b)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orga2ccc13)
    - [subclassing Str class](#org5d75d9f)
  - [untopic](#org7192449)
    - [alan kay at 2020 "goto;"](#org57ec733)
  - [announcements](#org56c2157)
    - [April 24th: next raku study group meeting](#orgfce6894)
    - [June 21-25: tprc: perl/raku conference](#orgc24191d)


<a id="org9b4358a"></a>

# meeting notes April 10, 2022


<a id="org123e250"></a>

## the raku study group


<a id="orge171981"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org24ec21d"></a>

## an answer to what's Raku for:


<a id="org6d3dd1b"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org042d3f2"></a>

## postponed from previous meetings


<a id="org2b3d3a2"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>


<a id="org68c9173"></a>

### rob asks about "DEPRECATED"


<a id="orgdc4db1d"></a>

## recent topics


<a id="org3b90c40"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="orgd545bbe"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>


<a id="org0eb45f8"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org1760172"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org7e0d89b"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orga2ccc13"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org5d75d9f"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org7192449"></a>

## untopic


<a id="org57ec733"></a>

### alan kay at 2020 "goto;"


<a id="org56c2157"></a>

## announcements


<a id="orgfce6894"></a>

### April 24th: next raku study group meeting


<a id="orgc24191d"></a>

### June 21-25: tprc: perl/raku conference
