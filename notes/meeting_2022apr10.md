- [meeting notes April 10, 2022](#org5bb29a9)
  - [the raku study group](#org894e076)
    - [usual links](#org8f4a6ff)
  - [an answer to what's Raku for:](#org46a8e64)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org43acdfb)
  - [postponed from previous meetings](#orge4e7d75)
    - [rob asks about "DEPRECATED"](#orgf1d2b03)
    - [bill's unix.stackexchange post](#org4307c46)
  - [recent topics](#orgba796e0)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org737071c)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org4152b92)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgf39aea3)
    - [subclassing Str class](#orgfb5775f)
  - [announcements](#org6db051b)
    - [April 24th: next raku study group meeting](#org0067c58)
    - [June 21-25: tprc: perl/raku conference](#org4f2b3ca)


<a id="org5bb29a9"></a>

# meeting notes April 10, 2022


<a id="org894e076"></a>

## the raku study group


<a id="org8f4a6ff"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="org46a8e64"></a>

## an answer to what's Raku for:


<a id="org43acdfb"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge4e7d75"></a>

## postponed from previous meetings


<a id="orgf1d2b03"></a>

### rob asks about "DEPRECATED"


<a id="org4307c46"></a>

### bill's unix.stackexchange post


<a id="orgba796e0"></a>

## recent topics


<a id="org737071c"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org4152b92"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgf39aea3"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgfb5775f"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org6db051b"></a>

## announcements


<a id="org0067c58"></a>

### April 24th: next raku study group meeting


<a id="org4f2b3ca"></a>

### June 21-25: tprc: perl/raku conference
