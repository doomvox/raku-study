- [meeting notes April 10, 2022](#org9769631)
  - [the raku study group](#org0c73fe7)
    - [usual links](#orgca9a834)
  - [an answer to what's Raku for:](#org95f6337)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org95d2092)
  - [postponed from previous meetings](#org0766689)
    - [bill's unix.stackexchange post](#org0c3ec59)
    - [rob asks about "DEPRECATED"](#org9bcff91)
  - [recent topics](#org6183a7b)
    - [worthington prime number calculations](#org13252f8)
    - [weekly challenges](#orgf5a27be)
    - [gui toolkits](#org7b657e6)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org38cc389)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org6dc1615)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org4adfc6d)
    - [subclassing Str class (maybe later)](#orgd652049)
  - [untopic](#orge9d06d9)
    - [alan kay at 2020 "goto;"](#org8f84efe)
    - [international call signs](#orgeb1406b)
  - [announcements](#orgb4f4b09)
    - [April 24th: next raku study group meeting](#org0580c40)
    - [June 21-25: tprc: perl/raku conference](#orgeaa7bd5)


<a id="org9769631"></a>

# meeting notes April 10, 2022


<a id="org0c73fe7"></a>

## the raku study group


<a id="orgca9a834"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org95f6337"></a>

## an answer to what's Raku for:


<a id="org95d2092"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="org0766689"></a>

## postponed from previous meetings


<a id="org0c3ec59"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="org9bcff91"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="org6183a7b"></a>

## recent topics


<a id="org13252f8"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="orgf5a27be"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>

8.  <https://en.wikipedia.org/wiki/M%C3%B6bius_function>


<a id="org7b657e6"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org38cc389"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org6dc1615"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org4adfc6d"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgd652049"></a>

### TODO subclassing Str class (maybe later)

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orge9d06d9"></a>

## untopic


<a id="org8f84efe"></a>

### alan kay at 2020 "goto;"


<a id="orgeb1406b"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="orgb4f4b09"></a>

## announcements


<a id="org0580c40"></a>

### April 24th: next raku study group meeting


<a id="orgeaa7bd5"></a>

### June 21-25: tprc: perl/raku conference
