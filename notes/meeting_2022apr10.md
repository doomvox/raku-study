- [meeting notes April 10, 2022](#org66caaf2)
  - [the raku study group](#org8c0206f)
    - [usual links](#orge63bcc6)
  - [an answer to what's Raku for:](#org883dd9e)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org8c66f24)
  - [postponed from previous meetings](#orge02e983)
    - [bill's unix.stackexchange post](#org49044a3)
    - [rob asks about "DEPRECATED"](#org7dfe4ee)
  - [recent topics](#orga882f7e)
    - [worthington prime number calculations](#org351726e)
    - [weekly challenges](#orgd2cf6bb)
    - [gui toolkits](#org4de61b2)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgbde2ee4)
    - [simple but puzzling behavior: converting scientific notation to Rat](#orgea0de77)
    - [undocumented customization feature: get Rats to upgrade to FatRats](#orga9e4e5b)
    - [subclassing Str class (maybe later)](#org4cce712)
  - [untopic](#orgadc0c93)
    - [Alan Kay at 2020 "goto;"](#org11f42cb)
    - [international call signs](#org173ba5e)
  - [announcements](#org4e13643)
    - [April 24th: next raku study group meeting](#orga5eee2d)
    - [June 21-25: tprc: perl/raku conference](#orgf2695cc)


<a id="org66caaf2"></a>

# meeting notes April 10, 2022


<a id="org8c0206f"></a>

## the raku study group


<a id="orge63bcc6"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org883dd9e"></a>

## an answer to what's Raku for:


<a id="org8c66f24"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge02e983"></a>

## postponed from previous meetings


<a id="org49044a3"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="org7dfe4ee"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="orga882f7e"></a>

## recent topics


<a id="org351726e"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="orgd2cf6bb"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>

8.  <https://en.wikipedia.org/wiki/M%C3%B6bius_function>


<a id="org4de61b2"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgbde2ee4"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="orgea0de77"></a>

### simple but puzzling behavior: converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orga9e4e5b"></a>

### undocumented customization feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org4cce712"></a>

### TODO subclassing Str class (maybe later)

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orgadc0c93"></a>

## untopic


<a id="org11f42cb"></a>

### Alan Kay at 2020 "goto;"

1.  <https://www.youtube.com/watch?v=D43PlUr1x_E?vq=hd1080>


<a id="org173ba5e"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org4e13643"></a>

## announcements


<a id="orga5eee2d"></a>

### April 24th: next raku study group meeting


<a id="orgf2695cc"></a>

### June 21-25: tprc: perl/raku conference
