- [meeting notes April 10, 2022](#orgc2ee7ea)
  - [the raku study group](#orgbf44a8b)
    - [usual links](#orgd378d2c)
  - [an answer to what's Raku for:](#org595cc2b)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org927d655)
  - [postponed from previous meetings](#org927e63e)
    - [bill's unix.stackexchange post](#org64e01c8)
    - [rob asks about "DEPRECATED"](#orgb4ff875)
  - [recent topics](#orgd774c27)
    - [worthington prime number calculations](#org8a567a0)
    - [weekly challenges](#org2928c2e)
    - [gui toolkits](#orgeba9797)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgce56806)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org1c404a1)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgf99084d)
    - [subclassing Str class](#orge8092e5)
  - [untopic](#org01ba3c2)
    - [alan kay at 2020 "goto;"](#org34064f4)
  - [announcements](#org9fed2f7)
    - [April 24th: next raku study group meeting](#org099b852)
    - [June 21-25: tprc: perl/raku conference](#org63aba27)


<a id="orgc2ee7ea"></a>

# meeting notes April 10, 2022


<a id="orgbf44a8b"></a>

## the raku study group


<a id="orgd378d2c"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org595cc2b"></a>

## an answer to what's Raku for:


<a id="org927d655"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org927e63e"></a>

## postponed from previous meetings


<a id="org64e01c8"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>


<a id="orgb4ff875"></a>

### rob asks about "DEPRECATED"


<a id="orgd774c27"></a>

## recent topics


<a id="org8a567a0"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org2928c2e"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>


<a id="orgeba9797"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgce56806"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org1c404a1"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgf99084d"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orge8092e5"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org01ba3c2"></a>

## untopic


<a id="org34064f4"></a>

### alan kay at 2020 "goto;"


<a id="org9fed2f7"></a>

## announcements


<a id="org099b852"></a>

### April 24th: next raku study group meeting


<a id="org63aba27"></a>

### June 21-25: tprc: perl/raku conference
