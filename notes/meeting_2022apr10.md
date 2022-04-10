- [meeting notes April 10, 2022](#org62eb782)
  - [the raku study group](#org79e0d2c)
    - [usual links](#orgf774b70)
  - [an answer to what's Raku for:](#orgde36b4e)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org76cc86d)
  - [postponed from previous meetings](#org1f0397e)
    - [bill's unix.stackexchange post](#orge30325d)
    - [rob asks about "DEPRECATED"](#org02678d1)
  - [recent topics](#org71989cd)
    - [worthington prime number calculations](#org2d65d84)
    - [weekly challenges](#org3918bc3)
    - [gui toolkits](#org92ac874)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgc83763e)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org4bba655)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgeb8cf35)
    - [subclassing Str class](#org4bca9e5)
  - [untopic](#orga79abc5)
    - [alan kay at 2020 "goto;"](#org078c99f)
  - [announcements](#org7265a20)
    - [April 24th: next raku study group meeting](#org942e0bf)
    - [June 21-25: tprc: perl/raku conference](#org081b763)


<a id="org62eb782"></a>

# meeting notes April 10, 2022


<a id="org79e0d2c"></a>

## the raku study group


<a id="orgf774b70"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="orgde36b4e"></a>

## an answer to what's Raku for:


<a id="org76cc86d"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org1f0397e"></a>

## postponed from previous meetings


<a id="orge30325d"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>


<a id="org02678d1"></a>

### rob asks about "DEPRECATED"


<a id="org71989cd"></a>

## recent topics


<a id="org2d65d84"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org3918bc3"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>


<a id="org92ac874"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgc83763e"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org4bba655"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgeb8cf35"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org4bca9e5"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orga79abc5"></a>

## untopic


<a id="org078c99f"></a>

### alan kay at 2020 "goto;"


<a id="org7265a20"></a>

## announcements


<a id="org942e0bf"></a>

### April 24th: next raku study group meeting


<a id="org081b763"></a>

### June 21-25: tprc: perl/raku conference
