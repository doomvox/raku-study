- [meeting notes April 10, 2022](#org4abe61d)
  - [the raku study group](#orgca82ea0)
    - [usual links](#org0708b2c)
  - [an answer to what's Raku for:](#org8e45862)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#orgd91d85b)
  - [postponed from previous meetings](#orgdce1ebb)
    - [bill's unix.stackexchange post](#org9d4ee3e)
    - [rob asks about "DEPRECATED"](#org7ee2193)
  - [recent topics](#orgf486f55)
    - [worthington prime number calculations](#org342c2f0)
    - [weekly challenges](#org48437f4)
    - [gui toolkits](#org4f183aa)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgd2bbbe4)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org68e5989)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgb4a4992)
    - [subclassing Str class](#orgcbc7c7b)
  - [untopic](#org7a5015e)
    - [alan kay at 2020 "goto;"](#org1dcafd5)
    - [international call signs](#org6ae6a96)
  - [announcements](#org0ed675e)
    - [April 24th: next raku study group meeting](#org32588f5)
    - [June 21-25: tprc: perl/raku conference](#org6e08159)


<a id="org4abe61d"></a>

# meeting notes April 10, 2022


<a id="orgca82ea0"></a>

## the raku study group


<a id="org0708b2c"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org8e45862"></a>

## an answer to what's Raku for:


<a id="orgd91d85b"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgdce1ebb"></a>

## postponed from previous meetings


<a id="org9d4ee3e"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>


<a id="org7ee2193"></a>

### rob asks about "DEPRECATED"


<a id="orgf486f55"></a>

## recent topics


<a id="org342c2f0"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org48437f4"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>


<a id="org4f183aa"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgd2bbbe4"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org68e5989"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgb4a4992"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgcbc7c7b"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org7a5015e"></a>

## untopic


<a id="org1dcafd5"></a>

### alan kay at 2020 "goto;"


<a id="org6ae6a96"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org0ed675e"></a>

## announcements


<a id="org32588f5"></a>

### April 24th: next raku study group meeting


<a id="org6e08159"></a>

### June 21-25: tprc: perl/raku conference
