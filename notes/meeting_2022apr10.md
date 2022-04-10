- [meeting notes April 10, 2022](#org577154d)
  - [the raku study group](#orge76a853)
    - [usual links](#orgb7a2461)
  - [an answer to what's Raku for:](#org4dbae09)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org1506d5a)
  - [postponed from previous meetings](#org297a6c5)
    - [bill's unix.stackexchange post](#orgad6902e)
    - [rob asks about "DEPRECATED"](#org8b1e070)
  - [recent topics](#org75703d3)
    - [worthington prime number calculations](#org6e20ce4)
    - [weekly challenges](#org99c0421)
    - [gui toolkits](#orgbde001f)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgca51be4)
    - [simple but puzzling behavior, converting scientific notation to Rat](#orgbb0974b)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgeee8cca)
    - [subclassing Str class](#org66406b6)
  - [untopic](#orgf8b7465)
    - [alan kay at 2020 "goto;"](#org417a36e)
    - [international call signs](#orgf805f8c)
  - [announcements](#orgffdab5e)
    - [April 24th: next raku study group meeting](#orgcae4e04)
    - [June 21-25: tprc: perl/raku conference](#orge97b0b8)


<a id="org577154d"></a>

# meeting notes April 10, 2022


<a id="orge76a853"></a>

## the raku study group


<a id="orgb7a2461"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org4dbae09"></a>

## an answer to what's Raku for:


<a id="org1506d5a"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org297a6c5"></a>

## postponed from previous meetings


<a id="orgad6902e"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="org8b1e070"></a>

### rob asks about "DEPRECATED"


<a id="org75703d3"></a>

## recent topics


<a id="org6e20ce4"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org99c0421"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>


<a id="orgbde001f"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgca51be4"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="orgbb0974b"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgeee8cca"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org66406b6"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orgf8b7465"></a>

## untopic


<a id="org417a36e"></a>

### alan kay at 2020 "goto;"


<a id="orgf805f8c"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="orgffdab5e"></a>

## announcements


<a id="orgcae4e04"></a>

### April 24th: next raku study group meeting


<a id="orge97b0b8"></a>

### June 21-25: tprc: perl/raku conference
