- [meeting notes April 10, 2022](#org54db6b7)
  - [the raku study group](#orge0543d0)
    - [usual links](#orgea18d83)
  - [an answer to what's Raku for:](#orge320e45)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org7567fb0)
  - [postponed from previous meetings](#orgfdf972d)
    - [bill's unix.stackexchange post](#orgc40eaa5)
    - [rob asks about "DEPRECATED"](#orga769785)
  - [recent topics](#org8506f24)
    - [worthington prime number calculations](#orgd45d928)
    - [weekly challenges](#org734b3c1)
    - [gui toolkits](#orgad6ec1a)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgf163747)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org82d7f6d)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgb08b809)
    - [subclassing Str class](#org6732056)
  - [untopic](#org2fcfc9b)
    - [alan kay at 2020 "goto;"](#org23f84b2)
    - [international call signs](#orgd17d42f)
  - [announcements](#org61c2250)
    - [April 24th: next raku study group meeting](#org122db98)
    - [June 21-25: tprc: perl/raku conference](#org74b9f66)


<a id="org54db6b7"></a>

# meeting notes April 10, 2022


<a id="orge0543d0"></a>

## the raku study group


<a id="orgea18d83"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="orge320e45"></a>

## an answer to what's Raku for:


<a id="org7567fb0"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgfdf972d"></a>

## postponed from previous meetings


<a id="orgc40eaa5"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="orga769785"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="org8506f24"></a>

## recent topics


<a id="orgd45d928"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org734b3c1"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>

8.  <https://en.wikipedia.org/wiki/M%C3%B6bius_function>


<a id="orgad6ec1a"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgf163747"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org82d7f6d"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgb08b809"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org6732056"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org2fcfc9b"></a>

## untopic


<a id="org23f84b2"></a>

### alan kay at 2020 "goto;"


<a id="orgd17d42f"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org61c2250"></a>

## announcements


<a id="org122db98"></a>

### April 24th: next raku study group meeting


<a id="org74b9f66"></a>

### June 21-25: tprc: perl/raku conference
