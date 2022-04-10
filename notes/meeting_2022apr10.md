- [meeting notes April 10, 2022](#org9269b80)
  - [the raku study group](#orgd051e1b)
    - [usual links](#orga37d2ee)
  - [an answer to what's Raku for:](#org426ae71)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org0054c1e)
  - [postponed from previous meetings](#org6abf7a7)
    - [bill's unix.stackexchange post](#org2118058)
    - [rob asks about "DEPRECATED"](#org207ab45)
  - [recent topics](#org0279e02)
    - [worthington prime number calculations](#org35a6642)
    - [weekly challenges](#org76605e1)
    - [gui toolkits](#orgf124ab9)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org9ac88e5)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org5368702)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org4dcc5bb)
    - [subclassing Str class](#org8d3a599)
  - [untopic](#org5f92657)
    - [alan kay at 2020 "goto;"](#org1aee735)
    - [international call signs](#org882dbbf)
  - [announcements](#org5c36c17)
    - [April 24th: next raku study group meeting](#org6222bee)
    - [June 21-25: tprc: perl/raku conference](#orgc262505)


<a id="org9269b80"></a>

# meeting notes April 10, 2022


<a id="orgd051e1b"></a>

## the raku study group


<a id="orga37d2ee"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org426ae71"></a>

## an answer to what's Raku for:


<a id="org0054c1e"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org6abf7a7"></a>

## postponed from previous meetings


<a id="org2118058"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="org207ab45"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="org0279e02"></a>

## recent topics


<a id="org35a6642"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org76605e1"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>


<a id="orgf124ab9"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk

4.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>


<a id="org9ac88e5"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org5368702"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org4dcc5bb"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org8d3a599"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org5f92657"></a>

## untopic


<a id="org1aee735"></a>

### alan kay at 2020 "goto;"


<a id="org882dbbf"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org5c36c17"></a>

## announcements


<a id="org6222bee"></a>

### April 24th: next raku study group meeting


<a id="orgc262505"></a>

### June 21-25: tprc: perl/raku conference
