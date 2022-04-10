- [meeting notes April 10, 2022](#org5429156)
  - [the raku study group](#org9748605)
    - [usual links](#org6996d58)
  - [an answer to what's Raku for:](#org7c5520d)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#orgb818276)
  - [postponed from previous meetings](#orgd9069e0)
    - [bill's unix.stackexchange post](#orgf300b54)
    - [rob asks about "DEPRECATED"](#org0724ab9)
  - [recent topics](#orga361f75)
    - [worthington prime number calculations](#org9fd6b7d)
    - [weekly challenges](#org59483f9)
    - [gui toolkits](#orgbe8fe55)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#orgcfa218b)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org4bf79d8)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#org415f38b)
    - [subclassing Str class](#org383f1f4)
  - [untopic](#orgc03aa63)
    - [alan kay at 2020 "goto;"](#org61ef34d)
    - [international call signs](#org91ea73a)
  - [announcements](#org58f9ddb)
    - [April 24th: next raku study group meeting](#org3eae317)
    - [June 21-25: tprc: perl/raku conference](#orgcff1a9c)


<a id="org5429156"></a>

# meeting notes April 10, 2022


<a id="org9748605"></a>

## the raku study group


<a id="org6996d58"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org7c5520d"></a>

## an answer to what's Raku for:


<a id="orgb818276"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgd9069e0"></a>

## postponed from previous meetings


<a id="orgf300b54"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="org0724ab9"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="orga361f75"></a>

## recent topics


<a id="org9fd6b7d"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org59483f9"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>


<a id="orgbe8fe55"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk

4.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>


<a id="orgcfa218b"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org4bf79d8"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org415f38b"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org383f1f4"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="orgc03aa63"></a>

## untopic


<a id="org61ef34d"></a>

### alan kay at 2020 "goto;"


<a id="org91ea73a"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org58f9ddb"></a>

## announcements


<a id="org3eae317"></a>

### April 24th: next raku study group meeting


<a id="orgcff1a9c"></a>

### June 21-25: tprc: perl/raku conference
