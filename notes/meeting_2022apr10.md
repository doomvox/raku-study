- [meeting notes April 10, 2022](#org0bed93f)
  - [the raku study group](#org2f35c9b)
    - [usual links](#org1b22d2b)
  - [an answer to what's Raku for:](#org35397e4)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org9e466b9)
  - [postponed from previous meetings](#org7f60d65)
    - [bill's unix.stackexchange post](#orga8416f6)
    - [rob asks about "DEPRECATED"](#orgffc248f)
  - [recent topics](#org13067d9)
    - [worthington prime number calculations](#orgc8afa06)
    - [weekly challenges](#org328389d)
    - [gui toolkits](#org5ecb488)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgcba7339)
    - [simple but puzzling behavior, converting scientific notation to Rat](#orgc444a72)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgdf4156b)
    - [subclassing Str class](#orgabd65ec)
  - [untopic](#org4f0fc7b)
    - [alan kay at 2020 "goto;"](#orgdc77cac)
    - [international call signs](#org1f10054)
  - [announcements](#org47d0211)
    - [April 24th: next raku study group meeting](#org6266377)
    - [June 21-25: tprc: perl/raku conference](#org6e1b7e1)


<a id="org0bed93f"></a>

# meeting notes April 10, 2022


<a id="org2f35c9b"></a>

## the raku study group


<a id="org1b22d2b"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org35397e4"></a>

## an answer to what's Raku for:


<a id="org9e466b9"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org7f60d65"></a>

## postponed from previous meetings


<a id="orga8416f6"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="orgffc248f"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="org13067d9"></a>

## recent topics


<a id="orgc8afa06"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org328389d"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>


<a id="org5ecb488"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgcba7339"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="orgc444a72"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgdf4156b"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgabd65ec"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org4f0fc7b"></a>

## untopic


<a id="orgdc77cac"></a>

### alan kay at 2020 "goto;"


<a id="org1f10054"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org47d0211"></a>

## announcements


<a id="org6266377"></a>

### April 24th: next raku study group meeting


<a id="org6e1b7e1"></a>

### June 21-25: tprc: perl/raku conference
