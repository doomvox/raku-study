- [meeting notes April 10, 2022](#org4e5c6ce)
  - [the raku study group](#org3317619)
    - [usual links](#org8c3ab42)
  - [an answer to what's Raku for:](#orgdda46e2)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org74c7e1d)
  - [postponed from previous meetings](#org7cd8df4)
    - [bill's unix.stackexchange post](#org07d63f5)
    - [rob asks about "DEPRECATED"](#orgc1be544)
  - [recent topics](#orge786f52)
    - [worthington prime number calculations](#org56407b8)
    - [weekly challenges](#org9c7c6d7)
    - [gui toolkits](#org5079004)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org26e95b4)
    - [simple but puzzling behavior, converting scientific notation to Rat](#orgc63670e)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgba82399)
    - [subclassing Str class (maybe later)](#org2aa893c)
  - [untopic](#orgbe5cfb5)
    - [alan kay at 2020 "goto;"](#org8694762)
    - [international call signs](#org67f913a)
  - [announcements](#orged6ca8f)
    - [April 24th: next raku study group meeting](#orgf236a56)
    - [June 21-25: tprc: perl/raku conference](#orgb13fe89)


<a id="org4e5c6ce"></a>

# meeting notes April 10, 2022


<a id="org3317619"></a>

## the raku study group


<a id="org8c3ab42"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="orgdda46e2"></a>

## an answer to what's Raku for:


<a id="org74c7e1d"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org7cd8df4"></a>

## postponed from previous meetings


<a id="org07d63f5"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="orgc1be544"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="orge786f52"></a>

## recent topics


<a id="org56407b8"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org9c7c6d7"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>

8.  <https://en.wikipedia.org/wiki/M%C3%B6bius_function>


<a id="org5079004"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org26e95b4"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="orgc63670e"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgba82399"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org2aa893c"></a>

### TODO subclassing Str class (maybe later)

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orgbe5cfb5"></a>

## untopic


<a id="org8694762"></a>

### alan kay at 2020 "goto;"

1.  <https://www.youtube.com/watch?v=D43PlUr1x_E?vq=hd1080>


<a id="org67f913a"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="orged6ca8f"></a>

## announcements


<a id="orgf236a56"></a>

### April 24th: next raku study group meeting


<a id="orgb13fe89"></a>

### June 21-25: tprc: perl/raku conference
