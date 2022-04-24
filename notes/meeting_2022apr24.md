- [meeting notes April 24, 2022](#orgba47071)
  - [the raku study group](#orgcb992b5)
    - [usual links](#org608c5ee)
  - [postponed from previous meetings](#org9ba5ae7)
    - [an answer to what's Raku for:](#org217920c)
  - [recent topics](#org5cffb9e)
    - [worthington prime number calculations](#orgf49e9a7)
    - [weekly challenges](#org21cf41c)
    - [gui toolkits](#org439ae91)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgd562bea)
    - [simple but puzzling behavior: converting scientific notation to Rat](#org9b184f7)
    - [undocumented customization feature: get Rats to upgrade to FatRats](#orgf3f484d)
    - [subclassing Str class (maybe later)](#orga71d63a)
  - [untopic](#org5f6de11)
    - [Alan Kay at 2020 "goto;"](#org9449c1c)
    - [international call signs](#orgbcf51c2)
  - [announcements](#org3758ea1)
    - [April 24th: next raku study group meeting](#orgfe476c7)
    - [June 21-25: tprc: perl/raku conference](#org7667459)


<a id="orgba47071"></a>

# meeting notes April 24, 2022


<a id="orgcb992b5"></a>

## the raku study group


<a id="org608c5ee"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org9ba5ae7"></a>

## postponed from previous meetings


<a id="org217920c"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org5cffb9e"></a>

## recent topics


<a id="orgf49e9a7"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org21cf41c"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>

8.  <https://en.wikipedia.org/wiki/M%C3%B6bius_function>


<a id="org439ae91"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgd562bea"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org9b184f7"></a>

### simple but puzzling behavior: converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgf3f484d"></a>

### undocumented customization feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orga71d63a"></a>

### TODO subclassing Str class (maybe later)

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org5f6de11"></a>

## untopic


<a id="org9449c1c"></a>

### Alan Kay at 2020 "goto;"

1.  <https://www.youtube.com/watch?v=D43PlUr1x_E?vq=hd1080>


<a id="orgbcf51c2"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org3758ea1"></a>

## announcements


<a id="orgfe476c7"></a>

### April 24th: next raku study group meeting


<a id="org7667459"></a>

### June 21-25: tprc: perl/raku conference
