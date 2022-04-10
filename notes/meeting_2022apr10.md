- [meeting notes April 10, 2022](#org6c15b6a)
  - [the raku study group](#orgd78d29a)
    - [usual links](#org4b0e608)
  - [an answer to what's Raku for:](#orge08513c)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#orgf3eaf9a)
  - [postponed from previous meetings](#orgb4c64e1)
    - [bill's unix.stackexchange post](#orgf4305e9)
    - [rob asks about "DEPRECATED"](#org884c0f1)
  - [recent topics](#org95d2ff2)
    - [worthington prime number calculations](#org1ab7296)
    - [weekly challenges](#orgdbc0eca)
    - [gui toolkits](#org5b8cca1)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org2f93a07)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org62acff5)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org9c1df30)
    - [subclassing Str class](#orga1db778)
  - [untopic](#org598280e)
    - [alan kay at 2020 "goto;"](#orgf45cdc1)
    - [international call signs](#org824ec07)
  - [announcements](#org657a256)
    - [April 24th: next raku study group meeting](#org5de7427)
    - [June 21-25: tprc: perl/raku conference](#org638aeac)


<a id="org6c15b6a"></a>

# meeting notes April 10, 2022


<a id="orgd78d29a"></a>

## the raku study group


<a id="org4b0e608"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="orge08513c"></a>

## an answer to what's Raku for:


<a id="orgf3eaf9a"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgb4c64e1"></a>

## postponed from previous meetings


<a id="orgf4305e9"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="org884c0f1"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="org95d2ff2"></a>

## recent topics


<a id="org1ab7296"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="orgdbc0eca"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>


<a id="org5b8cca1"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk

4.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>


<a id="org2f93a07"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org62acff5"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org9c1df30"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orga1db778"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org598280e"></a>

## untopic


<a id="orgf45cdc1"></a>

### alan kay at 2020 "goto;"


<a id="org824ec07"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org657a256"></a>

## announcements


<a id="org5de7427"></a>

### April 24th: next raku study group meeting


<a id="org638aeac"></a>

### June 21-25: tprc: perl/raku conference
