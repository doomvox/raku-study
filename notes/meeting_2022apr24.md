- [meeting notes April 24, 2022](#org6da83c8)
  - [the raku study group](#orgfb71583)
    - [usual links](#orgb4df2ac)
  - [postponed from previous meetings](#orgbbae130)
    - [an answer to what's Raku for:](#org095e056)
  - [recent topics](#org3cb5d5f)
    - [worthington prime number calculations](#orgc1c868a)
    - [weekly challenges](#org291fdf6)
    - [gui toolkits](#org9d73dd6)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgd434b06)
    - [simple but puzzling behavior: converting scientific notation to Rat](#orgafbfcbf)
    - [undocumented customization feature: get Rats to upgrade to FatRats](#orgc0c0bc2)
    - [subclassing Str class (maybe later)](#org2fb4b57)
  - [untopic](#org6b3713f)
    - [Alan Kay at 2020 "goto;"](#org0e88672)
    - [international call signs](#org4cd05b4)
  - [announcements](#org2bb72fb)
    - [April 24th: next raku study group meeting](#org8408ad5)
    - [June 21-25: tprc: perl/raku conference](#orgbb77e2b)


<a id="org6da83c8"></a>

# meeting notes April 24, 2022


<a id="orgfb71583"></a>

## the raku study group


<a id="orgb4df2ac"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgbbae130"></a>

## postponed from previous meetings


<a id="org095e056"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org3cb5d5f"></a>

## recent topics


<a id="orgc1c868a"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org291fdf6"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>

8.  <https://en.wikipedia.org/wiki/M%C3%B6bius_function>


<a id="org9d73dd6"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgd434b06"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="orgafbfcbf"></a>

### simple but puzzling behavior: converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgc0c0bc2"></a>

### undocumented customization feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org2fb4b57"></a>

### TODO subclassing Str class (maybe later)

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org6b3713f"></a>

## untopic


<a id="org0e88672"></a>

### Alan Kay at 2020 "goto;"

1.  <https://www.youtube.com/watch?v=D43PlUr1x_E?vq=hd1080>


<a id="org4cd05b4"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org2bb72fb"></a>

## announcements


<a id="org8408ad5"></a>

### April 24th: next raku study group meeting


<a id="orgbb77e2b"></a>

### June 21-25: tprc: perl/raku conference
