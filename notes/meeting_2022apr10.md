- [meeting notes April 10, 2022](#orgeae5d83)
  - [the raku study group](#orgf0db888)
    - [usual links](#org1a5eb8d)
  - [an answer to what's Raku for:](#org8750148)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org72deb16)
  - [postponed from previous meetings](#orgf765cd5)
    - [bill's unix.stackexchange post](#orgc3a6487)
    - [rob asks about "DEPRECATED"](#orga88d4b8)
  - [recent topics](#org39399b7)
    - [worthington prime number calculations](#org4948e9b)
    - [weekly challenges](#org19ee678)
    - [gui toolkits](#org22172de)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org0bbeb39)
    - [simple but puzzling behavior: converting scientific notation to Rat](#orgc69236f)
    - [undocumented customization feature: get Rats to upgrade to FatRats](#org9e74f91)
    - [subclassing Str class (maybe later)](#org85462b7)
  - [untopic](#org87458cf)
    - [Alan Kay at 2020 "goto;"](#orge8d1d99)
    - [international call signs](#org2f97386)
  - [announcements](#org8e10a97)
    - [April 24th: next raku study group meeting](#orga869d00)
    - [June 21-25: tprc: perl/raku conference](#orgd6582eb)


<a id="orgeae5d83"></a>

# meeting notes April 10, 2022


<a id="orgf0db888"></a>

## the raku study group


<a id="org1a5eb8d"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org8750148"></a>

## an answer to what's Raku for:


<a id="org72deb16"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgf765cd5"></a>

## postponed from previous meetings


<a id="orgc3a6487"></a>

### bill's unix.stackexchange post

1.  <https://unix.stackexchange.com/questions/696495/find-duplicate-1st-field-and-concat-its-values-in-single-line/698487#698487>

    1.  given yaml file with multiple entries for some keys, convert to unique keys with values in lists
    
    2.  raku -e 'my %h; for lines() {%h.=append: .split(":").map(\*.trim).hash}; .say for %h;'


<a id="orga88d4b8"></a>

### rob asks about "DEPRECATED"

1.  <https://github.com/rakudo/rakudo/blob/master/docs/articles/2016-02%20Proposed%20Perl%206%20Versioning%20And%20Compatibility%20Guidelines.md>


<a id="org39399b7"></a>

## recent topics


<a id="org4948e9b"></a>

### worthington prime number calculations

1.  <https://stackoverflow.com/questions/58841508/questions-on-the-prime-number-calculating-code-in-raku>


<a id="org19ee678"></a>

### weekly challenges

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-158/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-159/#TASK1>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/0rir/raku>

4.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-159/0rir/raku>

5.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-158/bruce-gray>

6.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-159/challenge-159/bruce-gray/raku>

7.  <https://en.wikipedia.org/wiki/Farey_sequence>

8.  <https://en.wikipedia.org/wiki/M%C3%B6bius_function>


<a id="org22172de"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org0bbeb39"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="orgc69236f"></a>

### simple but puzzling behavior: converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="org9e74f91"></a>

### undocumented customization feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="org85462b7"></a>

### TODO subclassing Str class (maybe later)

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org87458cf"></a>

## untopic


<a id="orge8d1d99"></a>

### Alan Kay at 2020 "goto;"

1.  <https://www.youtube.com/watch?v=D43PlUr1x_E?vq=hd1080>


<a id="org2f97386"></a>

### international call signs

1.  <https://en.wikipedia.org/wiki/NATO_phonetic_alphabet>

    1.  Alfa, Bravo, Charlie, Delta, Echo, Foxtrot, Golf, Hotel,
    
        India, Juliett, Kilo, Lima, Mike, November, Oscar, Papa, Quebec, Romeo, Sierra, Tango,
        
        Uniform, Victor, Whiskey, X-ray, Yankee, Zulu

2.  <https://www.reddit.com/r/disney/comments/urhqe/til_that_disney_uses_their_own_phonetic_alphabet/>


<a id="org8e10a97"></a>

## announcements


<a id="orga869d00"></a>

### April 24th: next raku study group meeting


<a id="orgd6582eb"></a>

### June 21-25: tprc: perl/raku conference
