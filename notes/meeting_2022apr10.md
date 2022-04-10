- [meeting notes April 10, 2022](#orge8e27a0)
  - [the raku study group](#org2f41f28)
    - [usual links](#org9291dd5)
  - [an answer to what's Raku for:](#org436bc91)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org639772f)
  - [postponed from previous meetings](#org7146f08)
    - [bill's unix.stackexchange post](#org5a7a4f1)
    - [rob asks about "DEPRECATED"](#org8f8c9c3)
  - [recent topics](#org90ff651)
    - [worthington prime number calculations](#orgc31e6f0)
    - [weekly challenges](#org4d66cc9)
    - [gui toolkits](#org9139b51)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org2a0f945)
    - [simple but puzzling behavior, converting scientific notation to Rat](#orgb311e09)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org9d8c261)
    - [subclassing Str class (maybe later)](#orgd25b06c)
  - [untopic](#orga586e0d)
    - [alan kay at 2020 "goto;"](#orgb7f70a4)
    - [international call signs](#orgffb622b)
  - [announcements](#orga1862ae)
    - [April 24th: next raku study group meeting](#orge4ec2db)
    - [June 21-25: tprc: perl/raku conference](#orgb9e5b95)


<a id="orge8e27a0"></a>

# meeting notes April 10, 2022


<a id="org2f41f28"></a>

## the raku study group


<a id="org9291dd5"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org436bc91"></a>

## an answer to what's Raku for:


<a id="org639772f"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org7146f08"></a>

## postponed from previous meetings


<a id="org5a7a4f1"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="org8f8c9c3"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="org90ff651"></a>

## recent topics


<a id="orgc31e6f0"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org4d66cc9"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>

8.  <https://en.wikipedia.org/wiki/M%C3%B6bius_function>


<a id="org9139b51"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org2a0f945"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="orgb311e09"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org9d8c261"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgd25b06c"></a>

### TODO subclassing Str class (maybe later)

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orga586e0d"></a>

## untopic


<a id="orgb7f70a4"></a>

### alan kay at 2020 "goto;"


<a id="orgffb622b"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="orga1862ae"></a>

## announcements


<a id="orge4ec2db"></a>

### April 24th: next raku study group meeting


<a id="orgb9e5b95"></a>

### June 21-25: tprc: perl/raku conference
