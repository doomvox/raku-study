- [meeting notes April 10, 2022](#org153c1be)
  - [the raku study group](#org6f20f51)
    - [usual links](#org1cef74c)
  - [an answer to what's Raku for:](#org2155332)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#orgba29834)
  - [postponed from previous meetings](#org05585a4)
    - [bill's unix.stackexchange post](#orgc087409)
    - [rob asks about "DEPRECATED"](#orgb3e7ba7)
  - [recent topics](#org91a38ad)
    - [worthington prime number calculations](#org6fcada0)
    - [weekly challenges](#org854072f)
    - [gui toolkits](#orgcd1b1fe)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orga31d83d)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org636b87a)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgb79a780)
    - [subclassing Str class (maybe later)](#orgcaecc67)
  - [untopic](#orgfa95b4e)
    - [Alan Kay at 2020 "goto;"](#orgc322ad6)
    - [international call signs](#orge6165ec)
  - [announcements](#org2638de3)
    - [April 24th: next raku study group meeting](#org82831e6)
    - [June 21-25: tprc: perl/raku conference](#org85d233d)


<a id="org153c1be"></a>

# meeting notes April 10, 2022


<a id="org6f20f51"></a>

## the raku study group


<a id="org1cef74c"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org2155332"></a>

## an answer to what's Raku for:


<a id="orgba29834"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org05585a4"></a>

## postponed from previous meetings


<a id="orgc087409"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="orgb3e7ba7"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="org91a38ad"></a>

## recent topics


<a id="org6fcada0"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org854072f"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>

8.  <https://en.wikipedia.org/wiki/M%C3%B6bius_function>


<a id="orgcd1b1fe"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orga31d83d"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org636b87a"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgb79a780"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgcaecc67"></a>

### TODO subclassing Str class (maybe later)

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orgfa95b4e"></a>

## untopic


<a id="orgc322ad6"></a>

### Alan Kay at 2020 "goto;"

1.  <https://www.youtube.com/watch?v=D43PlUr1x_E?vq=hd1080>


<a id="orge6165ec"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org2638de3"></a>

## announcements


<a id="org82831e6"></a>

### April 24th: next raku study group meeting


<a id="org85d233d"></a>

### June 21-25: tprc: perl/raku conference
