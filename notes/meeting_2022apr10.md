- [meeting notes April 10, 2022](#org2f25164)
  - [the raku study group](#org2140786)
    - [usual links](#org3a7e533)
  - [an answer to what's Raku for:](#orgad27624)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#orgeee98a3)
  - [postponed from previous meetings](#org45eec6d)
    - [bill's unix.stackexchange post](#orgf65ad9f)
    - [rob asks about "DEPRECATED"](#org987d3ad)
  - [recent topics](#org67306f1)
    - [worthington prime number calculations](#orgddf2bdd)
    - [weekly challenges](#orgbb1f3fa)
    - [gui toolkits](#orga018eff)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgcf2b867)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org04cbdd9)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org63fcdfe)
    - [subclassing Str class](#orgf17715f)
  - [untopic](#org3c9c875)
    - [alan kay at 2020 "goto;"](#org73fd75c)
    - [international call signs](#org55c2d37)
  - [announcements](#orgda96a65)
    - [April 24th: next raku study group meeting](#org5871ed1)
    - [June 21-25: tprc: perl/raku conference](#org43bfd21)


<a id="org2f25164"></a>

# meeting notes April 10, 2022


<a id="org2140786"></a>

## the raku study group


<a id="org3a7e533"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="orgad27624"></a>

## an answer to what's Raku for:


<a id="orgeee98a3"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org45eec6d"></a>

## postponed from previous meetings


<a id="orgf65ad9f"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="org987d3ad"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="org67306f1"></a>

## recent topics


<a id="orgddf2bdd"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="orgbb1f3fa"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>


<a id="orga018eff"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgcf2b867"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org04cbdd9"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org63fcdfe"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgf17715f"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org3c9c875"></a>

## untopic


<a id="org73fd75c"></a>

### alan kay at 2020 "goto;"


<a id="org55c2d37"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="orgda96a65"></a>

## announcements


<a id="org5871ed1"></a>

### April 24th: next raku study group meeting


<a id="org43bfd21"></a>

### June 21-25: tprc: perl/raku conference
